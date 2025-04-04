import 'package:authorised_luminar_api_dec/model/employee_list_res_model.dart';
import 'package:authorised_luminar_api_dec/repository/helpers/api_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreenService {
  Future<ProductListResModel?> fetchProduct() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString("token");
    final response = await ApiHelper.getData(
        endpoint: "/products-all/",
        header: ApiHelper.header(token: token ?? ""));

    if (response != null) {
      ProductListResModel resModel = productsListResModelFromJson(response);

      return resModel;
    } else {
      return null;
    }
  }

  Future<ProductListResModel?> fetchMyProducts() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString("token");
    final response = await ApiHelper.getData(
        endpoint: "/my-products/",
        header: ApiHelper.header(token: token ?? ""));

    if (response != null) {
      ProductListResModel resModel = productsListResModelFromJson(response);

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
