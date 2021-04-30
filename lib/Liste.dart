import 'package:flutter/material.dart';
import 'package:cooklist/Görevler.dart';
import 'package:cooklist/GörevEkle.dart';
import 'package:cooklist/ListeDizayn.dart';
import 'package:flutter/widgets.dart';

class Liste extends StatefulWidget {
  @override
  _ListeState createState() => _ListeState();
}

class _ListeState extends State<Liste> {
  List<Task> taskList = [
    Task(taskName: "Markete Git", isDone: false),
    Task(taskName: "Mutfağı hazırla", isDone: false,),
    Task(taskName: "Yemeği hazırla", isDone: false)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yapılacaklar ",textScaleFactor: 1.5,
            style: TextStyle(fontWeight: FontWeight.w600)
                .apply(color: Colors.yellow)),
        flexibleSpace: Image(
          image: NetworkImage("https://images.pexels.com/photos/276514/pexels-photo-276514.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          fit:BoxFit.cover,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () async {
          String newTaskName = await showModalBottomSheet(
              context: context,
              builder: (context) {
                return AddTaskScreen();
              });
          setState(() {
            taskList.add(Task(taskName: newTaskName, isDone: false));
          });
        },
        child: Icon(Icons.add),
      ),
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://images.pexels.com/photos/4300394/pexels-photo-4300394.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                padding: EdgeInsets.only(top: 60, left: 50, right: 100, bottom: 60),
                child: Text("${taskList.length} adet görev vardır.",textScaleFactor: 2,
    style: TextStyle(fontWeight: FontWeight.bold)
        .apply(color: Colors.teal[900])),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://images.pexels.com/photos/4464438/pexels-photo-4464438.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
                        ),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(color: Colors.teal),
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.all(10),
                  padding:
                  EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 70),
                  height: double.minPositive,
                  width: 500,
                  child: ListView.builder(
                      itemCount: taskList.length,
                      itemBuilder: (context, index) {
                        return TaskListTile(
                          item: taskList[index],
                          onTaskStatusChange: (bool val) {
                            setState(() {
                              taskList[index].isDone = val;
                            });
                          },
                          onDelete: () {
                            setState(() {
                              taskList.removeAt(index);
                            });
                          },
                        );
                      }),
                ),
              )
            ],
          )),
    );
  }
}
