import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

void main() =>  runApp(MaterialApp(home:MyApp()));

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  GlobalKey qrKey = GlobalKey();
  var qrText = "";
  QRViewController controller;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(body: Column(children: <Widget>[
      Expanded(
        flex: 5,
        child: QRView(key: qrKey,
            overlay: QrScannerOverlayShape(
              borderRadius: 10,
              borderColor: Colors.blue,
              borderLength: 30,
              borderWidth: 10,
              cutOutSize: 300
            ),
            onQRViewCreated: _onQRViewCreate),
      ),
      Expanded(
          flex: 1,
          child: Center(
              child: Text('Scan Result : $qrText'),
          )
      )
    ],),);
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  void _onQRViewCreate(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scandata) {
      setState(() {
        qrText = scandata as String;
      });
    });
  }
}