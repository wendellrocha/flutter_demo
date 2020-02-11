import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/home_page1.dart';
import 'package:flutter_demo/pages/home_page2.dart';
import 'package:flutter_demo/pages/home_page3.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Hello Flutter',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _text(),
          _pageView(),
          _buttons(context),
        ],
      ),
    );
  }

  _text() {
    return Text(
      'Hello World',
      style: TextStyle(
        fontSize: 30,
        color: Colors.orange,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  _pageView() {
    return Container(
      margin: EdgeInsets.all(20),
      height: 300,
      child: PageView(
        children: <Widget>[
          _img('assets/images/dog1.png'),
          _img('assets/images/dog2.png'),
          _img('assets/images/dog3.png'),
          _img('assets/images/dog4.png'),
          _img('assets/images/dog5.png'),
        ],
      ),
    );
  }

  _img(String img) {
    return Image.asset(img);
  }

  _buttons(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _button(context, 'ListView',
                () => _onClickNavigator(context, HomePage1())),
            _button(context, 'Page 2',
                () => _onClickNavigator(context, HomePage2())),
            _button(context, 'Page 3',
                () => _onClickNavigator(context, HomePage3())),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _button(context, 'Snack', _onClickSnack),
            _button(context, 'Dialog', _onClickDialog),
            _button(context, 'Toast', _onClickToast),
          ],
        ),
      ],
    );
  }

  void _onClickNavigator(BuildContext context, Widget page) async {
    String s = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      ),
    );
    print(s);
  }

  _onClickSnack() {}
  _onClickDialog() {}
  _onClickToast() {}

  _button(BuildContext context, String text, Function onPressed) {
    return RaisedButton(
      color: Colors.orange,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
