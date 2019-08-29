import 'package:flutter/material.dart';


class JourneyPage extends StatelessWidget {
  const JourneyPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("行程"),
      ),
      
    );
  }
}

class JourneyBody extends StatefulWidget {
  JourneyBody({Key key}) : super(key: key);

  _JourneyBodyState createState() => _JourneyBodyState();
}

class _JourneyBodyState extends State<JourneyBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: null,
    );
  }
}