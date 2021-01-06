import 'package:flutter/material.dart';
//import 'package:serial_port_flutter/serial_port_flutter.dart';
import 'dart:async';
import './CustomWidget.dart';

class initPage extends StatefulWidget 
{
  initPage({Key key}) : super(key: key);

  @override
  _initPageState createState() => _initPageState();
}

class _initPageState extends State<initPage>
 {
  //TODO :
  /*
    -Ping Serial comm 
    -Establish Comms with firebase
    -Establish Comms with Base Station
    -Throw error when any of the above task fails
  */ 
  @override
  void initState() 
  {
    super.initState();
    //findDevices();

  }

  /*Future<List<Device>> findDevices() async
  {
    return await FlutterSerialPort.listDevices();
  }*/

  @override
  Widget build(BuildContext context)
  {
    return new Scaffold
    (
      body: new Center
      (
        child: new Column
        (
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
          [
            //? ADD BODY WIDGETS HERE 
            CustomWidgets.button(() //Find Serial device here
             {
               //TODO: FIND SERIAL DEVICE HERE
               print("Scanning for Serial device");
               //print(findDevices()); 

             }
             , "Scan For Serial Device" , color: Colors.blue , textColor: Colors.grey[300] , fontSize: 30 , paddingValue: 10),
             Padding(padding: new EdgeInsets.all(10),), 
             CustomWidgets.button(()=> //Find Serial device here
             {
               //TODO: FIND SERIAL DEVICE HERE
               print("Reconnect WEBRTC")

             }
             , "WEBRTC PlaceHolder" , color: Colors.red , textColor: Colors.grey[300] , fontSize: 30 , paddingValue: 10),
             
          ],
        ),
      ),
    );
  }
}