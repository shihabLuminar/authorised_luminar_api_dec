import 'package:authorised_luminar_api_dec/model/employee_list_res_model.dart';
import 'package:authorised_luminar_api_dec/repository/api/home_screen_service.dart';
import 'package:flutter/material.dart';

class HomeScreenController with ChangeNotifier {
  bool isLoading = false;
  List<EmployeeModel> employeeList = [];

  Future<void> fetchEmployees() async {
    isLoading = true;
    notifyListeners();
    try {
      final response = await HomeScreenService().fetchEmployees();
      if (response != null) {
        print("Data fetched successfully");
        employeeList = response.employeeList ?? [];
      } else {
        print("No data found");
      }
    } catch (e) {
      print("Error fetching employees: $e");
    }
    isLoading = false;
    notifyListeners();
  }
}
