import 'package:flutter/material.dart';

import 'package:yz/mainscreen.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Anasayfa()));
    });
  }

  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
        
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Center(
              child: Container(
                height: size.height*1,
                width: size.width*0.7,
                child: Image.asset("lib/assets/giphy2.gif",fit: BoxFit.fill,),
                ),
            ),
    
              Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Padding(
              padding:  EdgeInsets.only(top: size.height*0.22),
              child: Container(
              height: size.height*0.2,
              width: size.width*0.45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      image: AssetImage("lib/assets/splashscreen.png"),
                      fit: BoxFit.cover)),
          ),
            ),
            Padding(
              padding:  EdgeInsets.only(top : size.height*0.15),
              child: 
              Container(
                width: size.width*0.5,
                child: Text("Deprem Tahmin Uygulaması",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,),),
              
            ),
            Padding(
              padding:  EdgeInsets.only(top: size.width*0.4),
              child: 
              const Text("Bu uygulama bir tahmin uygulamasıdır. Verilen sonuçların kesinliği söz konusu değildir.",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
            ),
            
          ] 
        ),
              
          ],
        )
      ),
    );
  }
}