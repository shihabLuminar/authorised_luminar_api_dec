import 'package:authorised_luminar_api_dec/controller/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        context.read<HomeScreenController>().fetchEmployees();
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final homecontroller = context.watch<HomeScreenController>();
    return Scaffold(
      appBar: AppBar(title: Text("Employees")),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text(homecontroller.employeeList[index].name ?? ""),
                subtitle: Text('Employee designation'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.edit),
                    ),
                    IconButton(
                      onPressed: () {
                        // write code to delete the employee from the list
                        context.read<HomeScreenController>().deleteEmployee(
                            id: homecontroller.employeeList[index].id
                                .toString());
                      },
                      icon: Icon(Icons.delete),
                    )
                  ],
                ),
              ),
          separatorBuilder: (context, index) => Divider(),
          itemCount: homecontroller.employeeList.length),
    );
  }
}
