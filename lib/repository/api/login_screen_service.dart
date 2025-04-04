import 'package:authorised_luminar_api_dec/model/login_res_model.dart';
import 'package:authorised_luminar_api_dec/repository/helpers/api_helper.dart';

class LoginScreenService {
  Future<LoginResModel?> login({required Map<String, dynamic> body}) async {
    final response = await ApiHelper.postData(
      endpoint: "/login",
      body: body,
    );

    if (response != null) {
      LoginResModel resModel = loginResModelFromJson(response);

      return resModel;
    } else {
      return null;
    }
  }
}
