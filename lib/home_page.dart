import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_1st/home_controlar.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    print('click');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        leading: Icon(Icons.arrow_back_ios),
        title: Center(child: Text('Get_X',style: TextStyle(color: Colors.black),)),
      ),
      body: Center(
        child: Obx(()=>Text(homeController.number.toString()),)

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          homeController.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
