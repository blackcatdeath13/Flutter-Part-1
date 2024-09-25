import 'dart:io';

// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../data/datasources/lagu_remote_datasource.dart';

class AddLaguPage extends StatefulWidget {
  const AddLaguPage({super.key});

  @override
  State<AddLaguPage> createState() => _AddLaguPageState();
}

class _AddLaguPageState extends State<AddLaguPage> {
  final TextEditingController judulController = TextEditingController();
  final TextEditingController laguController = TextEditingController();
  final TextEditingController daerahController = TextEditingController();

  XFile? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Lagu')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          TextField(
            decoration: const InputDecoration(
              hintText: 'Judul',
            ),
            controller: judulController,
          ),
          TextField(
            decoration: const InputDecoration(
              hintText: 'Lagu',
            ),
            maxLines: 4,
            controller: laguController,
          ),
          TextField(
            decoration: const InputDecoration(
              hintText: 'Daerah',
            ),
            controller: daerahController,
          ),
          const SizedBox(height: 12),
          image != null
              ? SizedBox(
                  height: 80,
                  child: Image.file(File(image!.path)),
                )
              : const SizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  final ImagePicker picker = ImagePicker();

                  image = await picker.pickImage(source: ImageSource.gallery);
                  setState(() {});
                },
                child: const Text('Upload Gambar'),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 150,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel'),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              SizedBox(
                width: 150,
                child: ElevatedButton(
                  onPressed: () async {
                    if (image == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Gambar wajib diisi'),
                          backgroundColor: Colors.red,
                        ),
                      );
                      return;
                    }

                    await LaguRemoteDatasource().addLaguDaerah(
                      judulController.text,
                      laguController.text,
                      daerahController.text,
                      image!,
                    );
                    judulController.clear();
                    laguController.clear();
                    daerahController.clear();
                    image == null;
                    //await _refreshPage();

                    Navigator.pop(context);
                  },
                  child: const Text('Add'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
