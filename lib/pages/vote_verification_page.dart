import 'package:flutter/material.dart';

class VoteVerificationPage extends StatelessWidget {
  const VoteVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Vote Verification'),
        backgroundColor: Color.fromARGB(255, 6, 100, 9),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100,),
              Image(
                height: 250,
                width: 250,
                fit: BoxFit.cover,
                image: AssetImage(
                  
                  'lib/assets/vstar.jpg'),
              ),
              Text('Your vote has been verified',style: TextStyle(fontSize: 20,color: Colors.green,fontWeight: FontWeight.w700),),
              SizedBox(height: 60,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 80,vertical: 20),
                height: 60,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromARGB(255, 6, 100, 9),
                ),
                child: Center(child: Text('Close',style: TextStyle(color: Colors.white,fontSize: 30),)),
              )
          ],
        ),
      ),
    );
  }
}