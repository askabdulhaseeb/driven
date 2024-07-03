import '../../../../core/enums/goal_type.dart';
import '../../domain/goal_entity.dart';

List<GoalEntity> dummyGoals = <GoalEntity>[
  GoalEntity(
    goal: 'Volunteer at a local charity',
    motivation: 'I want to give back to the community',
    reward: 'I will make a positive impact on others',
    deadline: DateTime.now(),
    goalType: GoalType.social,
  ),
  GoalEntity(
    goal: 'Organize a community event',
    motivation: 'I want to bring people together',
    reward: 'I will strengthen community bonds',
    deadline: DateTime.now(),
    goalType: GoalType.social,
  ),
  GoalEntity(
    goal: 'Join a professional networking group',
    motivation: 'I want to expand my professional network',
    reward: 'I will have access to new opportunities',
    deadline: DateTime.now(),
    goalType: GoalType.social,
  ),
  GoalEntity(
    goal: 'Learn Redux',
    motivation: 'I want to learn Redux',
    reward: 'I will buy a new computer',
    deadline: DateTime.now(),
    goalType: GoalType.professional,
  ),
  GoalEntity(
    goal: 'Build a portfolio website',
    motivation: 'I want to showcase my work',
    reward: 'I will get more job opportunities',
    deadline: DateTime.now(),
    goalType: GoalType.professional,
  ),
  GoalEntity(
    goal: 'Contribute to open-source projects',
    motivation: 'I want to give back to the community',
    reward: 'I will gain recognition and improve my skills',
    deadline: DateTime.now(),
    goalType: GoalType.professional,
  ),
  GoalEntity(
    goal: 'Improve my problem-solving skills',
    motivation: 'I want to become a better programmer',
    reward: 'I will be able to tackle complex challenges',
    deadline: DateTime.now(),
    goalType: GoalType.personal,
  ),
  GoalEntity(
    goal: 'Learn a new programming language',
    motivation: 'I want to expand my skillset',
    reward: 'I will increase my job prospects',
    deadline: DateTime.now(),
    goalType: GoalType.personal,
  ),
  GoalEntity(
    goal: 'Start a blog',
    motivation: 'I want to share my knowledge',
    reward: 'I will improve my writing skills',
    deadline: DateTime.now(),
    goalType: GoalType.personal,
  ),
  GoalEntity(
    goal: 'Learn machine learning',
    motivation: 'I want to explore the field of AI',
    reward: 'I will be able to develop intelligent systems',
    deadline: DateTime.now(),
    goalType: GoalType.professional,
  ),
  GoalEntity(
    goal: 'Travel to at least 5 countries',
    motivation: 'I want to experience different cultures',
    reward: 'I will broaden my horizons',
    deadline: DateTime.now(),
    goalType: GoalType.personal,
  ),
  GoalEntity(
    goal: 'Read 20 books',
    motivation: 'I want to expand my knowledge',
    reward: 'I will gain new perspectives',
    deadline: DateTime.now(),
    goalType: GoalType.personal,
  ),
];
