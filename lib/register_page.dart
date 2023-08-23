import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:DecorationImage(
          image: AssetImage("assets/victor.jpg",) ,
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body:Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left:35,top:130),
              child: Text("Create\nAccount",style: TextStyle(
                  fontSize: 33,color: Colors.white
              ),) ,
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,
                    left: 35,right: 35
                ),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)
                          )
                      ),
                    ),
                    SizedBox(height: 30,),
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Email',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)
                          )
                      ),
                    ),
                    SizedBox(height: 30,),
                    TextField(
                      obscureText: true ,
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)
                          )
                      ),
                    ),
                    SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sign Up',
                          style: TextStyle(
                            // color:  Color(0xff4c505b),
                              color: Colors.white,
                              fontSize: 27,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: (){},
                            icon:Icon(Icons.arrow_forward) ,
                          ),
                        ),


                      ],

                    ),
                    SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: (){
                              Navigator.pushNamed(context, 'login');
                            },
                            child: Text('Sign In',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 18,
                                  //color: Color(0xff4c505b),
                                  decorationColor: Colors.white,
                                  color: Colors.white
                              ),
                            )
                        ),


                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ) ,

      ),
    );
  }
}
