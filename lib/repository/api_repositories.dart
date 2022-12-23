import 'package:base_project/repository/api.dart';
import 'package:base_project/repository/model/model_response.dart';
import 'package:base_project/repository/response_handler/network_exceptions.dart';

abstract class ApiRepositories {
  Future<ModelResponse> request({required String status});
}

class ApiRepositoriesImpl extends ApiRepositories {
  @override
  Future<ModelResponse> request({required String status}) async {
    var params = {"status": status};
    try {
      final response = await Api().request(
          RequestType.POST, params, 'get_validations_by_bowheer_code',
          isJson: true);
      return ModelResponse.fromJson(response.data);
    } catch (e) {
      throw NetworkExceptions.getErrorMessage(
          NetworkExceptions.getDioException(e));
    }
  }
}
