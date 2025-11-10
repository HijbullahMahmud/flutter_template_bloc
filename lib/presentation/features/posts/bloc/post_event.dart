part of 'post_bloc.dart';

abstract class PostEvent {
  const PostEvent();
}

// On Fetching posts event
class OnGettingPostEvent extends PostEvent {
  final bool withLoading;

  OnGettingPostEvent({this.withLoading = true});
}
