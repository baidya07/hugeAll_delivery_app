// import 'dart:io';
//
// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';
//
// class PDFViewPage extends StatefulWidget {
//   const PDFViewPage({Key? key}) : super(key: key);
//
//   @override
//   State<PDFViewPage> createState() => _PDFViewPageState();
// }
//
// class _PDFViewPageState extends State<PDFViewPage> {
//   String assetPDFPath = '';
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     getFileFromAsset('assets/pdf/policy.pdf').then((f) {
//       setState(() {
//         assetPDFPath = f.path;
//         print(assetPDFPath);
//       });
//     });
//   }
//
//   Future<File> getFileFromAsset(String asset) async {
//     try {
//       var data = await rootBundle.load(asset);
//       var bytes = data.buffer.asUint8List();
//       var dir = await getApplicationDocumentsDirectory();
//       File file = File("${dir.path}/policy.pdf");
//       File assetFile = await file.writeAsBytes(bytes);
//       return assetFile;
//     } catch (e) {
//       throw Exception('Error loading ');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: Builder(
//         builder: ((context) {
//           return Column(
//             children: [
//               TextButton(
//                   onPressed: () {
//                     if (assetPDFPath.isNotEmpty) {
//                       context.router.push(PDFViewRoute(path: assetPDFPath));
//                     }
//                   },
//                   child: Text('Open Pdf')),
//             ],
//           );
//         }),
//       )),
//     );
//   }
// }
//
// class PDFScreen extends StatefulWidget {
//   final String? path;
//   const PDFScreen({Key? key, this.path}) : super(key: key);
//
//   @override
//   State<PDFScreen> createState() => _PDFScreenState();
// }
//
// class _PDFScreenState extends State<PDFScreen> {
//   int _totalPage = 0;
//   int _currentPage = 0;
//   bool pdfRady = false;
//   PDFViewController? _PdfViewController;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Document'),
//       ),
//       body: Stack(
//         children: [
//           PDFView(
//               filePath: widget.path,
//               autoSpacing: true,
//               enableSwipe: true,
//               pageSnap: true,
//               swipeHorizontal: true,
//               onViewCreated: (PDFViewController vc) {
//                 _PdfViewController = vc;
//               },
//               onPageChanged: (int? page, int? total) {
//                 setState(() {});
//               },
//               onPageError: (page, e) {},
//               onError: (e) {
//                 print(e);
//               },
//               onRender: (_pages) {
//                 setState(() {
//                   _totalPage = _pages!;
//                   pdfRady = true;
//                 });
//               }),
//           !pdfRady
//               ? const Center(
//                   child: CircularProgressIndicator(),
//                 )
//               : Offstage(),
//         ],
//       ),
//       floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           _currentPage < _totalPage
//               ? FloatingActionButton.extended(
//                   backgroundColor: Colors.red,
//                   label: Text(" Go to ${_currentPage + 1}"),
//                   onPressed: () {
//                     _currentPage += 1;
//                     _PdfViewController!.setPage(_currentPage);
//                   },
//                 )
//               : Offstage(),
//         ],
//       ),
//     );
//   }
// }
