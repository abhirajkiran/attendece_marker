//import 'dart:html';
//import 'dart:js';

import 'package:attendence_marker2/widgets/Home/datePicker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../db/db_functions/db_form_functions.dart';

class SubDetails extends StatelessWidget {
  final int? id;
  final String subName;
  final String attGoal;
  final String staffName;
  final int Attendence;
  final double percentage;

  const SubDetails(
      {Key? key,
      this.id,
      required this.subName,
      required this.attGoal,
      required this.staffName,
      required this.Attendence,
      required this.percentage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String attendencestring = Attendence.toString();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text(subName)),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        height: 200,
                        width: 250,
                        child: SfRadialGauge(
                          title: GaugeTitle(text: 'Attendence Goal'),
                          enableLoadingAnimation: true,
                          axes: <RadialAxis>[
                            RadialAxis(
                              minimum: 0,
                              maximum: 100,
                              pointers: <GaugePointer>[
                                NeedlePointer(
                                  needleLength: 0.75,
                                  needleColor: Colors.blue,
                                  knobStyle: KnobStyle(
                                      knobRadius: 5,
                                      sizeUnit: GaugeSizeUnit.logicalPixel,
                                      color: Colors.blue),
                                  needleStartWidth: 1,
                                  needleEndWidth: 5,
                                  enableAnimation: true,
                                  value: double.parse(attGoal),
                                )
                              ],
                              ranges: <GaugeRange>[
                                GaugeRange(
                                  startValue: 0,
                                  endValue: 55,
                                  color: Colors.red,
                                ),
                                GaugeRange(
                                  startValue: 55,
                                  endValue: 75,
                                  color: Colors.orange,
                                ),
                                GaugeRange(
                                  startValue: 75,
                                  endValue: 100,
                                  color: Colors.green,
                                )
                              ],
                              annotations: <GaugeAnnotation>[
                                GaugeAnnotation(
                                  widget: Text(
                                    attGoal + "%",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  positionFactor: 0.5,
                                  angle: 90,
                                )
                              ],
                            )
                          ],
                        )),
                  ),
                  Expanded(
                    child: ValueListenableBuilder(
                      valueListenable: attpercen,
                      builder: (BuildContext context, double attpercen, Widget? child){
                        return Container(
                          height: 200,
                          width: 250,
                          child: SfRadialGauge(
                            title: GaugeTitle(text: 'Your Attendence'),
                            enableLoadingAnimation:true,
                            axes: <RadialAxis>[
                              RadialAxis(
                                minimum: 0,
                                maximum: 100,
                                pointers: <GaugePointer>[
                                  NeedlePointer(
                                    needleLength: 0.75,
                                    needleColor: Colors.blue,
                                    knobStyle: KnobStyle(
                                        knobRadius: 5,
                                        sizeUnit: GaugeSizeUnit.logicalPixel,
                                        color: Colors.blue),
                                    needleStartWidth: 1,
                                    needleEndWidth: 5,
                                    enableAnimation: true,
                                    value:attpercen,
                                  )
                                ],
                                ranges: <GaugeRange>[
                                  GaugeRange(
                                    startValue: 0,
                                    endValue: 55,
                                    color: Colors.red,
                                  ),
                                  GaugeRange(
                                    startValue: 55,
                                    endValue: 75,
                                    color: Colors.orange,
                                  ),
                                  GaugeRange(
                                    startValue: 75,
                                    endValue: 100,
                                    color: Colors.green,
                                  )
                                ],
                                annotations: <GaugeAnnotation>[
                                  GaugeAnnotation(
                                    widget: Text(
                                      attpercen.toString(),
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    positionFactor: 0.5,
                                    angle: 90,
                                  )
                                ],
                              )
                            ],
                          )
                          );
                      },
                      
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          addingAttendence(id);
                          calculateAttPercentage(id);
                          markAttendence(context);
                        },
                        child: Text('Mark a Hour Attendence')),
                  )),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                         
                          addingAbsence(id);
                          calculateAttPercentage(id);
                          markAbsence(context);
                        },
                        child: Text('Mark a Hour absence')),
                  )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> markAttendence(context) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Attendence marked successfully'),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context), child: Text('OK'))
              ],
            ));
  }

  Future<void> markAbsence(context) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Absence marked successfully'),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context), child: Text('OK'))
              ],
            ));
  }
}
