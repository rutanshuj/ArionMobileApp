import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';

class Scan extends StatefulWidget {
  @override
  ScanState createState() => ScanState();
}

class ScanState extends State<Scan> {

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  String result = "Hey There !";
  Future scanQR() async{
    try{
      String qrResult = await BarcodeScanner.scan();
      setState(() {
        result = qrResult;
      });
    }on PlatformException catch(e){
      if(e.code == BarcodeScanner.CameraAccessDenied){
        setState(() {
          result = "Camera permission was denied";
        });
      }else{
        setState(() {
          result = "Unknown Error $e";
        });
      }
    }on FormatException{
      setState(() {
        result = "You pressed the back button before scanning anything";
      });
    }catch(ex){
      setState(() {
        result = "Unknown Error $ex";
      });
    }
  }
}
