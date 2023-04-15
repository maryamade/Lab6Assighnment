import 'package:flutter/material.dart';

void main() {
  runApp(basketball_points_counter());
}

class basketball_points_counter extends StatefulWidget {
  @override
  State<basketball_points_counter> createState() =>
      _basketball_points_counterState();
}

class _basketball_points_counterState extends State<basketball_points_counter> {
  int teamApointer = 0;

  int teamBpointer = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('Basketball Points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 450,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(fontSize: 40),
                      ),
                      Text(
                        '$teamApointer',
                        style: TextStyle(fontSize: 120),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamApointer++;
                          });
                        },
                        child: Text(
                          '+1 POINT',
                          style: TextStyle(fontSize: 17),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          foregroundColor: Colors.black,
                          minimumSize: Size(140, 40),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamApointer += 2;
                          });
                        },
                        child: Text(
                          '+2 POINT',
                          style: TextStyle(fontSize: 17),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          foregroundColor: Colors.black,
                          minimumSize: Size(140, 40),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamApointer += 3;
                          });
                        },
                        child: Text(
                          '+3 POINT',
                          style: TextStyle(fontSize: 17),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          foregroundColor: Colors.black,
                          minimumSize: Size(140, 40),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 450,
                  child: VerticalDivider(
                    thickness: 2,
                    indent: 10,
                    endIndent: 10,
                  ),
                ),
                Container(
                  height: 450,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(fontSize: 40),
                      ),
                      Text(
                        '$teamBpointer',
                        style: TextStyle(fontSize: 120),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBpointer++;
                          });
                        },
                        child: Text(
                          '+1 POINT',
                          style: TextStyle(fontSize: 17),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          foregroundColor: Colors.black,
                          minimumSize: Size(140, 40),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBpointer += 2;
                          });
                        },
                        child: Text(
                          '+2 POINT',
                          style: TextStyle(fontSize: 17),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          foregroundColor: Colors.black,
                          minimumSize: Size(140, 40),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBpointer += 3;
                          });
                        },
                        child: Text(
                          '+3 POINT',
                          style: TextStyle(fontSize: 17),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          foregroundColor: Colors.black,
                          minimumSize: Size(140, 40),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  teamApointer = 0;
                  teamBpointer = 0;
                });
              },
              child: Text(
                'Reset',
                style: TextStyle(fontSize: 17),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                foregroundColor: Colors.black,
                minimumSize: Size(140, 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
