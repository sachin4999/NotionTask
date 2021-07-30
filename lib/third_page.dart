import 'package:flutter/material.dart';
import 'package:notion_task/fourth_page.dart';
import 'package:pie_chart/pie_chart.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  Map<String, double> dataMap = {
    "Paid": 20,
    "Unpaid": 80,
  };

  Map<String, double> dataMapTwo = {
    "Paid": 10,
    "Unpaid": 90,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Olympus Apartments'),
      ),
      drawer: Drawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Card(
              shadowColor: Colors.blue,
              elevation: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Maintenance Summary',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      PieChart(
                        centerText: 'April',
                        dataMap: dataMap,
                        chartRadius: 140,
                        chartType: ChartType.ring,
                        legendOptions: LegendOptions(
                          showLegends: false,
                        ),
                        chartValuesOptions: ChartValuesOptions(
                          showChartValuesInPercentage: true,
                          decimalPlaces: 0,
                        ),
                      ),
                      PieChart(
                        centerText: 'March',
                        dataMap: dataMapTwo,
                        chartRadius: 140,
                        chartType: ChartType.ring,
                        legendOptions: LegendOptions(
                          showLegends: false,
                        ),
                        chartValuesOptions: ChartValuesOptions(
                          showChartValuesInPercentage: true,
                          decimalPlaces: 0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.blue,
                        height: 5,
                        width: 5,
                      ),
                      Text('Paid'),
                      SizedBox(width: 20),
                      Container(
                        color: Colors.orange,
                        height: 5,
                        width: 5,
                      ),
                      Text('Unpaid'),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
          Card(
            shadowColor: Colors.blue,
            elevation: 3,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Corpus Fund Balance',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    '1.85L',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 3,
              shadowColor: Colors.blue,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Expense Summary',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              '24.5k',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'May',
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '21.8k',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'April',
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '19.6k',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'March',
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Add Expense'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FourthPage()));
            },
            child: Text('Next Screen'),
          ),
        ],
      ),
    );
  }
}
