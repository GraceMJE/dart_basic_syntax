void main() {
  /// 비동기 프로그래밍_동기 & 비동기
  /// 동기: 모든 코드가 순차적으로 진행되는 형태
  /// 코드가 동시다발적으로 실행되서 순차적으로 보장할 수 없는 형태

  /// 1. async | await | Future :  1회 응답을 돌려받는 경우
  Future<void> todo (int second) async {
    await Future.delayed(Duration(seconds: second));
    print('TODO Done in $second seconds');
  }

  todo(3);
  todo(1);
  todo(5);


  /// 2. async* | yield | Stream : 지속적으로 응답을 돌려받는 경우
  Stream<int> todoTwo() async* {
    int counter = 0;
    while(counter <= 10) {
      counter++;
      await Future.delayed(Duration(seconds: 1));
      print('TODO is Running $counter');
      yield counter;
    }
    print('TODO is done');
  }
  todoTwo().listen((event) {});
}