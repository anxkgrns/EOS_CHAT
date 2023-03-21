import 'package:flutter/material.dart';
import '../config/palette.dart';
class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({Key? key}) : super(key: key);
  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  // TODO : isSignupScreen 변수 선언
  bool isSignupScreen = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      // TODO : background color로 palette의 backgroundColor 설정,
      body: Stack(
        children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          // TODO : top, left, right 모두0으로 설정
          child: Container(
            height: 300,
            // TODO : height 300으로 설정
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/background.png'),
                // TODO : background.png 넣기
                fit: BoxFit.fill
              ),
            ),
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 90, 0, 0),
                // TODO : padding top 90, left 20
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // TODO : 왼쪽 정렬,
                  children: [
                    RichText(
                      text:  TextSpan(
                        text: 'Welcome ',
                        style: TextStyle(
                            // TODO : letter spacing 1.0, font size 25, color white
                            letterSpacing: 1.0, fontSize: 25, color: Colors.white
                        ),
                        children: [
                          TextSpan(
                            text : isSignupScreen ? 'to EOS chat':'back',
                            style: TextStyle(
                              letterSpacing: 1.0, fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white
                            )
                            // TODO : letter spacing 1.0, font size 25, color white, bold
                          )
                        ]
                      )
                    ),
                    const SizedBox(
                      // TODO : height 5.0으로 글 사이 간격 주기
                      height: 5.0,
                    ),
                    Text(
                      // TODO : spacing 1.0, color white
                      isSignupScreen? 'Signup to continue':'Login to continue',
                      style: TextStyle(letterSpacing: 1.0, color: Colors.white),
                    )
                  ],
                ),
            ),
          )
        ),

          AnimatedPositioned(
            // TODO : top 150
            top: 150,
            duration: Duration(microseconds: 5000),
            child: AnimatedContainer(
              height: isSignupScreen?330.0:290.0,
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width - 40,
              // TODO : margin 가로로 양쪽 20
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              decoration: BoxDecoration(
                // TODO : color white, border radius 15
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                    // TODO : color black, 투명도 0.3, blur radius 15, spread radius 5
                    blurRadius: 15,
                    spreadRadius: 5,
                    color: Colors.black.withOpacity(0.3),
                  )
                ]
              ),
              duration: Duration(microseconds: 5000),
              curve: Curves.easeIn,
              child: Column(
                children: [
                  Row(
                    // TODO : mainAxisAlignment.spaceAround
                    mainAxisAlignment: MainAxisAlignment.spaceAround, // spaceAround
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            isSignupScreen = false;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              // TODO : font size 16, bold
                              // TODO : palette의 textcolor1
                              'LOGIN',
                              style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: !isSignupScreen ? Palette.activeColor:Palette.textColor1),

                            ),
                            Container(
                              // TODO : margin top만 3, height 2, width 55, color green
                              margin: EdgeInsets.fromLTRB(0, 3, 0, 20),
                              height: 2,
                              width: 55,
                              color: !isSignupScreen ?Colors.green:Colors.green.withOpacity(0.0),
                            ),
                          ],
                        ),
                      ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          isSignupScreen = true;
                        });
                      },
                      child: Column(
                        children: [
                          Text(
                            'SIGNUP',
                            // TODO : font size 16, bold
                            // TODO : palette의 active colo
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: isSignupScreen ? Palette.activeColor:Palette.textColor1),

                          ),
                          Container(
                            // TODO : margin top만 3, height 2, width 55, color green
                            margin: EdgeInsets.fromLTRB(0, 3, 0, 20),
                            height: 2,
                            width: 55,
                            color: isSignupScreen ?Colors.green:Colors.green.withOpacity(0.0),
                          ),
                        ],
                      ),

                    )
                    ],
                  ),
                  Container(
                    child: Form(
                      child: Column(
                        children: [
                          isSignupScreen?
                              TextFormField(
                                decoration: InputDecoration(
                                  // TODO : prefix icon 원하는 icon 입력, color는 palette의 iconColor
                                  prefixIcon: Icon(Icons.account_circle, color: Palette.iconColor),
                                  hintText: 'User name',
                                  enabledBorder: OutlineInputBorder(
                                    // TODO : borderside 색은 palette의 textColot1
                                    borderSide: BorderSide(color: Palette.textColor1),
                                    // TODO : border radius는 모두 35
                                    borderRadius: BorderRadius.all(Radius.circular(35)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    // TODO : borderside 색은 palette의 textColot1
                                    borderSide: BorderSide(color: Palette.textColor1),
                                    // TODO : border radius는 모두 35
                                    borderRadius: BorderRadius.all(Radius.circular(35)),
                                  ),
                                ),
                              )
                              :TextFormField(
                                decoration: InputDecoration(
                                  // TODO : prefix icon 원하는 icon 입력, color는 palette의 iconColor
                                  prefixIcon: Icon(Icons.mail, color: Palette.iconColor),
                                  hintText: 'email',
                                  enabledBorder: OutlineInputBorder(
                                    // TODO : borderside 색은 palette의 textColot1
                                    borderSide: BorderSide(color: Palette.textColor1),
                                    // TODO : border radius는 모두 35
                                    borderRadius: BorderRadius.all(Radius.circular(35)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    // TODO : borderside 색은 palette의 textColot1
                                    borderSide: BorderSide(color: Palette.textColor1),
                                    // TODO : border radius는 모두 35
                                    borderRadius: BorderRadius.all(Radius.circular(35)),
                                  ),
                                ),
                              ),
                          SizedBox(
                            height: 8,
                          ),
                          isSignupScreen?
                            TextFormField(
                              decoration: InputDecoration(
                                // TODO : prefix icon 원하는 icon 입력, color는 palette의 iconColor
                                prefixIcon: Icon(Icons.email, color: Palette.iconColor),
                                hintText: 'email',
                                enabledBorder: OutlineInputBorder(
                                  // TODO : borderside 색은 palette의 textColot1
                                  borderSide: BorderSide(color: Palette.textColor1),
                                  // TODO : border radius는 모두 35
                                  borderRadius: BorderRadius.all(Radius.circular(35)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  // TODO : borderside 색은 palette의 textColot1
                                  borderSide: BorderSide(color: Palette.textColor1),
                                  // TODO : border radius는 모두 35
                                  borderRadius: BorderRadius.all(Radius.circular(35)),
                                ),
                              ),
                            ):
                              TextFormField(
                                decoration: InputDecoration(
                                  // TODO : prefix icon 원하는 icon 입력, color는 palette의 iconColor
                                  prefixIcon: Icon(Icons.lock, color: Palette.iconColor),
                                  hintText: 'password',
                                  enabledBorder: OutlineInputBorder(
                                    // TODO : borderside 색은 palette의 textColot1
                                    borderSide: BorderSide(color: Palette.textColor1),
                                    // TODO : border radius는 모두 35
                                    borderRadius: BorderRadius.all(Radius.circular(35)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    // TODO : borderside 색은 palette의 textColot1
                                    borderSide: BorderSide(color: Palette.textColor1),
                                    // TODO : border radius는 모두 35
                                    borderRadius: BorderRadius.all(Radius.circular(35)),
                                  ),
                                ),
                              ),
                          SizedBox(
                            height: 8,
                          ),
                          isSignupScreen?
                              TextFormField(
                                decoration: InputDecoration(
                                  // TODO : prefix icon 원하는 icon 입력, color는 palette의 iconColor
                                  prefixIcon: Icon(Icons.lock, color: Palette.iconColor),
                                  hintText: 'password',
                                  enabledBorder: OutlineInputBorder(
                                    // TODO : borderside 색은 palette의 textColot1
                                    borderSide: BorderSide(color: Palette.textColor1),
                                    // TODO : border radius는 모두 35
                                    borderRadius: BorderRadius.all(Radius.circular(35)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    // TODO : borderside 색은 palette의 textColot1
                                    borderSide: BorderSide(color: Palette.textColor1),
                                    // TODO : border radius는 모두 35
                                    borderRadius: BorderRadius.all(Radius.circular(35)),
                                  ),
                                ),
                              ):
                              SizedBox(
                                height: 0,
                              )

                        ]
                      ),
                    )
                  ),
                ]
              ),
            )
          ),

          Positioned(
            top: isSignupScreen? 430:390,
            right: 0,
            left: 0,
            child: Center(
              child: Container(
                padding: EdgeInsets.all(15.0),
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.lightGreen, Colors.green],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight
                    ),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 1)
                      )
                    ]
                  ),
                  child: Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.white,
                  ),
                )
              )
            )
          ),
          Positioned(
            top: MediaQuery.of(context).size.height -135,
            right: 0,
            left: 0,
            child: Column(
              children: [
                Text(
                  isSignupScreen ?'or Signin with':'or Login with',
                ),

                SizedBox(
                  height: 10,
                ),
                TextButton.icon(
                  // TODO : 배경색은 palette의 googleColor
                  // TODO : 더하기 아이콘 넣고 ‘Google’ 쓰기
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  label: Text('Google'),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: Size(155, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    backgroundColor: Palette.googleColor,
                  ),
                )
              ],
            )
          )

        ],
      )
    );
  }
}
