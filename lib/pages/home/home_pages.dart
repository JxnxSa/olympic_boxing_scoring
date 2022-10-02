import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _c = '';
  var count = 0;
  var ScoreRed1 = 0;
  var ScoreBlue1 = 0;
  var ScoreRed2 = 0;
  var ScoreBlue2 = 0;
  var ScoreRed3 = 0;
  var ScoreBlue3 = 0;
  var sumScoreRed = 0;
  var sumScoreBlue = 0;
  void _handleClickButtonClear(){
    setState(() {
      ScoreRed1 = 0;
      ScoreBlue1 = 0;
      ScoreRed2 = 0;
      ScoreBlue2 = 0;
      ScoreRed3 = 0;
      ScoreBlue3 = 0;
      sumScoreBlue = 0;
      sumScoreRed = 0;
      _c = '';
      count = 0;
    });
  }

  void _handleClickButtonScore(int num) {
    if (_c.length >= 3) {
      return;
    }
    if (count == 0) {
      if (num == 1) {
        setState(() {
          ScoreRed1 = 10;
          ScoreBlue1 = 9;
        });
      }
      if (num == 2) {
        setState(() {
          ScoreRed1 = 9;
          ScoreBlue1 = 10;
        });
      }
      // sumScoreRed += ScoreRed1;
      // sumScoreBlue += ScoreBlue1;
    }
    if (count == 1) {
      if (num == 1) {
        setState(() {
          ScoreRed2 = 10;
          ScoreBlue2 = 9;
        });
      }
      if (num == 2) {
        setState(() {
          ScoreRed2 = 9;
          ScoreBlue2 = 10;
        });
      }
      // sumScoreRed += ScoreRed2;
      // sumScoreBlue += ScoreBlue2;
    }
    if (count == 2) {
      if (num == 1) {
        setState(() {
          ScoreRed3 = 10;
          ScoreBlue3 = 9;
        });
      }
      if (num == 2) {
        setState(() {
          ScoreRed3 = 9;
          ScoreBlue3 = 10;
        });
      }
    }
    count++;
    _c = _c + '1';
    sumScoreRed = ScoreRed1 + ScoreRed2 + ScoreRed3;
    sumScoreBlue = ScoreBlue1 + ScoreBlue2 + ScoreBlue3;
  }

  Widget _buildScoreTotal(bool on) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 7.5, 0, 7.5),
        child: on
            ? Column(
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
              )
            : SizedBox(
                height: 60.0,
              ),
      ),
    );
  }

  Widget _buildScoreRound1(bool on) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 7.5, 0, 7.5),
        child: on
            ? Column(
                children: [
                  Text(
                    'ROUND1',
                    style: TextStyle(
                      fontSize: 10.0,
                    ),
                  ),
                  Text(
                    '$ScoreRed1                                  $ScoreBlue1',
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                  Divider(
                    thickness: 1.0,
                    color: Color.fromRGBO(157, 157, 158, 1.0),
                  ),
                ],
              )
            : SizedBox(
                height: 60.0,
              ),
      ),
    );
  }

  Widget _buildScoreRound2(bool on) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 7.5, 0, 7.5),
        child: on
            ? Column(
                children: [
                  Text(
                    'ROUND2',
                    style: TextStyle(
                      fontSize: 10.0,
                    ),
                  ),
                  Text(
                    '$ScoreRed2                                  $ScoreBlue2',
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                  Divider(
                    thickness: 1.0,
                    color: Color.fromRGBO(157, 157, 158, 1.0),
                  ),
                ],
              )
            : SizedBox(
                height: 60.0,
              ),
      ),
    );
  }

  Widget _buildScoreRound3(bool on) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 7.5, 0, 7.5),
        child: on
            ? Column(
                children: [
                  Text(
                    'ROUND3',
                    style: TextStyle(
                      fontSize: 10.0,
                    ),
                  ),
                  Text(
                    '$ScoreRed3                                  $ScoreBlue3',
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                  Divider(
                    thickness: 1.0,
                    color: Color.fromRGBO(157, 157, 158, 1.0),
                  ),
                ],
              )
            : SizedBox(
                height: 60.0,
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
                    Container(
                      child: sumScoreRed > sumScoreBlue && _c.length >= 3?Icon(
                        Icons.check,
                        color: Colors.green,
                        size: 40.0,
                      ): null,
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
                    Container(
                      child: sumScoreRed < sumScoreBlue && _c.length >= 3? Icon(
                        Icons.check,
                        color: Colors.green,
                        size: 40.0,
                      ): null,
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
                        _buildScoreRound1(_c.length >= 1 ? true : false),
                        _buildScoreRound2(_c.length >= 2 ? true : false),
                        _buildScoreRound3(_c.length >= 3 ? true : false),
                        _buildScoreTotal(_c.length >= 3 ? true : false),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                    child: _c.length < 3
                        ? Row(
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
                        : Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      _handleClickButtonClear();
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.black,
                                    ),
                                    child: Icon(
                                      Icons.close,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
