// ignore_for_file: deprecated_member_use

import 'package:attendence_marker2/db/db_functions/db_form_functions.dart';
import 'package:attendence_marker2/db/db_models/form_model.dart';
import 'package:attendence_marker2/widgets/Home/NavBar.dart';

import 'package:attendence_marker2/widgets/Home/datePicker.dart';
import 'package:attendence_marker2/widgets/Home/subList.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);

  final _subcontroller=TextEditingController();
 final _attGoalcontroller=TextEditingController();
 final _staffcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color.fromARGB(255, 27, 26, 26),
     drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('ATTENDENCE MARKER'),
        titleTextStyle: TextStyle(color: Colors.green, fontSize: 20),
      
      
      ),
    
      body: Column(
        children: [
          DatePicker(),
          SubList()
       
        
        ],
      ),
    
    
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    scrollable: true,
                    title: Text('Add Subject'),
                    content: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Form(
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              controller: _subcontroller,
                              decoration: InputDecoration(
                                labelText: 'SubName',
                                icon: Icon(Icons.subject),
                                
                              ),
                            ),
                            TextFormField(
                              controller: _attGoalcontroller,
                              decoration: InputDecoration(
                                labelText: 'Attendence Goal',
                                icon: Icon(Icons.percent),
                              ),
                            ),
                            TextFormField(
                              controller: _staffcontroller,
                              decoration: InputDecoration(
                                labelText: 'Staff',
                                icon: Icon(Icons.man_sharp  ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                     actions: [
                      RaisedButton(
                          child: Text("Submit"),
                          onPressed: () {
                            onFormSubmit();
                          })
                    ],
                  );
                });
          // Add your onPressed code here!
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }
  



  Future<void>onFormSubmit()async{
    final _subName=_subcontroller.text.trim();
    final _attGoal =_attGoalcontroller.text.trim();
    final _staffName=_staffcontroller.text.trim();

    if(_subName.isEmpty ||_attGoal.isEmpty){
      return;
    }
    print('$_subName $_attGoal');

   final _sub= formModel(_subName, _attGoal, _staffName);
    addSubject(_sub);
  }


   
}