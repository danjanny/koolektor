import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:koolektor/vendor/presentation/manager/add_post_cubit/add_post_state.dart';
import 'package:koolektor/vendor/domain/entities/post.dart';

class AddPostCubit extends Cubit<AddPostState> {
  Post? _post;

  AddPostCubit() : super(InitialAddPostState());

  Future<void> saveState(Post? post) async {
    _post = post; // update _post state
  }

  Future<void> submitPost() async {}
}
