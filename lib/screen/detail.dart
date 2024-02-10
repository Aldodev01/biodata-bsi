import 'package:biodata/provider/biodata_model.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final BiodataModel biodata;

  const DetailScreen({super.key, required this.biodata});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Biodata'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('NIM: ${biodata.nim}'),
            Text('Nama: ${biodata.nama}'),
            Text('Email: ${biodata.email}'),
          ],
        ),
      ),
    );
  }
}