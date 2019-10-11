
import 'model/post.dart';

class PostsProvider{
        static final List<Post> posts = [
                Post(profilePic: 'https://specials-images.forbesimg.com/imageserve/5d8bd74018444200084e889c/416x416.jpg?background=000000&cropX1=1339&cropX2=3743&cropY1=554&cropY2=2956', username: 'elonmusk',
                        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQHl85bBJ11qfQCeku_6SyIkijY8RyY9P5JeFeiOdq3zicf2dUO",
                        likes: 267,
                        hashtags: "#tesla #selfdriving #ElonIsTheGoat",
                        caption: 'Tesla new model released.',
                ),
                Post(profilePic: 'https://avatars2.githubusercontent.com/u/40769429?s=460&v=4', username: 'usman18',
                        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRqv7Xpt8-eCFgT92ki1My9ZJSZmVLqBmar1xWf7B24rjTZq4aq",
                        likes: 200,
                        caption: "This is going to be slightly longer caption. I don't know what to write though. I think it is long enough now.",
                        hashtags: '#hi #how #areyou?',
                ),
        ];
}