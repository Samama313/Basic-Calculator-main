import 'package:flutter/material.dart';

class BasicCalculator extends StatelessWidget {
  TextEditingController val1Controller=TextEditingController();
  TextEditingController val2Controller=TextEditingController();
  TextEditingController resultController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculator'),backgroundColor: Colors.orange,),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          spacing: 15,
          children: [
            TextFormField(
              controller: val1Controller,
              keyboardType:TextInputType.number,
              decoration: InputDecoration(
                
                border: OutlineInputBorder(),
                hintText: 'Enter Value 1',
                labelText: 'Value 1'

              ),
            ),
            TextFormField(
              controller: val2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Value 2',
                labelText: 'Value 2'

              ),
            ),
             TextFormField(
              controller: resultController,
              readOnly: true,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Result',
                labelText: 'Result'

              ),
            ),
            Row(
              spacing: 20,
              children: [
              ElevatedButton(onPressed:(){
                double value1=double.parse(val1Controller.text);
                double value2=double.parse(val2Controller.text);
                double sum=value1+value2;
                resultController.text=sum.toString();

              }, child: Text('+'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                minimumSize: Size(100, 50)
              ),
              ),
              ElevatedButton(onPressed:(){

              }, child: Text('-'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                minimumSize: Size(100, 50)
              ),
              )
            ],),
            Row(
              spacing: 20,
              children: [
              ElevatedButton(onPressed:(){

              }, child: Text('*'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                minimumSize: Size(100, 50)
              ),
              ),
              ElevatedButton(onPressed:(){

              }, child: Text('/'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                minimumSize: Size(100, 50)
              ),
              )
            ],)
          ],

        ),
      
      ),
    );
  }
}