import 'package:api_data_sample_oct18/Controller/home_Screen_controller.dart';
import 'package:api_data_sample_oct18/dummy_db.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    HomeScreenController.covertStudentModel();
    HomeScreenController.convertStudentlistModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API sample"),
      ),
      body: Center(
        child: ListView.separated(itemBuilder: (context, index) => Container(

color: Colors.grey,
child: Column(
  children: [
    Text(HomeScreenController.studentModelList[index].name.toString()),
    Text(HomeScreenController.studentModelList[index].place.toString()),
    Text(HomeScreenController.studentModelList[index].phn.toString()),
  ],
),        ), separatorBuilder: (context, index) => SizedBox(height: 20,), itemCount: HomeScreenController.studentModelList.length)
      ),
    );
  }
}
