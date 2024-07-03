enum GoalType {
  career('career', 'Career'),
  finance('finance', 'Finance'),
  health('health', 'Health'),
  personal('personal', 'Personal'),
  relationship('relationship', 'Relationship'),
  social('social', 'Social'),
  spiritual('spiritual', 'Spiritual'),
  trvel('trvel', 'Travel'),
  other('other', 'Other');

  const GoalType(this.json, this.display);
  final String json;
  final String display;
}
