import 'package:flutter/material.dart';
import 'package:instagram_clone/screen/home.dart';
import 'dart:math';

final feedDataList = [
  FeedData(userName: 'User 1',likeCount: 14,content: '오늘 점심은 맛있었다. 유저가 많은 양의 글을 적어서 글자가 한 줄을 넘게 된다면 어떻게 처리되는지 알아봐야 하기 때문에, 어쩔수 없이 이 내용은 매우 길게 작성이 될 예정입니다.'),
  FeedData(userName: 'User 2',likeCount: 32,content: '오늘 저녁은 맛있었다.'),
  FeedData(userName: 'User 3',likeCount: 50,content: '오늘 아침은 맛있었다.'),
  FeedData(userName: 'User 4',likeCount: 176,content: '오늘은 아무것도 안했다.'),
  FeedData(userName: 'User 5',likeCount: 39,content: '오늘의 운동 완료'),
  FeedData(userName: 'User 6',likeCount: 50,content: '적당한 내용의 피드'),
  FeedData(userName: 'User 7',likeCount: 84,content: '나는 인스타를 안하니 잘 모르겠다.'),
  FeedData(userName: 'User 8',likeCount: 49,content: 'sns는 왜 하는 것일까'),
  FeedData(userName: 'User 9',likeCount: 34,content: '그 이유는 난 모른다.'),
  FeedData(userName: 'User 10',likeCount: 76,content: '하지만 많은 사람들은 sns를 하더라'),
];

final gridItems = List.generate(30, (index) => Colors.green.shade300);

final Random random = Random(); // 랜덤 객체 생성
final gridItems2 = List.generate(30, (index) => Color.fromRGBO(
    random.nextInt(256), // R (0~255)
    random.nextInt(256), // G (0~255)
    random.nextInt(256), // B (0~255)
    1, // 불투명 (1 = 완전 불투명)
  ),
);