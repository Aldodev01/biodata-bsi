import 'package:biodata/provider/biodata_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Biodata List'),
      ),
      body: const BiodataList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/input');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class BiodataList extends StatelessWidget {
  const BiodataList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BiodataProvider>(
      builder: (context, biodataProvider, child) {
        return ListView.builder(
          itemCount: biodataProvider.biodataList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(biodataProvider.biodataList[index].nama),
              onTap: () {
                Navigator.pushNamed(context, '/detail',
                    arguments: biodataProvider.biodataList[index]);
              },
            );
          },
        );
      },
    );
  }
}