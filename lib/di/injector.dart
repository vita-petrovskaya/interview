import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:interview/product/product_api.dart';

final Injector injector = ModuleContainer().initialise(Injector());

class ModuleContainer {
  Injector initialise(Injector injector) {
    //REPOSITORIES
    injector.map<ProductApi>((i) => ProductApi(), isSingleton: true);

    return injector;
  }


}