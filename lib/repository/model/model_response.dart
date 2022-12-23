class ModelResponse {
  int? errorcode;
  String? errormsg;

  ModelResponse({this.errorcode, this.errormsg});

  ModelResponse.fromJson(Map<String, dynamic> json) {
    errorcode = json['errorcode'];
    errormsg = json['errormsg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['errorcode'] = this.errorcode;
    data['errormsg'] = this.errormsg;
    return data;
  }
}