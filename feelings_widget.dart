import 'package:flutter/material.dart';
import 'package:qube_health_task/model/feelings_model.dart';
class FeelingsWidget extends StatefulWidget {
  late FeelingsModel feelingsModel;
   FeelingsWidget({required this.feelingsModel});

  @override
  State<FeelingsWidget> createState() => _FeelingsWidgetState();
}

class _FeelingsWidgetState extends State<FeelingsWidget> {
  late FeelingsModel feelingsModel;

  @override
  initState(){
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(
          height: 140,
          width: 70,
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: Colors.grey.withOpacity(0.3),
              boxShadow: const [
                //  BoxShadow(color: Colors.green, spreadRadius: 1),
              ],
            ),
            child: Stack(

              children: [
                Positioned(
                    top: 25,
                    left: 10,
                    right: 5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        Text(widget.feelingsModel.feelingInPercentage, style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                      ],
                    )),



                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 65,
                      decoration: const BoxDecoration(
                          color: Color(0xff93c647),
                          borderRadius: BorderRadius.all(Radius.circular(35))
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          Text(widget.feelingsModel.emoji,style: const TextStyle(fontSize: 35),textAlign: TextAlign.start,),
                        ],
                      ),
                    )),

              ],
            ),
          ),
        ),
        SizedBox(
            width: 50,
            child: Text(widget.feelingsModel.feelingType,maxLines: 2,overflow: TextOverflow.ellipsis,))
      ],
    );
  }
}
