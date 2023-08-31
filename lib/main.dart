import 'package:flutter/material.dart';

void main() {
  runApp(Test());
}

class Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _test();
  }
}

class _test extends State {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test",
      home: first()
    );
  }
}

class first extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _firstDisplay();
  }

}

class _firstDisplay extends State{
  final _idcnt = TextEditingController();
  final _pwcnt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      controller: _idcnt,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'ID'),
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      controller: _pwcnt,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password'),
                    ),
                  )
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print({_idcnt.text});
                print({_pwcnt.text});
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => seconde(_idcnt.text,_pwcnt.text),
                  ),
                );
              },
              child: Text("전송"),
            ),
          ],
        ),
      ),
    );
  }


}

class seconde extends StatelessWidget {
  const seconde( this.t1,this.t2,{super.key});
   final String t1 ;
   final String t2 ;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(t1),
              Text(t2),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("test"))
            ],
          ),
        ),
      );
  }
}
