import 'package:attendence_marker2/db/db_functions/db_form_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:attendence_marker2/db/db_models/form_model.dart';

class SubList extends StatelessWidget {
  /* List titles=['DBMS','GRAPH THEORY','OPERATING SYSTEM'];

   List subtitles=['75%','80%','68%'];  */
  SubList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ValueListenableBuilder(
          valueListenable: formList,
          builder:
              (BuildContext ctx, List<formModel> form_list, Widget? child) {
            return ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (ctx, index) {
                  return Divider();
                },
                itemCount: form_list.length,
                itemBuilder: (context, index) {
                  final data = form_list[index];
                  return ListTile(
                      textColor: Colors.white,
                      title: Text(data.subName),
                      subtitle: Text(data.attGoal),
                      leading: CircleAvatar(),
                      trailing: ElevatedButton(
                        //style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveAs(value, states)),
                        onPressed: () {},
                         child: Icon(Icons.arrow_forward,color: Colors.green,)));
                });
          },
        ),
      ),
    );
  }
}
