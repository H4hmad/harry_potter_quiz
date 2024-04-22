class QuizQuestion {
  const QuizQuestion(this.questionText, this.answerList);

  final String questionText;
  final List<String> answerList;

  List<String> getShuffledAnswerList() {
    final shuffledAnswersList = List.of(answerList);
    shuffledAnswersList.shuffle();
    return shuffledAnswersList;
  }
}
