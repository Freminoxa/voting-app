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
        backgroundColor: Colors.blue,
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
              Text('Your vote has been verified',style: TextStyle(fontSize: 20,color: Colors.green,fontWeight: FontWeight.w700),)
          ],
        ),
      ),
    );
  }
}