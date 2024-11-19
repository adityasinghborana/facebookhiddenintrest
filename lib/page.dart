import 'package:facebookhiddenintrest/controller.dart';
import 'package:facebookhiddenintrest/form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {

  final IntrestController intrestcontroller = Get.put(IntrestController());

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sutradhar Hidden Interest Finder",style: TextStyle(color: Colors.brown.shade50),),backgroundColor: Colors.brown,),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 80,vertical: 20),
        child: Column(
          children: <Widget>[
            SearchForm(),
            Expanded(
              child: Obx(() {
                // Retrieve the list of interests from the controller
                final interests = intrestcontroller.intrest;
                    //.where((interest) => interest.topic == "Shopping and fashion").toList();



                if(interests.isNotEmpty){
                  return ListView.builder(
                    itemCount: interests.length,
                    itemBuilder: (context, index) {
                      final interest = interests[index];

                      return Container(
                        constraints: BoxConstraints(minHeight: 50,maxHeight: 200),
                        margin: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(18)
                        ),

                        width: double.infinity, // Use double.infinity for full-width
                        padding: EdgeInsets.all(8.0), // Optional: Add padding
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              flex:1,
                              child: Text(
                                " Interest Name  ${interest.name}" ?? 'No Name', // Display the interest name, or 'No Name' if it's null
                                style: TextStyle(fontSize: 16.0 ,color: Colors.brown.shade50), // Optional: Adjust text style
                              ),
                            ),
                            Flexible(
                              flex:1,
                              child: Text(
                                " Lower Audience:  ${interest.audience_size_lower_bound} People" ?? 'No Name', // Display the interest name, or 'No Name' if it's null
                                style: TextStyle(fontSize: 16.0,color: Colors.brown.shade50), // Optional: Adjust text style
                              ),
                            ),
                            Flexible(
                              flex:1,
                              child: Text(
                                " upper Audience  ${interest.audience_size_upper_bound} People" ?? 'No Name', // Display the interest name, or 'No Name' if it's null
                                style: TextStyle(fontSize: 16.0,color: Colors.brown.shade50), // Optional: Adjust text style
                              ),
                            ),
                            Flexible(
                              flex:1,
                              child: Text(
                                " overlap in:  ${interest.path} Audiences" ?? 'No Name', // Display the interest name, or 'No Name' if it's null
                                style: TextStyle(fontSize: 16.0,color: Colors.brown.shade50), // Optional: Adjust text style
                              ),
                            ),
                            Flexible(
                              flex:1,
                              child: Text(
                                " Topic: ${interest.topic} " ?? 'No Name', // Display the interest name, or 'No Name' if it's null
                                style: TextStyle(fontSize: 16.0,color: Colors.brown.shade50), // Optional: Adjust text style
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }
                else{
                  return Center(child: Text("No data "),);
                }
              }),
            )

          ],
        ),
      ),

    );
  }
}
