import 'package:flutter/material.dart';
// S9 Example 02

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
        body: _buildGridView(),
      ),
    );
  }
}

class _buildGridView extends StatelessWidget {
  const _buildGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      children: [
        Card(
          color: Colors.green,
          child: Text(
            '1',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        Card(
          color: Colors.green,
          child: Text(
            '2',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        Card(
          color: Colors.green,
          child: Text(
            '3',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        Card(
          color: Colors.green,
          child: Text(
            '4',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        )
      ],
    );
  }
}

//_buidListView()
class _buidListView extends StatelessWidget {
  const _buidListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          child: ListTile(title: Text('List Item 1')),
        ),
        Card(
          child: ListTile(title: Text('List Item 2')),
        ),
        Card(
          child: ListTile(title: Text('List Item 3')),
        ),
      ],
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
