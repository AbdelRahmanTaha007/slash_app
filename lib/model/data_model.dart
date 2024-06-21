class DataModel {
  List<BestSelling>? bestSelling;
  List<NewArrival>? newArrival;
  List<RecommendedForYou>? recommendedForYou;

  DataModel({this.bestSelling, this.newArrival, this.recommendedForYou});

  DataModel.fromJson(Map<String, dynamic> json) {
    if (json['bestSelling'] != null) {
      bestSelling = <BestSelling>[];
      json['bestSelling'].forEach((v) {
        bestSelling!.add(new BestSelling.fromJson(v));
      });
    }
    if (json['newArrival'] != null) {
      newArrival = <NewArrival>[];
      json['newArrival'].forEach((v) {
        newArrival!.add(new NewArrival.fromJson(v));
      });
    }
    if (json['recommendedForYou'] != null) {
      recommendedForYou = <RecommendedForYou>[];
      json['recommendedForYou'].forEach((v) {
        recommendedForYou!.add(new RecommendedForYou.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.bestSelling != null) {
      data['bestSelling'] = this.bestSelling!.map((v) => v.toJson()).toList();
    }
    if (this.newArrival != null) {
      data['newArrival'] = this.newArrival!.map((v) => v.toJson()).toList();
    }
    if (this.recommendedForYou != null) {
      data['recommendedForYou'] =
          this.recommendedForYou!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class RecommendedForYou {
  int? id;
  String? name;
  double? price;
  String? image;

  RecommendedForYou({this.id, this.name, this.price, this.image});

  RecommendedForYou.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['price'] = this.price;
    data['image'] = this.image;
    return data;
  }
}

class NewArrival {
  int? id;
  String? name;
  double? price;
  String? image;

  NewArrival({this.id, this.name, this.price, this.image});

  NewArrival.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['price'] = this.price;
    data['image'] = this.image;
    return data;
  }
}

class BestSelling {
  int? id;
  String? name;
  double? price;
  String? image;

  BestSelling({this.id, this.name, this.price, this.image});

  BestSelling.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['price'] = this.price;
    data['image'] = this.image;
    return data;
  }
}
