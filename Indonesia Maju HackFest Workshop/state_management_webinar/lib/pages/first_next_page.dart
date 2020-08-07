part of 'pages.dart';

class FirstNextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: makeText("Stateless Next Page", fontSize: 20),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            makeText('My Number'),
            SizedBox(
              height: 10,
            ),
            makeText('0', fontSize: 50),
            SizedBox(
              height: 10,
            ),
            makeRaisedButton('+', () {}),
            SizedBox(
              height: 10,
            ),
            makeRaisedButton('-', () {}),
          ],
        ),
      ),
    );
  }
}
