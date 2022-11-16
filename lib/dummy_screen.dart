import 'package:flutter/material.dart';

class DummyScreen extends StatelessWidget {
  const DummyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dummy Screen'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(children: [
          TextFormField(
            decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Input your email',
                errorText: 'Email required!'),
          ),
          SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Input your email',
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Submit',
            ),
          ),
        ]),
      ),
    );
  }
}
