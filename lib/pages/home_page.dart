import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  static final String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLogin = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/im_party.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors:[
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.5),
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.1),
              ]
            )
          ),
          child: Stack(
            children: [

              Container(
                child: Column(
                  children: [
                    SizedBox(height: 100,),
                    FadeInDown( duration: const Duration(milliseconds: 1000),
                      child: Text('Find the best parties near you', style: TextStyle(color: Colors.yellow, fontSize: 40,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 30,),
                    FadeInDown( duration: const Duration(milliseconds: 1200),
                      child: Text('Let us find you a party from your interest', style: TextStyle(color: Colors.greenAccent, fontSize: 25,fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _isLogin ?
                  FadeInDown(duration: const Duration(milliseconds: 1400),
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.deepOrange,
                      ),
                      child: Center(
                        child: Text('Start',style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),)
                      :
                  FadeInDown(duration: const Duration(milliseconds: 1400),
                      child: Container(
                        height: 55,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Expanded(child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.red,
                              ),
                              child: Center(
                                child: Text('Google+',style: TextStyle(fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ),),
                            SizedBox(width: 20,),
                            Expanded(child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue,
                              ),
                              child: Center(
                                child: Text('Facebook',style: TextStyle(fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ),),
                          ],
                        ),
                      ),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
