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
    on<OnsearchingPostEvent>(_onSearchingEvent);
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
        emitter(SuccessGetPostsState(posts: _filterPosts(event.query)));
      },
    );
  }

  // Searching Posts event
  _onSearchingEvent(
    OnsearchingPostEvent event,
    Emitter<PostState> emitter,
  ) async {
    emitter(SearchingState(posts: _filterPosts(event.query)));
  }

  List<Post> _filterPosts(String query) {
    List<Post> results = [];
    if (query.isEmpty) {
      // If the search field is empty or only cotnains white-space, we'll display all users
      results = List.from(allPosts);
    } else {
      results = allPosts.where((post) {
        return (post.title).toLowerCase().contains(query.toLowerCase());
      }).toList();
    }

    return results;
  }
}
