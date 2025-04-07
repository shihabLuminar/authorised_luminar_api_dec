import 'package:authorised_luminar_api_dec/app_utils/app_utils.dart';
import 'package:authorised_luminar_api_dec/model/employee_list_res_model.dart';
import 'package:authorised_luminar_api_dec/repository/helpers/api_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreenService {
  Future<ProductListResModel?> fetchProduct() async {
    String? token = await AppUtils.getAccessToken();
    final response = await ApiHelper.getData(
        endpoint: "/products-all/",
        header: ApiHelper.header(token: token ?? ""));

    if (response != null) {
      ProductListResModel resModel = productsListResModelFromJson(response);
      AppUtils.printData(resModel.msg.toString());
      AppUtils.printData(resModel.employeeList.toString());

      return resModel;
    } else {
      return null;
    }
  }

  Future<ProductListResModel?> fetchMyProducts() async {
    String? token = await AppUtils.getAccessToken();
    final response = await ApiHelper.getData(
        endpoint: "/my-products/",
        header: ApiHelper.header(token: token ?? ""));

    if (response != null) {
      ProductListResModel resModel = productsListResModelFromJson(response);
      AppUtils.printData(resModel.msg.toString());
      AppUtils.printData(resModel.employeeList.toString());

      return resModel;
    } else {
      return null;
    }
  }

  Future<bool?> deleteProduct({required String productId}) async {
    final response =
        await ApiHelper.deleteData(endpoint: "/product-delete/$productId/");

    if (response != null) {
      AppUtils.printData("product deleted successfully");

      return true;
    } else {
      AppUtils.printData("product deleted failed");
      return false;
    }
  }
}
