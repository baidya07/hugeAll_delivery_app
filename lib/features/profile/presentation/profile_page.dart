import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hugeall_delivery_app/core/presentation/widget/circular_avatar.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';

import '../../../core/presentation/resources/size_constants.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String pathPDF = "";

  @override
  void initState() {

    super.initState();
    fromAsset('./assets/pdf/', 'hugeall_about_us.pdf').then((f) {
      setState(() {
        pathPDF = f.path;
      });
    });
  }


    Future<File> fromAsset(String asset, String filename) async {
      // To open from assets, you can copy them to the app storage folder, and the access them "locally"
      Completer<File> completer = Completer();
      try {
        var dir = await getApplicationDocumentsDirectory();
        File file = File("${dir.path}/$filename");
        var data = await rootBundle.load(asset);
        var bytes = data.buffer.asUint8List();
        await file.writeAsBytes(bytes, flush: true);
        completer.complete(file);
      } catch (e) {
        throw Exception('Error parsing asset file!');
      }
      return completer.future;
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
        child: Column(
          children: [
            const SizedBox(height: 30,),
             const SizedBox(
               height: 200,
               child: CircularAvatar(
                  imageUrl: 'https://i.pinimg.com/originals/d0/ba/2f/d0ba2f683909ccc09602a2fa9dfca0fb.jpg',
                borderRadius: 100,
            ),
             ),
            SBC.xxLH,
            _ProfileTiles(title: 'About US', onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      PdfViewPage(path: pathPDF),
                ),
              );
            },),
            SBC.mH,
            _ProfileTiles(title: 'Privacy & Policy', onTap: (){},),
            SBC.mH,
            _ProfileTiles(title: 'Refund & Return', onTap: (){},),
            SBC.mH,
            _ProfileTiles(title: 'Terms & Conditions', onTap: (){},),
            SBC.mH,
            _ProfileTiles(title: 'Agreement', onTap: (){},),
          ],
        ),
      ),
    );
  }
}

class _ProfileTiles extends StatelessWidget {
  final Function() onTap;
  final String title;

  const _ProfileTiles({
    required this.onTap,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: SC.sH),
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.1
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SBC.mW,
                      const Icon(Icons.account_circle_sharp),
                      SBC.mW,
                      Text(title, style: Theme
                          .of(context)
                          .textTheme
                          .bodyText2,),
                    ],
                  ),
                  const Icon(Icons.arrow_forward_ios),
                ],
              ),
              SBC.xLH,
            ],
          ),
        ),
      ),
    );
  }
}

class PdfViewPage extends StatefulWidget {
  final String? path;
  const PdfViewPage({Key? key, this.path}) : super(key: key);

  @override
  State<PdfViewPage> createState() => _PdfViewPageState();
}

class _PdfViewPageState extends State<PdfViewPage> with WidgetsBindingObserver{
  final Completer<PDFViewController> _controller =
  Completer<PDFViewController>();
  int? pages = 0;
  int? currentPage = 0;
  bool isReady = false;
  String errorMessage = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF View'),
      ),
      body: Stack(
        alignment:AlignmentDirectional.center,
        children: [
          PDFView(
            filePath: widget.path,
            enableSwipe: true,
            swipeHorizontal: false,
            autoSpacing: false,
            pageFling: false,
            onRender: (_pages) {
              setState(() {
                pages = _pages;
                isReady = true;
              });
            },
            onError: (error) {
              print(error.toString());
            },
            onPageError: (page, error) {
              print('$page: ${error.toString()}');
            },
            onViewCreated: (PDFViewController pdfViewController) {
              _controller.complete(pdfViewController);
            },
            onPageChanged: (int? page, int? total) {
              print('page change: $page/$total');
            },
          ),
        ],

      ),
    );
  }
}
