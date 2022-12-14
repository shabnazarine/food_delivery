class Product{
  int? _totalSize;
  int? _typeId;
  int? _offSet;
  late List<ProductModel> _products;
  List<ProductModel> get products=> _products;

  Product({required totalSize, typeId, offSet, required products}){
    this._totalSize = totalSize;
    this._typeId = typeId;
    this._offSet = offSet;
    this._products = products;
  }
  Product.fromJson(Map<String, dynamic>json){
    _totalSize = json['total_size'];
    _typeId = json['type_id'];
    _offSet = json['offset'];
    if(json['products']!=null){
      _products = <ProductModel>[];
      json['products'].forEach((v){
        _products!.add(ProductModel.fromJson(v));
      });
    }
  }
}

class ProductModel {
  int? id;
  String? name;
  String? description;
  int? price;
  int? star;
  String? image;
  String? location;
  String? createdAt;
  String? updatedAt;
  int? typeId;

  ProductModel({
    this.id,
    this.name,
    this.description,
    this.price,
    this.star,
    this.image,
    this.location,
    this.createdAt,
    this.updatedAt,
    this.typeId
});

  ProductModel.fromJson(Map<String, dynamic> json){
  id= json['id'];
  name= json['name'];
  description= json['description'];
  price= json['price'];
  star= json['star'];
  image= json['image'];
  location= json['location'];
  createdAt= json['created_at'];
  updatedAt= json['updated_at'];
  typeId= json['type_id'];
  }
}

