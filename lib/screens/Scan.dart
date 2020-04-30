import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';
import 'package:arionapp/screens/add.dart';
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
        result = qrResult;
        return result;
    }on PlatformException catch(e){
      if(e.code == BarcodeScanner.CameraAccessDenied){

          result = "Camera permission was denied";
      }else{

          result = "Unknown Error $e";
          return result;

      }
    }on FormatException{

        result = "You pressed the back button before scanning anything";
        return result;

    }catch(ex){

        result = "Unknown Error $ex";
        return result;
    }

  }
}
