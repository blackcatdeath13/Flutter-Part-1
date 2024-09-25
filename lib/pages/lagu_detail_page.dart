// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_lagu_daerah_app/data/datasources/lagu_remote_datasource.dart';
import 'package:flutter_lagu_daerah_app/data/models/lagu_response_model.dart';
import 'package:flutter_lagu_daerah_app/pages/beer_list_view.dart';
import 'package:image_picker/image_picker.dart';

//import 'package:flutter_lagu_daerah_app/data/models/province.dart';

class LaguDetailPage extends StatefulWidget {
  final Lagu lagu;
  const LaguDetailPage({
    super.key,
    required this.lagu,
  });

  @override
  State<LaguDetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<LaguDetailPage> {
  final TextEditingController judulController = TextEditingController();
  final TextEditingController laguController = TextEditingController();
  final TextEditingController daerahController = TextEditingController();

  XFile? image;

  @override
  void initState() {
    judulController.text = widget.lagu.judul;
    laguController.text = widget.lagu.lagu;
    daerahController.text = widget.lagu.daerah; // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.lagu.judul,
            style: const TextStyle(color: Colors.white)),
        centerTitle: true,
        elevation: 2,
        backgroundColor: const Color.fromARGB(255, 80, 132, 175),
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Delete Lagu'),
                        content: const Text(
                            'Apakah anda yakin untuk menghapus lagu ini?'),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Tidak')),
                          ElevatedButton(
                              onPressed: () async {
                                await LaguRemoteDatasource()
                                    .deleteLaguDaerah(widget.lagu.id);
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const BeerListView();
                                }));
                              },
                              child: const Text('Ya')),
                        ],
                      );
                    });
              },
              icon: const Icon(Icons.delete_forever)),
          const SizedBox(
            width: 4,
          ),
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) {
                  return StatefulBuilder(
                    builder: (context, setState) {
                      return AlertDialog(
                        title: const Text('Edit New Lagu'),
                        content: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
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
                              widget.lagu.imageUrl != null && image == null
                                  ? SizedBox(
                                      height: 80,
                                      child: Image.network(
                                          '${LaguRemoteDatasource.imageUrl}/${widget.lagu.imageUrl}'),
                                    )
                                  : const SizedBox(),
                              image != null
                                  ? SizedBox(
                                      height: 80,
                                      child: Image.file(File(image!.path)),
                                    )
                                  : const SizedBox(),
                              //upload image
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () async {
                                      final ImagePicker picker = ImagePicker();
                                      // Pick an image.
                                      image = await picker.pickImage(
                                          source: ImageSource.gallery);
                                      setState(() {});
                                    },
                                    child: const Text('Upload Gambar'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Cancel'),
                          ),
                          TextButton(
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
                              //add new lagu
                              await LaguRemoteDatasource().updateLaguDaerah(
                                widget.lagu.id,
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
                              //setState(() {});
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return const BeerListView();
                              }));
                            },
                            child: const Text('Update'),
                          ),
                        ],
                      );
                    },
                  );
                },
              );
            },
            icon: const Icon(Icons.edit),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            widget.lagu.judul,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            widget.lagu.daerah,
            textAlign: TextAlign.center,
          ),
          widget.lagu.imageUrl == null
              ? const SizedBox()
              : Image.network(
                  '${LaguRemoteDatasource.imageUrl}/${widget.lagu.imageUrl!}',
                  height: 300,
                ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Text(
              widget.lagu.lagu,
              textAlign: TextAlign.left,
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
