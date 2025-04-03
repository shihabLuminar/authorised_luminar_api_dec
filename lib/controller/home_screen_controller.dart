import 'dart:developer';

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
      final response = await HomeScreenService().fetchProduct();
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

  Future<void> fetchMyProducts() async {
    isLoading = true;
    notifyListeners();
    try {
      final response = await HomeScreenService().fetchMyProducts();

      if (response != null) {
        print("my data fetched");
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

  Future<void> deleteEmployee({required String id}) async {
    log("deleteEmployee called with id: $id");
    isLoading = true;
    notifyListeners();
    final response = await HomeScreenService().deleteProduct(productId: id);

    if (response == true) {
      print("Employee deleted successfully");
      await fetchEmployees();
    } else {
      print("Error deleting employee");
    }
    isLoading = false;
    notifyListeners();
  }
}
