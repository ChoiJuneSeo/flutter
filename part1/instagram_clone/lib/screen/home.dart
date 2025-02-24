import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/mock.dart';
import 'package:instagram_clone/screen/UserStory.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              StoryArea(),
              FeedList(),
            ],
          ),
          const Placeholder(),
          const Placeholder(),
        ],
      ),
    );
  }
}

class StoryArea extends StatelessWidget {
  const StoryArea({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(10, (index) => UserStory(username: 'User ${index + 1}',)),
      ),
    );
  }
}

class FeedData{
  final String userName;
  final String content;
  final int likeCount;

  FeedData({required this.content, required this.likeCount, required this.userName});
}



class FeedList extends StatelessWidget {
  const FeedList({super.key});


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: feedDataList.length,
        itemBuilder: (context,index)=>FeedItem(feedData: feedDataList[index]));
  }
}

class FeedItem extends StatelessWidget {
  final FeedData feedData;
  const FeedItem({required this.feedData,super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(feedData.userName),
                      Text('@userTag'),

                    ],
                  ),
                ],
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
            ],
          ),
        ),
        Container(
          color: Colors.grey,
          width: double.infinity,
          height: 300,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              spacing: 3,
              children: [
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline)),
                    Text('4.360'),
                  ],
                ),
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.chat_bubble),hoverColor: Colors.red,),
                    Text('70'),
                  ],
                ),
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.paperplane)),
                    Text('3,983'),
                  ],
                ),
              ],
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.bookmark_outline)),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text('좋아요 ${feedData.likeCount}개',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 4),
          child: RichText(text: TextSpan(children: [
            TextSpan(text: feedData.userName,style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: ' '),
            TextSpan(text: feedData.content,),
          ],
            style: TextStyle(color: Colors.black,fontSize: 12)
          )),
        ),
        SizedBox(height: 8,)
      ],
    );
  }
}

