import 'package:authorised_luminar_api_dec/model/employee_list_res_model.dart';
import 'package:http/http.dart' as http;

class HomeScreenService {
  Future<EmployeeListResModel?> fetchEmployees() async {
    final url = Uri.parse("https://freeapi.luminartechnohub.com/products-all/");
    final response = await http.get(url, headers: {
      "Authorization":
          "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzQ2MTY2MzQ0LCJpYXQiOjE3NDM1NzQzNDQsImp0aSI6IjIxOGY5ZDk2OGU5NzQ0YzFiMmU4Mzg5ZmEzZjJmM2RmIiwidXNlcl9pZCI6MzYzLCJpZCI6MzYzLCJuYW1lIjoic2hpaGFiIiwicGxhY2UiOiJlcm5ha3VsYW0iLCJlbWFpbCI6InNoaWhhYjFAZ21haWwuY29tIn0.-8_YWcl2DV4TG33N8zqDeSyHmm83Aho1VRfkyaew56g"
    });

    if (response.statusCode == 200) {
      // Handle successful response
      print("Data fetched successfully");
      print(response.body.toString());

      EmployeeListResModel resModel =
          employeeListResModelFromJson(response.body);

      return resModel;
    } else {
      // Handle error response
      print(
          "Error fetching employees with status code: ${response.statusCode}");
      print(response.body.toString());
      return null;
    }
  }
}
