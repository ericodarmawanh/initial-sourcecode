part of 'pages.dart';

class SecondNextPage extends StatefulWidget {
  final int initialNumber;

  SecondNextPage(this.initialNumber);

  @override
  _SecondNextPageState createState() => _SecondNextPageState();
}

class _SecondNextPageState extends State<SecondNextPage> {
  int number;

  @override
  void initState() {
    super.initState();
    number = widget.initialNumber;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, number);
        return;
      },
      child: Scaffold(
        appBar: AppBar(
          title: makeText("Stateful Next Page", fontSize: 20),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              makeText('My Number'),
              SizedBox(
                height: 10,
              ),
              makeText('$number', fontSize: 50),
              SizedBox(
                height: 10,
              ),
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
            ],
          ),
        ),
      ),
    );
  }
}
