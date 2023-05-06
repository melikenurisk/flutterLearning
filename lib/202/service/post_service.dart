import 'dart:io';

import 'package:dio/dio.dart';
import 'package:full_learn/202/service/post_model.dart';

class PostService {
  final Dio _networkManager;
  PostService() : _networkManager = Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));

  Future<bool> addItemToService(PostModel postModel) async {
    final response = await _networkManager.post('posts', data: postModel);

    return response.statusCode == HttpStatus.created;
  }

  Future<List<PostModel>?> fetchPostItemsAdvance() async {
    try {} catch (e) {}
    final response = await _networkManager.get(_PostServicePaths.posts.name);

    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;

      if (_datas is List) {
        return _datas.map((e) => PostModel.fromJson(e)).toList();
      }
    }
    return null;
  }
}

enum _PostServicePaths { posts, comments }
