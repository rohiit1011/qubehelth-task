class FeelingsModel{
  int id;
  String feelingInPercentage,feelingType,emoji,time;
  FeelingsModel({required this.time,required this.emoji,required this.feelingInPercentage,required this.feelingType,required this.id});


  static List<FeelingsModel> feelingList=[
    FeelingsModel(emoji: '🙂',feelingInPercentage: '30%',feelingType: 'Slightly smiling', time: '09 AM - 12 PM',id: 1,),
    FeelingsModel(emoji: '😀',feelingInPercentage: '10%',feelingType: 'Smiling face', time: '10 AM - 11 AM',id: 2, ),
    FeelingsModel(emoji: '😃',feelingInPercentage: '40%',feelingType: 'Smiling face with big eyes',  time: '09 AM - 12 PM',id: 3),
    FeelingsModel(emoji: '😐',feelingInPercentage: '60%',feelingType: 'Neutral face', time: '11 AM - 01 PM',id: 4, ),
    FeelingsModel(emoji: '🤐',feelingInPercentage: '50%',feelingType: 'Zipped mouth	',  time: '09 AM - 12 PM',id: 5,),
    FeelingsModel(emoji: '😑',feelingInPercentage: '20%',feelingType: 'Expressionless face',  time: '08 AM - 12 PM',id: 6),
    FeelingsModel(emoji: '😶',feelingInPercentage: '80%',feelingType: 'Face with no mouth',  time: '07 AM - 12 PM',id: 7),
    FeelingsModel(emoji: '😒',feelingInPercentage: '35%',feelingType: 'Unamused face',  time: '06 AM - 12 PM',id: 8),
    FeelingsModel(emoji: '😡',feelingInPercentage: '10%',feelingType: 'Pouting face',  time: '09 AM - 02 PM',id: 9),
    FeelingsModel(emoji: '😠',feelingInPercentage: '90%',feelingType: 'Angry face',  time: '09 AM - 03 PM',id: 10),
    FeelingsModel(emoji: '😈',feelingInPercentage: '22%',feelingType: 'Smiling face with horns',  time: '09 AM - 04 PM',id: 11),
    FeelingsModel(emoji: '🤣',feelingInPercentage: '08%',feelingType: 'Rolling on the floor laughing',  time: '03 PM - 05 PM',id: 12),
    FeelingsModel(emoji: '💀',feelingInPercentage: '09%',feelingType: 'Skull',  time: '09 AM - 12 PM',id: 13),
    FeelingsModel(emoji: '😁',feelingInPercentage: '70%',feelingType: 'Beaming face with smiling eyes',  time: '01 PM - 06 PM',id: 14),
  ];
}

