part of 'post_bloc.dart';

abstract class PostState {
  const PostState();
}

class PostsInitial extends PostState {}

class LoadingGetPostsState extends PostState {}

class ErrorGetPostsState extends PostState {
  final String message;

  ErrorGetPostsState({required this.message});
}

class SuccessGetPostsState extends PostState {
  final List<Post> posts;

  SuccessGetPostsState({required this.posts});
}
