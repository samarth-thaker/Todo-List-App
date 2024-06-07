import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final TextEditingController dateController = TextEditingController();
  Future<void> _selectDate() async {
    DateTime? _picked = await showDatePicker(
        context: context, firstDate: DateTime(2024), lastDate: DateTime.now());
    if (_picked != null) {
      setState(() {
        dateController.text = _picked.toString().split(" ")[0];
      });
    }
  }

  void input(BuildContext context, String task) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return const AlertDialog(
            title: Text("Enter the task details"),
          
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tasks for today"),
      ),
      body: const Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            TextButton(onPressed: input, child: Text("Add task")),
            TextButton(onPressed: delete, child: Text("Delete task")),
          ],
        ),
      ),
    );
  }
}
