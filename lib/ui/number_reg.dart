import 'package:busy/ui/code_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class NumberReg extends StatefulWidget {
  NumberReg({Key key}) : super(key: key);

  @override
  _NumberRegState createState() => _NumberRegState();
}

class _NumberRegState extends State<NumberReg> {
  var controller = new MaskedTextController(
    mask: '(000) - 000 - 00 - 00',
  );
  String dropdownValue = '+7';

  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

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
                    'Введите свой номер телефона',
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
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    width: 320,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Colors.transparent,
                    ),
                    child: Row(
                      children: [
                        DropdownButton<String>(
                          value: dropdownValue,
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValue = newValue;
                            });
                          },
                          items: <String>['+7', '+8', '+9']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Form(
                            key: _globalKey,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 20),
                                  hintText: '(777) - 777 - 77 - 77',
                                  focusedBorder: InputBorder.none,
                                  border: InputBorder.none),
                              controller: controller,
                              keyboardType: TextInputType.phone,
                              validator: (value) => value.isEmpty
                                  ? "Введите номер телефона"
                                  : null,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 45,
                  ),
                  Container(
                    width: 328,
                    child: RichText(
                      softWrap: true,
                      overflow: TextOverflow.clip,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Нажимая "Далее", вы соглашаетесь с ',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: 'правилами сервиса',
                            style: TextStyle(
                              color: Colors.yellow[700],
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                showDialog(
                                  context: context,
                                  child: AlertDialog(
                                    title: Text('Правила'),
                                  ),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 160,
                        height: 45,
                        child: FlatButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Center(
                            child: Text(
                              'Отменить',
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 45,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [
                                Colors.yellow,
                                Colors.orange,
                              ],
                            )),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CodeScreen(),
                                ),
                              );
                            },
                            child: Text(
                              'Далее',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
