part of 'pages.dart';

class SecondMainPage extends StatefulWidget {
  @override
  _SecondMainPageState createState() => _SecondMainPageState();
}

class _SecondMainPageState extends State<SecondMainPage> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: makeText("Stateful Main Page", fontSize: 20),
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
                            makeText('$number', fontSize: 50)
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
                            makeText('$number', fontSize: 50)
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
                    makeRaisedButton('+', () {
                      setState(() {
                        number++;
                      });
                    }),
                    SizedBox(
                      height: 10,
                    ),
                    makeRaisedButton('-', () {
                      setState(() {
                        number--;
                      });
                    }),
                    SizedBox(
                      height: 10,
                    ),
                    makeRaisedButton('Next Page', () async {
                      number = await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => SecondNextPage(number)));
                              
                      setState(() {});
                    }, color: Colors.pink[200])
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
