part of 'pages.dart';

class FirstMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: makeText("Stateless Main Page", fontSize: 20),
      ),
      body: Column(
        children: [
          Flexible(
              flex: 2,
              child: Row(
                children: [
                  Flexible(
                      flex: 1,
                      //// MY NUMBER [LEFT]
                      child: Container(
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            makeText('My Number'),
                            SizedBox(
                              height: 10,
                            ),
                            makeText('0', fontSize: 50)
                          ],
                        ),
                      )),
                  Flexible(
                      flex: 1,
                      //// MY NUMBER [RIGHT]
                      child: Container(
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            makeText('My Number'),
                            SizedBox(
                              height: 10,
                            ),
                            makeText('0', fontSize: 50)
                          ],
                        ),
                      ))
                ],
              )),
          Flexible(
              flex: 1,
              child: Center(
                //// BUTTONS
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    makeRaisedButton('+', () {}),
                    SizedBox(
                      height: 10,
                    ),
                    makeRaisedButton('-', () {}),
                    SizedBox(
                      height: 10,
                    ),
                    makeRaisedButton('Next Page', () async {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => FirstNextPage()));
                    }, color: Colors.pink[200])
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
