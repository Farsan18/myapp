import 'package:get/get.dart';
import 'package:myapp/api%20integration/using%20http%20and%20getx/services/httpservices.dart';
class ProductController extends GetxController{
  var isLoading = true.obs;
  var productList = [].obs;

  @override
  void onInit(){
    loadProducts();
    super.onInit();
  }

  void loadProducts() async{
    try{
      isLoading(true);
      var products = await HttpService.fetchProducts();
      if(products!=null){
        productList.value=products;
      }
    }catch(e){
      print(e);
    }finally{
      isLoading(false);
    }
  }
}