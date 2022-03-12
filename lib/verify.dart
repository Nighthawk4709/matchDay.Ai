import 'package:flutter/material.dart';
import 'package:matchday_ui/site.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';

class Verify extends StatefulWidget {
  final String? mobileNo;
  final String? otpHash;
  const Verify({this.mobileNo, this.otpHash});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  String _otpCode = "";
  final int _otpCodelength = 4;
  bool isAPICall = false;
  late FocusNode myfocusNode;
  @override
  void initState() {
    super.initState();
    myfocusNode = FocusNode();
    myfocusNode.requestFocus();

    SmsAutoFill().listenForCode.call();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ProgressHUD(
        child: verifyUI(),
        opacity: .3,
        key: UniqueKey(),
        inAsyncCall: isAPICall,
      ),
    ));
  }

  @override
  void dispose() {
    SmsAutoFill().unregisterListener();
    myfocusNode.dispose();
    super.dispose();
  }

  verifyUI() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            "assets/image/sms.png",
            height: 180,
            fit: BoxFit.contain,
          ),
        ]),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Enter OTP code sent to your mobile \n +91 ${widget.mobileNo}",
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
          child: PinFieldAutoFill(
            decoration: UnderlineDecoration(
                textStyle: TextStyle(fontSize: 20, color: Colors.black),
                colorBuilder: FixedColorBuilder(Colors.black.withOpacity(0.3))),
            currentCode: _otpCode,
            codeLength: _otpCodelength,
            onCodeChanged: (code) {
              if (code!.length == _otpCodelength) {
                _otpCode = code;
                FocusScope.of(context).requestFocus(FocusNode());
              }
            },
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Center(
          child: FormHelper.submitButton("Verify", () {
            // setState(() {
            //   isAPICall = true;
            // });
            // APIService.verifyOTP(widget.mobileNo!, widget.otpHash!, _otpCode)
            //     .then((response) async {
            //   setState(() {
            //     isAPICall = false;
            //   });
            //   print(response.message);
            //   print(response.data);
            //   if (response.data != null) {
            //     Navigator.pushAndRemoveUntil(
            //         context,
            //         new MaterialPageRoute(builder: (context) => Site()),
            //         (route) => false);
            //   } else {
            //     FormHelper.showSimpleAlertDialog(
            //         context, "Wrong OTP", response.message, "Ok", () {
            //       Navigator.pop(context);
            //     });
            //   }
            // });
            Navigator.push(
                context, new MaterialPageRoute(builder: (context) => Site()));
          },
              borderColor: Colors.grey,
              btnColor: Colors.green,
              borderRadius: 20),
        )
      ],
    );
  }
}
