import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double result = 0;
  TextEditingController userInputAsMin = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(143, 123, 97, 1.0),
        appBar: AppBar(
            backgroundColor: Colors.brown,
            title: Align(
              alignment: Alignment.centerRight,
              child: Text(
                "تبدیل دقیقه به ثانیه",
                style: TextStyle(fontSize: 25),
              ),
            )),
        body: Center(
          ///main container
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(218, 199, 174, 1.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(3, 3),
                        blurRadius: 10)
                  ]),
              width: 400,
              height: 500,

              ///main colmun
              child: Column(
                children: [
                  ///title CON
                  Container(
                    color: Colors.brown,
                    width: double.infinity,
                    height: 100,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "برای تبدیل واحد دقیقه به ثانیه اطلاعات زیر را وارد کنید وبر روی تبدیل کلیک کنید",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),

                  /// Text & feild 1
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 25, top: 20),
                      child: Text(
                        "مقدار تبدیل",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: userInputAsMin,
                      cursorColor: Colors.brown,
                      decoration: InputDecoration(
                        hintText: "دریافت دقیقه",
                        hintTextDirection: TextDirection.rtl,
                        hintStyle: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(
                                140, 120, 103, 0.4666666666666667),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.brown)),
                      ),
                    ),
                  ),

                  ///next
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 25,
                      ),
                      child: Text(
                        "به ثانیه",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),

                  ///show result
                  Container(
                    width: 370,
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color:
                            Color.fromRGBO(140, 120, 103, 0.4666666666666667),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(result.toString()),
                        Text(
                          "تبدیل به ثانیه",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      /// change button
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            result = double.parse(userInputAsMin.text) * 60;
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.brown),
                          padding: MaterialStatePropertyAll(
                            EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                          ),
                        ),
                        child: Text(
                          "تبدیل",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      SizedBox(width: 20),

                      ///delete icon
                      IconButton(
                        onPressed: () {
                          setState(() {
                            userInputAsMin.clear();
                            result = 0;
                          });
                        },
                        color: Colors.brown,
                        icon: Icon(Icons.close_outlined),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
