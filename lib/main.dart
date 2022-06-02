import 'package:flutter/material.dart';

void main() {
  runApp(Example02());
}

class Example02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example 02 ',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Example 02  '),
        ),
        body: Column(
          children: [
            _buildColumn(),
            _buildRow(),
            _buildIcons(),
            _buildImage(),
          ],
        ),
      ),
    );
  }
}

//_buildImage()
class _buildImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: const Image(image: AssetImage('assets/jar-loading.gif')),
    );
  }
}

//_buildIcons()
class _buildIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Icon(
          Icons.audiotrack,
          size: 100,
          color: Colors.green,
        ),
        /*Icon(
          Icons.account_balance,
          size: 100,
          color: Colors.red,
        ),
        Icon(
          Icons.airplanemode_active,
          size: 200,
          color: Colors.deepPurple,
        ),*/
      ],
    );
  }
}

class _buildRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color.fromARGB(100, 200, 200, 200),
      child: Row(
        children: const [
          FlutterLogo(
            size: 50,
          ),
          Text('Example Row', style: TextStyle(color: Colors.teal)),
          Icon(Icons.widgets)
        ],
      ),
    );
  }
}

//_buildColumn()
class _buildColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Column(
        children: const [
          FlutterLogo(
            size: 50,
          ),
          Text(' Flutter Example Column'),
          Icon(Icons.widgets)
        ],
      ),
    );
  }
}
