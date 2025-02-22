




const assetPath = 'assets/images';

enum InputType{
  rock,
  scissors,
  paper;

  String get path => '$assetPath/$name.png';
}

enum Result{
  win('Player 승리!!!'),
  draw('무승부'),
  defeat('Player 패배...');

  const Result(this.displayString);

  final String displayString;
}