import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // app start aagum
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FormPage(), // first screen
    );
  }
}

class FormPage extends StatefulWidget {
  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final formKey = GlobalKey<FormState>(); // form control

  TextEditingController nameController =
  TextEditingController(); // name input store

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              // Name input
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: "Enter Name",
                ),

                // validation
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Name required";
                  }
                  return null;
                },
              ),

              SizedBox(height: 20),

              // Button
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    print("Form OK"); // success
                  }
                },
                child: Text("Submit"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
