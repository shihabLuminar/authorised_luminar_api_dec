import 'package:authorised_luminar_api_dec/app_confg/app_config.dart';
import 'package:authorised_luminar_api_dec/model/employee_list_res_model.dart';
import 'package:authorised_luminar_api_dec/repository/helpers/api_helper.dart';
import 'package:http/http.dart' as http;

class HomeScreenService {
  Future<ProductListResModel?> fetchProduct() async {
    final response = await ApiHelper.getData(endpoint: "/products-all/");

    if (response != null) {
      ProductListResModel resModel = employeeListResModelFromJson(response);

      return resModel;
    } else {
      return null;
    }
  }

  Future<bool?> deleteProduct({required String productId}) async {
    final response =
        await ApiHelper.deleteData(endpoint: "/product-delete/$productId/");

    if (response != null) {
      return true;
    } else {
      return false;
    }
  }
}
