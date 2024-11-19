import 'package:facebookhiddenintrest/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SearchForm extends StatelessWidget {
  final IntrestController interestController =Get.find();

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
      Flexible(
        flex: 1,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(border: Border.all(color: Colors.grey.withOpacity(.6))),
          child: TextFormField(
            decoration: InputDecoration(labelText: 'Interest',border:InputBorder.none),
            controller: interestController.intrestController,
          ),
        ),
      ),
      SizedBox(width: 20,),
      Flexible(
        flex: 1,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 4),
    decoration: BoxDecoration(border: Border.all(color: Colors.grey.withOpacity(.6))),
    child: TextField(
      decoration: InputDecoration(labelText: 'Token',border:InputBorder.none),
    controller: interestController.tokenController,
    ),
    ),
      ),
      Flexible(
        flex: 1,
        child: TextButton(onPressed: (){

          interestController.fetchAdInterests();
        }, child: Text('Clickme')),
      ),
    ]);
  }
}
