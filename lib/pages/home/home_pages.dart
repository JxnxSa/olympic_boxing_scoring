import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var count = 0;
  var ScoreRed = 0;
  var ScoreBlue = 0;
  var sumScoreRed = 0;
  var sumScoreBlue = 0;

  void _handleClickButtonScore(int num){
    if(num == 1){
      setState(() {
        ScoreRed = 10;
        ScoreBlue = 9;
      });
      sumScoreRed += ScoreRed;
      sumScoreBlue += ScoreBlue;
    }
    if(num == 2){

      setState(() {
        ScoreRed = 9;
        ScoreBlue = 10;
      });
      sumScoreRed += ScoreRed;
      sumScoreBlue += ScoreBlue;
    }
  }

  Widget _buildScoreTotal(){
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 7.5, 0, 7.5),
        child: Column(
          children: [
            Text(
              'TOTAL',
              style: TextStyle(
                fontSize: 10.0,
              ),
            ),
            Text(
              '$sumScoreRed                                  $sumScoreBlue',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Divider(
              thickness: 1.0,
              color: Color.fromRGBO(157, 157, 158, 1.0),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildScoreRound(int count) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 7.5, 0, 7.5),
        child: Column(
          children: [
            Text(
              'ROUND$count',
              style: TextStyle(
                fontSize: 10.0,
              ),
            ),
            Text(
              '$ScoreRed                                   $ScoreBlue',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Divider(
              thickness: 1.0,
              color: Color.fromRGBO(157, 157, 158, 1.0),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OLYMPIC BOXING SCORING'),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 280.0,
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.black,
                    height: 25.0,
                    child: Center(
                      child: Text(
                        'Women,s Light (57-60kg) Semi-final',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: Color(0xFFA00000),
                          size: 80.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/flag_ireland.png',
                                  width: 40.0,
                                ),
                                Text(
                                  ' IRELAND',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.0),
                            Row(
                              children: [
                                Text(
                                  'HARRINGTON Kellie Anne',
                                  style: TextStyle(
                                    fontSize: 17.0,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    Icon(
                      Icons.check,
                      color: Colors.green,
                      size: 40.0,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: Color(0xFF0000A0),
                          size: 80.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/flag_thailand.png',
                                  width: 40.0,
                                ),
                                Text(
                                  ' THAILAND',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.0),
                            Row(
                              children: [
                                Text(
                                  'SEESONDEE Sudaporn',
                                  style: TextStyle(
                                    fontSize: 17.0,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    Icon(
                      Icons.check,
                      color: Colors.green,
                      size: 40.0,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    color: Color(0xFFA00000),
                    height: 7.0,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Color(0xFF0000A0),
                    height: 7.0,
                  ),
                ),
              ],
            ),
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        _buildScoreRound(1),
                        _buildScoreRound(2),
                        _buildScoreRound(3),
                        _buildScoreTotal(),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 40.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: ElevatedButton(
                          onPressed: () {
                            _handleClickButtonScore(1);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFA00000),
                          ),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: ElevatedButton(
                          onPressed: () {
                            _handleClickButtonScore(2);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF0000A0),
                          ),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
