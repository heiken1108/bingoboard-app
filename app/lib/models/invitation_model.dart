class InvitationModel {
  String name;
  String admin;
  String mode;
  String length;
  int challengesAmount;
  int playersAmount;

  InvitationModel({
    required this.name,
    required this.admin,
    required this.mode,
    required this.length,
    required this.challengesAmount,
    required this.playersAmount,
  });

  static List<InvitationModel> getInvitations() {
    List<InvitationModel> invitations = [];
    //API-kall istedet for hardkodet data
    invitations.add(InvitationModel(
      name: 'Game 1',
      admin: 'Heiken',
      mode: '24-timers',
      length: '24h',
      challengesAmount: 16,
      playersAmount: 4,
    ));

    invitations.add(InvitationModel(
      name: 'Game 2',
      admin: 'Heiken',
      mode: '24-timers',
      length: '24h',
      challengesAmount: 16,
      playersAmount: 4,
    ));

    invitations.add(InvitationModel(
      name: 'Game 3',
      admin: 'Heiken',
      mode: '24-timers',
      length: '24h',
      challengesAmount: 16,
      playersAmount: 4,
    ));

    invitations.add(InvitationModel(
      name: 'Game 4',
      admin: 'Heiken',
      mode: '24-timers',
      length: '24h',
      challengesAmount: 16,
      playersAmount: 4,
    ));

    invitations.add(InvitationModel(
      name: 'Game 5',
      admin: 'Heiken',
      mode: '24-timers',
      length: '24h',
      challengesAmount: 16,
      playersAmount: 4,
    ));
    invitations.add(InvitationModel(
      name: 'Game 6',
      admin: 'Heiken',
      mode: '24-timers',
      length: '24h',
      challengesAmount: 16,
      playersAmount: 4,
    ));
    invitations.add(InvitationModel(
      name: 'Game 7',
      admin: 'Heiken',
      mode: '24-timers',
      length: '24h',
      challengesAmount: 16,
      playersAmount: 4,
    ));

    return invitations;
  }
}
