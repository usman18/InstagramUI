import 'package:flutter/material.dart';
import 'package:insta_ui/model/post.dart';

import '../posts_provider.dart';

class UserFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, position) {
        Post post = PostsProvider.posts[position];

        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(post.profilePic,),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      post.username,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Container(
                          //Free space
                          ),
                    ),
                    Icon(
                      Icons.more_horiz,
                    ),
                  ],
                ),
              ),
              FittedBox(
                child: Image.network(
                  post.imageUrl,
                ),
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.only(top : 8.0, bottom: 8.0, left: 4, right: 4),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Icon(
                        Icons.favorite_border,
                        size: 25,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Icon(
                        Icons.comment,
                        size: 25,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Icon(
                        Icons.near_me,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12,),
                child: Text('${post.likes} likes',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal : 12,),
                child: Text(post.caption,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                   ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                child: Text(post.hashtags,
                  style: TextStyle(
                    color: Colors.blue[800],
                  ),
                ),
              ),
              Divider(
              ),
            ],
          ),
        );
      },
      itemCount: PostsProvider.posts.length,
    );
  }
}
