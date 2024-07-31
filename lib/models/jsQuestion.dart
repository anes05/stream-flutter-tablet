class ExternalQuestion {
  String? id;
  String? question;
  List<Options>? options;
  String? iconUrl;

  ExternalQuestion({this.id, this.question, this.options, this.iconUrl});

  ExternalQuestion.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    question = json['question'];
    if (json['options'] != null) {
      options = <Options>[];
      json['options'].forEach((v) {
        options!.add(new Options.fromJson(v));
      });
    }
    iconUrl = json['iconUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['question'] = this.question;
    if (this.options != null) {
      data['options'] = this.options!.map((v) => v.toJson()).toList();
    }
    data['iconUrl'] = this.iconUrl;
    return data;
  }
}

class Options {
  String? choice;
  bool? correct;

  Options({this.choice, this.correct});

  Options.fromJson(Map<String, dynamic> json) {
    choice = json['choice'];
    correct = json['correct'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['choice'] = this.choice;
    data['correct'] = this.correct;
    return data;
  }
}