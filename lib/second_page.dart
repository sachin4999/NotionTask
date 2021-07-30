import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:notion_task/third_page.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final TextEditingController myController = TextEditingController();

  int? token = 123456789;
  int? mobile_number = 8980868694;

  Future loggenIn() async {
    var url =
        Uri.parse('https://www.oxyt.notioninfosoft.com/api/verify_otp.php');
    var response = await http.post(url, body: {
      'user_id': '51',
      'otp': myController.text,
      'mobile_number': mobile_number.toString(),
      'token': token.toString(),
    });
    print(response.body);
    if (response.statusCode == 200) {
      print(response.body);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ThirdPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF203864),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Oxyt',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.all(38.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 3, color: Colors.blue)),
              child: TextFormField(
                controller: myController,
                decoration: InputDecoration(
                    hintText: 'Enter OTP',
                    hintStyle: TextStyle(color: Colors.black)),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              loggenIn();
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => ThirdPage()));
            },
            child: Text(
              'Sign In',
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
