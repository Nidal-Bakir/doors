import 'package:bloc/bloc.dart';
import 'package:doors/core/errors/exception_base.dart';
import 'package:doors/core/features/post/model/post.dart';
import 'package:doors/features/manage_post/repository/manage_post_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

part 'manage_post_event.dart';
part 'manage_post_state.dart';
part 'manage_post_bloc.freezed.dart';

class ManagePostBloc extends Bloc<ManagePostEvent, ManagePostState> {
  final ManagePostsRepository _managePostsRepository;
  ManagePostBloc(this._managePostsRepository)
      : super(const ManagePostInitial()) {
    on<ManagePostEvent>((event, emit) async {
      await event.map(
          created: (event) async => await _onPostCreated(event, emit),
          edited: (event) async => await _onPostEdited(event, emit),
          deleted: (event) async => await _onPostDeleted(event, emit));
    });
  }

  Future<void> _onPostCreated(
      ManagePostCreated event, Emitter<ManagePostState> emit) async {
    emit(const ManagePostInProgress());
    final createPostResult =
        await _managePostsRepository.createPost(event.newPost);
    createPostResult.fold((error) => emit(ManagePostOperationFailure(error)),
        (_) => emit(const ManagePostCreateSuccuss()));

    // reset the bloc to its original state
    emit(const ManagePostInitial());
  }

  Future<void> _onPostDeleted(
      ManagePostDeleted event, Emitter<ManagePostState> emit) async {
    emit(const ManagePostInProgress());

    final deletePostResult =
        await _managePostsRepository.deletePost(event.post);
    deletePostResult.fold((error) => emit(ManagePostOperationFailure(error)),
        (_) => emit(const ManagePostDeleteSuccuss()));

    // reset the bloc to its original state
    emit(const ManagePostInitial());
  }

  Future<void> _onPostEdited(
      ManagePostEdited event, Emitter<ManagePostState> emit) async {
    emit(const ManagePostInProgress());

    final editPostResult = await _managePostsRepository.editPost(
      event.editPost,
      event.oldPostImage,
    );
    editPostResult.fold((error) => emit(ManagePostOperationFailure(error)),
        (_) => emit(const ManagePostEditSuccuss()));

    // reset the bloc to its original state
    emit(const ManagePostInitial());
  }
}
