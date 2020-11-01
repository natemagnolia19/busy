import 'package:busy/ui/profile_settings.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CodeScreen extends StatefulWidget {
  CodeScreen({Key key}) : super(key: key);

  @override
  _CodeScreenState createState() => _CodeScreenState();
}

class _CodeScreenState extends State<CodeScreen> {
  String currentText = '';
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Введите код из СМС',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Colors.grey[800],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 25,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 3.5,
                  width: 328,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.6),
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 40,
                      ),
                      Text(
                        'Код отправлен номер телефона',
                        style: TextStyle(
                          color: Colors.grey[700],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 40,
                      ),
                      Form(
                        key: _globalKey,
                        child: PinCodeTextField(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          controller: TextEditingController(),
                          length: 4,
                          appContext: context,
                          pastedTextStyle: TextStyle(color: Colors.yellow),
                          pinTheme: PinTheme(
                            inactiveColor: Colors.green,
                            selectedColor: Colors.grey,
                            activeColor: Colors.yellow[600],
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(10),
                            fieldHeight: 59,
                            fieldWidth: 59,
                          ),
                          keyboardType: TextInputType.number,
                          onCompleted: (value) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProfileSettings(),
                              ),
                            );
                          },
                          onChanged: (value) {
                            print(value);
                            setState(() {
                              currentText = value;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 45,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 120,
                            child: FlatButton(
                              child: Text(
                                'Назад',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          SizedBox(
                            width: 55,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
