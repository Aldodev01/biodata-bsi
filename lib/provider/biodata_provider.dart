import 'package:biodata/provider/biodata_model.dart';
import 'package:flutter/material.dart';

class BiodataProvider extends ChangeNotifier {
  List<BiodataModel> biodataList = [];

  void addBiodata(BiodataModel biodata) {
    biodataList.add(biodata);
    notifyListeners();
  }
}