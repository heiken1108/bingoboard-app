class GameModel {
  String id;
  String name;
  String admin;
  String mode;
  int hoursRemaining;
  int minutesRemaining;
  int challengesAmount;
  int challengesCompleted;
  int playersAmount;
  bool isActive;

  GameModel({
    required this.id,
    required this.name,
    required this.admin,
    required this.mode,
    required this.hoursRemaining,
    required this.minutesRemaining,
    required this.challengesAmount,
    required this.challengesCompleted,
    required this.playersAmount,
    required this.isActive,
  });

  static List<GameModel> getGames() {
    List<GameModel> games = [];
    //API-kall istedet for hardkodet data
    games.add(GameModel(
      id: '1',
      name: 'Game 1',
      admin: 'Heiken',
      mode: '24-timers',
      hoursRemaining: 24,
      minutesRemaining: 0,
      challengesAmount: 16,
      challengesCompleted: 4,
      playersAmount: 4,
      isActive: true,
    ));

    games.add(GameModel(
      id: '2',
      name: 'Game 2',
      admin: 'Heiken',
      mode: '24-timers',
      hoursRemaining: 24,
      minutesRemaining: 0,
      challengesAmount: 16,
      challengesCompleted: 4,
      playersAmount: 4,
      isActive: true,
    ));

    games.add(GameModel(
      id: '3',
      name: 'Game 3',
      admin: 'Heiken',
      mode: '24-timers',
      hoursRemaining: 24,
      minutesRemaining: 0,
      challengesAmount: 16,
      challengesCompleted: 4,
      playersAmount: 4,
      isActive: true,
    ));

    games.add(GameModel(
      id: '4',
      name: 'Game 4',
      admin: 'Heiken',
      mode: '24-timers',
      hoursRemaining: 24,
      minutesRemaining: 0,
      challengesAmount: 16,
      challengesCompleted: 4,
      playersAmount: 4,
      isActive: true,
    ));

    games.add(GameModel(
      id: '5',
      name: 'Game 5',
      admin: 'Heiken',
      mode: '24-timers',
      hoursRemaining: 24,
      minutesRemaining: 0,
      challengesAmount: 16,
      challengesCompleted: 4,
      playersAmount: 4,
      isActive: true,
    ));

    return games;
  }
}
