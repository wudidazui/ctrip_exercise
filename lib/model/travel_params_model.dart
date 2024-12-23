class TravelParamsModel {
  String? url;
  List<TravelTab>? tabs;
  Map? params;
  TravelParamsModel({this.url, this.tabs, this.params});

  TravelParamsModel.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    if (json['tabs'] != null) {
      tabs = [];
      json['tabs'].forEach((v) {
        tabs?.add(new TravelTab.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    if (this.tabs != null) {
      data['tabs'] = this.tabs?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TravelTab {
  String? labelName;
  String? groupChannelCode;

  TravelTab({this.labelName, this.groupChannelCode});

  TravelTab.fromJson(Map<String, dynamic> json) {
    labelName = json['labelName'];
    groupChannelCode = json['groupChannelCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['labelName'] = this.labelName;
    data['groupChannelCode'] = this.groupChannelCode;
    return data;
  }
}
