import 'package:flutter/material.dart';

import '../../../core/presentation/resources/size_constants.dart';

class ParcelPage extends StatelessWidget {
  const ParcelPage({Key? key}) : super(key: key);

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
        leading: const Icon(Icons.arrow_back_ios, color: Colors.black,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: SC.lW, vertical: SC.lH),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: SC.mH, horizontal: SC.mW),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.1,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.add),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Pickup', style: Theme.of(context).textTheme.caption!.copyWith(height: 1.5),),
                        Text('Jana Milap Galli, Vinayak Tole, Chabahail, Kathmandu', style: Theme.of(context).textTheme.bodyText2!.copyWith(height: 1.5, fontSize: 10),),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
