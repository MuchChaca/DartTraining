import 'package:pageloader/objects.dart';
import 'dart:async';

class AppPO {

  @ByTagName('h1')
  Lazy<PageLoaderElement> _getH1;


  Future<PageLoaderElement> get h1 => _getH1();

}
