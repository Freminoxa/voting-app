import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 2, 35, 63),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Your vote your choice'),
            Icon(Icons.verified_user_outlined)
          ],
        ),
      ),
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        child: Column(children: [
         SizedBox(height: 40,),
         Container(
          margin: EdgeInsets.symmetric(horizontal: 35),
          height: 210,
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: Colors.white70
          ),
         child: Column(children: [
          SizedBox(height: 10,),
          Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('lib/assets/ballot.png'))
                  ),
                )  ,
          SizedBox(height: 15,),
          Text('Total vote(President)',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w700),),
          SizedBox(height: 15,),
          Text('523',style: TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.w700),),
         ]),
         ),
         SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('   Results',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w700),),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 140,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white70
      
                ),
                child: Column(children: [
                SizedBox(height: 10,),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('lib/assets/apartment2.jpeg'))
                  ),
                )  ,
                SizedBox(height: 5,),
                Text('Governer',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w700),),
                SizedBox(height: 5,),
                Text('35',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w700),)
                ]),
              ),
              Container(
                height: 140,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white70
      
                ),
                child: Column(children: [
                SizedBox(height: 10,),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('lib/assets/apartment5.jpeg'))
                  ),
                )  ,
                SizedBox(height: 5,),
                Text('Senator',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w700),),
                SizedBox(height: 5,),
                Text('71',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w700),)
                ]),
              )
            ],
          ),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Container(
                height: 140,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white70
      
                ),
                child: Column(children: [
                SizedBox(height: 10,),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('lib/assets/apartment6.jpeg'))
                  ),
                )  ,
                SizedBox(height: 5,),
                Text('Women Rep',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w700),),
                SizedBox(height: 5,),
                Text('39',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w700),)
                ]),
              ),
              Container(
                height: 140,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white70
      
                ),
                child: Column(children: [
                SizedBox(height: 10,),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('lib/assets/apartment7.jpeg'))
                  ),
                )  ,
                SizedBox(height: 5,),
                Text('MCA',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w700),),
                SizedBox(height: 5,),
                Text('98',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w700),)
                ]),
              )
          ],),
          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 50,
            width: double.maxFinite,
            decoration: BoxDecoration(borderRadius: 
            BorderRadius.all(Radius.circular(60)),
            color: Color.fromARGB(255, 2, 35, 63)
            ),
            child: Center(child: 
            Text('INDIVIDUAL VOTES',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700),),
            ),
          )
        ],),
      )
    );
  }
}