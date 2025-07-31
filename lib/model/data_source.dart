import 'package:boost_seller/model/data_model.dart';

abstract class IDataSource {
  List<DataModel> getItems();
}
