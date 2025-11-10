import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_template/core/di/dependency_injection.dart';
import 'package:flutter_bloc_template/domain/post/entities/post.dart';
import 'package:flutter_bloc_template/domain/post/usecases/get_posts_usecase.dart';
import 'package:flutter_bloc_template/presentation/features/posts/bloc/post_bloc.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  final PostBloc _bloc = PostBloc(usecase: injector.get<GetPostsUsecase>());
  List<Post> allPosts = [];

  loadPosts({bool withLoading = true}) {
    _bloc.add(OnGettingPostEvent(withLoading: withLoading));
  }

  @override
  void initState() {
    loadPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Posts")),
      body: BlocConsumer<PostBloc, PostState>(
        bloc: _bloc,
        builder: (context, state) {
          if (state is LoadingGetPostsState) {
            return Center(child: CircularProgressIndicator());
          } else if (state is ErrorGetPostsState) {
            return Center(child: Text("Erorr: ${state.message}"));
          }
          //Check it there is no data
          if (allPosts.isEmpty) {
            return Center(child: Text("Empty"));
          }

          return ListView.builder(
            itemCount: allPosts.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              final post = allPosts[index];
              return ListTile(
                leading: Text("${post.id}"),
                title: Text(post.title),
                subtitle: Text(post.body),
              );
            },
          );
        },
        listener: (context, state) {
          if (state is SuccessGetPostsState) {
            allPosts.clear();
            allPosts = List.from(state.posts);
          }
        },
      ),
    );
  }
}
