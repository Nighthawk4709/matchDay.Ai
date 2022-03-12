import 'package:flutter/material.dart';
import 'package:matchday_ui/verify.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';

import 'Screens/animationFront.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String mobileNo = '';
  bool isAPICall = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.green[200],
      body: ProgressHUD(
        child: loginUI(),
        opacity: .3,
        inAsyncCall: isAPICall,
        key: UniqueKey(),
      ),
    ));
  }

  loginUI() {
    return SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          SizedBox(
            height: 30,
          ),
          AnimatedImage(),
          SizedBox(
            height: 5.0,
          ),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Hi there!",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              "Let's Improve your Game",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ]),
          SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: Container(
                      height: 47,
                      width: 50,
                      margin: const EdgeInsets.fromLTRB(0, 10, 3, 30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(),
                          color: Colors.green[400]),
                      child: Center(
                        child: Text("+91",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.white)),
                      )),
                ),
                Flexible(
                    flex: 5,
                    child: TextFormField(
                      maxLength: 10,
                      maxLines: 1,
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.phone),
                          hintText: "Enter phone number : ",
                          hintStyle: TextStyle(color: Colors.deepPurple),
                          contentPadding: EdgeInsets.all(6),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1)),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1))),
                      keyboardType: TextInputType.number,
                      onChanged: (String value) {
                        if (value.length > 9) {
                          mobileNo = value;
                        }
                      },
                    )),
              ],
            ),
          ),
          Center(
            child: FormHelper.submitButton("Login", () {
              // if (mobileNo.length > 9) {
              //   setState(() {
              //     isAPICall = true;
              //   });
              //   APIService.otpLogin(mobileNo).then((response) async {
              //     setState(() {
              //       isAPICall = false;
              //     });
              //     print(response.message);
              //     print(response.data);
              //     if (response.data != null) {
              //       Navigator.pushAndRemoveUntil(
              //           context,
              //           MaterialPageRoute(
              //               builder: (context) => Verify(
              //                     otpHash: response.data,
              //                     mobileNo: mobileNo,
              //                   )),
              //           (route) => false);
              //     }
              //   });
              // }
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => Verify()));
            },
                borderColor: Colors.grey,
                btnColor: Colors.green,
                borderRadius: 20),
          )
        ]));
  }
}
