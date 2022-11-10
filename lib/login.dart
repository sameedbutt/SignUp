import 'package:flutter/material.dart';
import 'package:signup/home.dart';
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/login.png'),
                  fit: BoxFit.cover
                )
            ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: 30,top: 100),
                child: Text('Welcome to Auto Doctor''s',
                  style: TextStyle(
                    fontSize: 33,
                    color: Colors.white
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.3,
                left: 35,
                right: 35
                ),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade300,
                        filled: true,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                    ),
                    SizedBox(height: 30,),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade300,
                          filled: true,
                          hintText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                    SizedBox(height: 40,),
                    Container(
                      color: Colors.black,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          OutlinedButton(onPressed: (){
                            Navigator.pushNamed(context, '/home');
                          },
                              child: Text('Login',
                              style: TextStyle(
                                color: Colors.white,
                              ),),)
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Not registered? - SignUp? ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black
                        ),
                        ),
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.black,
                          child: IconButton(onPressed: (){
                            Navigator.pushNamed(context, '/signup');
                          },
                              color: Colors.white,
                              icon: Icon(Icons.arrow_back_sharp)
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: (){
                          Navigator.pushNamed(context, '/signup');
                        },
                            child: Text('Sign Up',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 18,
                                color: Colors.black
                              ),)
                        ),
                        TextButton(onPressed: (){},
                            child: Text('Forgot Password',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 18,
                                  color: Colors.black
                              ),)
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
        );
  }
}
