import 'package:flutter/material.dart';

class AdminDashboard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){},
        ),
        title: Text("Admin Dashboard"),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.notes),
              onPressed: (){})
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          color: Colors.grey.shade200,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.purpleAccent.shade100,
                    child: Column(
                      children: [
                        Text("Upload Products",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0,color: Colors.black),),
                        Container(
                          color: Colors.purple.shade200,
                          child: IconButton(
                            color: Colors.blue,
                              icon: Icon(Icons.add),
                              onPressed: (){}),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.red.shade100,
                    child: Column(
                      children: [
                        Text("Upload Products",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0,color: Colors.black),),
                        Container(
                          color: Colors.grey.shade200,
                          child: IconButton(
                              color: Colors.blue,
                              icon: Icon(Icons.add),
                              onPressed: (){}),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
