// ignore_for_file: deprecated_member_use

import 'package:attendence_marker2/db/db_functions/db_form_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DatePicker extends StatefulWidget {
   DatePicker({Key? key}) : super(key: key);

   
 
  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime selectedDate = DateTime.now();

  

  Future<void> _selectDate(BuildContext context) async {
   
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    // getAllSublist();
    return Container(
      child: Column(
       // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          // Text("${selectedDate.toLocal()}".split(' ')[0]),
          SizedBox(
            height: 20.0,
          ),

          Center(
            child: Container(
              child: Column(
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.green),
                      ),
                      onPressed: () => _selectDate(context),
                      child: Text('Select date')),
                      SizedBox(height: 10,),
                      Text("${selectedDate.toLocal()}".split(' ')[0],style: TextStyle(color: Colors.green,fontSize:18)),
                     
                  



                ],
              ),
            ),
          )
          ,
          
        ],
      ),
    );
    
  }
}
