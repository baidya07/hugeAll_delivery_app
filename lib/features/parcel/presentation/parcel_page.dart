import 'package:auto_route/auto_route.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hugeall_delivery_app/core/presentation/resources/ui_assets.dart';
import 'package:hugeall_delivery_app/core/presentation/widget/forms/buttons.dart';
import 'package:timelines/timelines.dart';
import '../../../core/presentation/resources/size_constants.dart';
import '../../../core/presentation/widget/forms/textfields.dart';


class ParcelPage extends StatefulWidget {
  const ParcelPage({Key? key}) : super(key: key);

  @override
  State<ParcelPage> createState() => _ParcelPageState();
}

class _ParcelPageState extends State<ParcelPage> {
  // DateTime? singleSelect;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Pickup Location',
            style: Theme
                .of(context)
                .textTheme
                .bodyText1,
          ),
          leading: InkWell(
              onTap: () {
                context.router.pop();
              },
              child: const Icon(Icons.arrow_back_ios, color: Colors.black,)),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: SC.lW, vertical: SC.lH),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Timeline.tileBuilder(
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    theme: TimelineThemeData(
                      nodePosition: 0,
                      connectorTheme: const ConnectorThemeData(
                        thickness: 1.0,
                        color: Colors.black,
                      ),
                    ),
                    builder: TimelineTileBuilder.fromStyle(

                      connectorStyle: ConnectorStyle.dashedLine,
                      itemCount: 2,

                      contentsAlign: ContentsAlign.alternating,
                      contentsBuilder: (context, index) =>
                      const Padding(
                        padding: EdgeInsets.all(9.0),
                        child: _DeliveryWidget(),
                      ),
                    ),
                  ),
                ),
                SBC.xxLH,
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.1
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const _PickupTime(),
                      //todo: put calendar here
                      CalendarDatePicker2(
                        config: CalendarDatePicker2Config(),
                        initialValue: [],
                      ),
                    ],
                  ),
                ),
                SBC.lH,
                const _DeliveryInfo(),
                SBC.xxLH,
                PrimaryButton(onPressed: () {}, title: 'Confirm'),
              ],
            ),
          ),
        )
    );
  }
}

  // Future<void> singleSelectPicker() async {
  //   final DateTime? picked = await showDialog<DateTime>(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return const AwesomeCalendarDialog(
  //         selectionMode: SelectionMode.single,
  //       );
  //     },
  //   );
  //   if (picked != null) {
  //     setState(() {
  //       singleSelect = picked;
  //     });
  //   }
  // }

class _PickupTime extends StatelessWidget {
  const _PickupTime({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Pickup Date', style: Theme.of(context).textTheme.headline6,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.sH),
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.1,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: [
                Text('Time: ', style: Theme.of(context).textTheme.bodyText2,),
                const SecondaryDropDown(
                    items: <String>['12:00 - 1:00 am',
                      '1:00 - 2:00 am',
                      '2:00 - 3:00 am',
                      '3:00 - 4:00 am',
                      '4:00 - 5:00 am',]),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _DeliveryInfo extends StatelessWidget {
  const _DeliveryInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.1,
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Delivery Information', style: Theme.of(context).textTheme.bodyText1,),
          SBC.xxLH,
          Text('Receiver Name', style: Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.w500),),
          SBC.sH,
          TextField(textAlign: TextAlign.justify, style: Theme.of(context).textTheme.bodyText2,),
          SBC.lH,
          Text('Receiver Number', style: Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.w500),),
          SBC.sH,
          TextField(textAlign: TextAlign.justify, style: Theme.of(context).textTheme.bodyText2,),
          SBC.lH,
          Text('What are you sending?', style: Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.w500),),
          SBC.sH,
          TextField(textAlign: TextAlign.justify, style: Theme.of(context).textTheme.bodyText2,),
          SBC.xxLH,
        ],
      ),
    );
  }
}

class _DeliveryWidget extends StatelessWidget {
  const _DeliveryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _TransferWidget(iconImage: 'delivered_icon.svg', title: 'Pickup',address: 'Jana Milap Galli, Vinayak Tole, Chabahail, Kathmandu',),
        SBC.xxLH,
        const _TransferWidget(iconImage: 'drop_icon.svg', title: 'Drop Point',address: 'Newroad, Opposite NIC bank, Sundhara',)
    ]);
  }
}

class _TransferWidget extends StatelessWidget {
  final String iconImage;
  final String title;
  final String address;
  const _TransferWidget({
    required this.iconImage,
    required this.title,
    required this.address,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: SC.mH, horizontal: SC.mW),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.1,
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          SvgPicture.asset(UIAssets.getSvg(iconImage),),
          SBC.mW,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: Theme.of(context).textTheme.caption!.copyWith(height: 1.5),),
              SBC.mH,
              Text(address, style: Theme.of(context).textTheme.bodyText2!.copyWith(height: 1.5, fontSize: 10),),
            ],
          )
        ],
      ),
    );
  }
}





