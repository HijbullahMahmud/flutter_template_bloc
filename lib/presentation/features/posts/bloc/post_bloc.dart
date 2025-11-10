import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_template/core/constants/api_endpoints.dart';
import 'package:flutter_bloc_template/domain/post/usecases/get_posts_usecase.dart';

import '../../../../domain/post/entities/post.dart';

part 'post_state.dart';
part 'post_event.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final GetPostsUsecase usecase;

  // List of posts
  List<Post> allPosts = [];

  PostBloc({required this.usecase}) : super(LoadingGetPostsState()) {
    on<OnGettingPostEvent>(_onGettingPostEvent);
  }

  // Getting posts event
  _onGettingPostEvent(
    OnGettingPostEvent event,
    Emitter<PostState> emitter,
  ) async {
    if (event.withLoading) {
      emitter(LoadingGetPostsState());
    }
    final result = await usecase.call(endPoint: ApiEndpoints.posts);
    result.fold(
      (error) {
        emitter(ErrorGetPostsState(message: error.message));
      },
      (r) {
        allPosts = r;
        emitter(SuccessGetPostsState(posts: allPosts));
      },
    );
  }
}
