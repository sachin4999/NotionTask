import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:notion_task/second_page.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final TextEditingController myController = TextEditingController();

  int? token = 123456789;
  int? mobile_number = 8980868694;

  Future loggenIn() async {
    var url = Uri.parse('https://www.oxyt.notioninfosoft.com/api/login.php');
    var response = await http.post(url, body: {
      'token': token.toString(),
      'mobile_number': myController.text,
    });
    print(response.body);
    if (response.statusCode == 200) {
      print(response.body);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SecondPage()));
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
                fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.all(38.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 3, color: Colors.blue)),
              child: TextFormField(
                controller: myController,
                decoration: InputDecoration(hintText: 'Mobile Number'),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              loggenIn();
            },
            child: Text(
              'Get OTP',
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
