import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class bill extends StatefulWidget {
  const bill({Key? key}) : super(key: key);

  @override
  State<bill> createState() => _billState();
}

class _billState extends State<bill> {

  TextEditingController amt=TextEditingController();
  TextEditingController no=TextEditingController();
  double result=0;

  void sbill(){
    double a=double.parse(amt.text);
    double b=double.parse(no.text);
    double ans= a/b;
    result=ans;
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          title: Text("BillSplit"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 400),
                child: TextField(
                  controller: amt,
                    decoration: InputDecoration(
                        labelText: "Amount", hintText: "Enter Amount")),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 400),
                child: TextField(
                  controller: no,
                  decoration: InputDecoration(
                    labelText: "No of People",
                    hintText: "Enter No",
                  ),
                ),
              ),
              SizedBox(height: 20,),
              TextButton(onPressed: () { sbill(); }, child: Text("Calculate")),
              SizedBox(height: 20,),
              Text(result.toString())
            ],
          ),
        ),
      ),
    );
  }
}
