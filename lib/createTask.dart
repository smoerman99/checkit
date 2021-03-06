import 'package:checkit/Widgets/HandleElevatedButton.dart';
import 'package:flutter/material.dart';
import 'Widgets/TextFormFieldWithStyling.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({Key key}) : super(key: key);

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  final _formKey = GlobalKey<FormState>();
  final _taskNameController = TextEditingController();

  String _errorMessage = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.orange,
            ),
            onPressed: () => Navigator.pop(context, false)),
        backgroundColor: Theme.of(context).backgroundColor,
        title: Text(
          "Create new Task",
          style: TextStyle(
              color: Theme.of(context).navigationBarTheme.backgroundColor),
        ),
      ),
      body: Container(
        color: Colors.black12,
        child: Column(
          children: [
            Container(
              height: 200,
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormFieldWithStyling(
                        taskNameController: _taskNameController),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HandleElevatedButton(
                              title: "Add",
                              textController: _taskNameController,
                              closePage: false,
                            ),
                            HandleElevatedButton(
                              title: "Add & Close",
                              textController: _taskNameController,
                              closePage: true,
                            )
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
