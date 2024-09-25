//import 'dart:convert';

import 'package:flutter_lagu_daerah_app/data/models/lagu_response_model.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

class LaguRemoteDatasource {
  //final String baseUrl = 'https://belajarfullstack.online';
  final String baseUrl = 'http://192.168.1.6:8000';
  static String imageUrl = 'https://192.168.1.6:8000/storage/images';

  Future<LaguResponseModel> getLaguDaerah() async {
    final response = await http.get(Uri.parse('$baseUrl/api/lagudaerah'));
    if (response.statusCode == 200) {
      return LaguResponseModel.fromJson(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<LaguResponseModel> getLaguDaerahPages(int page) async {
    final response = await http.get(Uri.parse('$baseUrl/api/lagudaerah'));
    if (response.statusCode == 200) {
      return LaguResponseModel.fromJson(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<void> addLaguDaerah(
    String judul,
    String lagu,
    String daerah,
    XFile image,
  ) async {
    var request =
        http.MultipartRequest('POST', Uri.parse('$baseUrl/api/lagudaerah'));

    request.files.add(await http.MultipartFile.fromPath('image', image.path));
    request.fields.addAll({
      'judul': judul,
      'lagu': lagu,
      'daerah': daerah,
    });
    request.headers.addAll({
      'Content-Type': 'application/json',
    });

    http.StreamedResponse response = await request.send();

    if (response.statusCode != 201) {
      throw Exception('Failed to add data');
    }
  }

  Future<void> updateLaguDaerah(
    int id,
    String judul,
    String lagu,
    String daerah,
    XFile image,
  ) async {
    var request =
        http.MultipartRequest('POST', Uri.parse('$baseUrl/api/lagudaerah/$id'));

    request.files.add(await http.MultipartFile.fromPath('image', image.path));
    request.fields.addAll({
      'judul': judul,
      'lagu': lagu,
      'daerah': daerah,
    });
    request.headers.addAll({
      'Content-Type': 'application/json',
    });

    http.StreamedResponse response = await request.send();
    if (response.statusCode != 200) {
      throw Exception('Failed to add data');
    }
  }

  //delete lagu
  Future<void> deleteLaguDaerah(int id) async {
    final response =
        await http.delete(Uri.parse('$baseUrl/api/lagudaerah/$id'));
    if (response.statusCode != 204) {
      throw Exception('Failed to add data');
    }
  }
}
