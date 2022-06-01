

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hugeall_delivery_app/core/presentation/resources/colors.dart';
import 'package:hugeall_delivery_app/core/presentation/resources/ui_assets.dart';
import 'package:hugeall_delivery_app/core/presentation/widget/forms/buttons.dart';
import 'package:timelines/timelines.dart';
// import 'package:awesome_calendar/awesome_calendar.dart';

import '../../../core/presentation/resources/size_constants.dart';
import '../../../core/presentation/widget/forms/textfields.dart';


class ParcelPage extends StatefulWidget {
  const ParcelPage({Key? key}) : super(key: key);



  @override
  State<ParcelPage> createState() => _ParcelPageState();
}

class _ParcelPageState extends State<ParcelPage> {


  DateTime? singleSelect;
  DateTime embeddedCalendar = DateTime.now();
  List<DateTime>? multiSelect;
  List<DateTime>? rangeSelect;
  List<DateTime>? multiOrRangeSelect;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Pickup Location',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        leading: InkWell(
            onTap: (){
              context.router.pop();
            },
            child: const Icon(Icons.arrow_back_ios, color: Colors.black,)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: SC.lW, vertical: SC.lH),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _DeliveryWidget(),
              SBC.xxLH,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const _PickupTime(),
                  Container(
                    child: Text('Below is Calendar'),
                  )
                ],
              ),
              SBC.xxLH,
              const _DeliveryInfo(),
              SBC.xxLH,
              PrimaryButton(onPressed: (){}, title: 'Confirm'),

            ],
          ),
        ),
      )
    );
  }
}

class _PickupTime extends StatelessWidget {
  const _PickupTime({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Pickup Date', style: Theme.of(context).textTheme.bodyText1,),
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
        FixedTimeline(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: DotIndicator(
                color: primaryColor,
                position: 0,
              ),
            ),
            Container(
                child: const _TransferWidget(iconImage: 'delivered_icon.svg', title: 'Pickup',address: 'Jana Milap Galli, Vinayak Tole, Chabahail, Kathmandu',)),
            SBC.xxLH,
            const _TransferWidget(iconImage: 'drop_icon.svg', title: 'Drop Point',address: 'Newroad, Opposite NIC bank, Sundhara',),
          ],
        )

      ],
    );
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

// class CustomCalendar extends StatefulWidget {
//   const CustomCalendar({Key? key}) : super(key: key);
//
//   @override
//   State<CustomCalendar> createState() => _CustomCalendarState();
// }

// class _CustomCalendarState extends State<CustomCalendar> {
//   DateTime initialDate = DateTime.now();
//
//   DateTime? singleSelect;
//   DateTime embeddedCalendar = DateTime.now();
//   List<DateTime>? multiSelect;
//   List<DateTime>? rangeSelect;
//   List<DateTime>? multiOrRangeSelect;
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Text(singleSelect?.toString() ?? ''),
//           ElevatedButton(
//             onPressed: () => singleSelectPicker(),
//             child: const Text('Single select picker'),
//           ),
//           const Padding(padding: EdgeInsets.only(top: 20)),
//           Text(multiSelect?.toString() ?? ''),
//           ElevatedButton(
//             onPressed: () => multiSelectPicker(),
//             child: const Text('Multi select picker'),
//           ),
//           const Padding(padding: EdgeInsets.only(top: 20)),
//           Text(rangeSelect?.toString() ?? ''),
//           ElevatedButton(
//             onPressed: () => rangeSelectPicker(),
//             child: const Text('Range select picker'),
//           ),
//           const Padding(padding: EdgeInsets.only(top: 20)),
//           Text(multiOrRangeSelect?.toString() ?? ''),
//           ElevatedButton(
//             onPressed: () => multiOrRangeSelectPicker(),
//             child: const Text('Range or Multi select picker'),
//           ),
//           const Padding(padding: EdgeInsets.only(top: 20)),
//           ElevatedButton(
//             onPressed: () => pickerWithTitle(),
//             child: const Text('Picker with title widget'),
//           ),
//           const Padding(padding: EdgeInsets.only(top: 20)),
//           ElevatedButton(
//             onPressed: () => pickerWithCustomDateRange(),
//             child: const Text('Picker with custom date range'),
//           ),
//           const Padding(padding: EdgeInsets.only(top: 20)),
//           const Text('Embedded calendar (single select):'),
//           Text(embeddedCalendar.toString()),
//           AwesomeCalendar(
//             selectedSingleDate: embeddedCalendar,
//             onTap: (DateTime date) {
//               setState(() {
//                 embeddedCalendar = date;
//               });
//             },
//           ),
//           const Padding(padding: EdgeInsets.only(top: 20)),
//           const Text('Custom colors Embedded calendar (single select):'),
//           AwesomeCalendar(
//             selectedSingleDate: DateTime.now(),
//             dayTileBuilder: CustomDayTileBuilder(),
//           ),
//         ],
//       ),
//     );
//   }
//
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
//
// Future<void> multiSelectPicker() async {
//   final List<DateTime>? picked = await showDialog<List<DateTime>>(
//     context: context,
//     builder: (BuildContext context) {
//       return const AwesomeCalendarDialog(
//         selectionMode: SelectionMode.multi,
//       );
//     },
//   );
//   if (picked != null) {
//     setState(() {
//       multiSelect = picked;
//     });
//   }
// }
//
// Future<void> rangeSelectPicker() async {
//   final List<DateTime>? picked = await showDialog<List<DateTime>>(
//     context: context,
//     builder: (BuildContext context) {
//       return const AwesomeCalendarDialog(
//         selectionMode: SelectionMode.range,
//       );
//     },
//   );
//   if (picked != null) {
//     setState(() {
//       rangeSelect = picked;
//     });
//   }
// }
//
// Future<void> multiOrRangeSelectPicker() async {
//   final List<DateTime>? picked = await showDialog<List<DateTime>>(
//     context: context,
//     builder: (BuildContext context) {
//       return const AwesomeCalendarDialog(
//         selectionMode: SelectionMode.multi,
//         canToggleRangeSelection: true,
//       );
//     },
//   );
//   if (picked != null) {
//     setState(() {
//       multiOrRangeSelect = picked;
//     });
//   }
// }
//
// Future<void> pickerWithTitle() async {
//   await showDialog<DateTime>(
//     context: context,
//     builder: (BuildContext context) {
//       return const AwesomeCalendarDialog(
//         selectionMode: SelectionMode.single,
//         title: Padding(
//           padding: EdgeInsets.all(16),
//           child: Text('This is a custom title'),
//         ),
//       );
//     },
//   );
// }
//
// Future<void> pickerWithCustomDateRange() async {
//   await showDialog<DateTime>(
//     context: context,
//     builder: (BuildContext context) {
//       return AwesomeCalendarDialog(
//         selectionMode: SelectionMode.single,
//         startDate: DateTime(2022),
//         endDate: DateTime(2022, 12),
//       );
//     },
//   );
// }
// }

// class CustomDayTileBuilder extends DayTileBuilder {
//   CustomDayTileBuilder();
//
//   @override
//   Widget build(BuildContext context, DateTime date,
//       void Function(DateTime datetime)? onTap) {
//     return DefaultDayTile(
//       date: date,
//       onTap: onTap,
//       selectedDayColor: Colors.cyan,
//       currentDayBorderColor: Colors.grey,
//     );
//   }
//   }



