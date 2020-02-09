import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hello Flutter',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _text(),
          _pageView(),
          _buttons(),
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

  _buttons() {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _button('ListView'),
            _button('Page 2'),
            _button('Page 3'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _button('Snack'),
            _button('Dialog'),
            _button('Toast'),
          ],
        ),
      ],
    );
  }

  _button(String text) {
    return RaisedButton(
      color: Colors.orange,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      onPressed: () => _onClickOk(),
    );
  }

  void _onClickOk() {
    print('Clicou no botão');
  }
}