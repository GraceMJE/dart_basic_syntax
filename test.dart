void main() {
  /// 1. function, method 사용예제
  String text = "Hi, June";
  print(text);

  int num1 = 10;
  int num2 = 20;
  int sum = add(num1, num2);

  /// 2. 분기문과 반복문 예제
  /// (1) 분기문) 프로그램이 특정한 상황에서 일을 할지, 아니면 하지않고 넘길지
  ///        if-else문 || switch

  if(text == 'Hi, June') {
    print('True');
  } else {
    print('False');
  }

  int num = 500;

  switch(num) {
    case 1:
      print('Switch $num');
    case 2:
      print('Switch $num');
    case 3:
      print('Switch $num');
    case 4:
      print('Switch $num');
    case 5:
      print('Switch $num');
      print('Answer');
    case > 100:
      print('Wow, $num is a big number!');
    default:
      print('It is Not 1~5');
  }

  /// (2) 반복문
  /// for | for (단일변수) in (collection_List|Set|Map)
  /// while | do-while | continue-break

  for (int i = 0; i < 10; i++) {
    print('Running For Index $i');
  }

  List<int> indexes = [0,1,2,3,4,5];
  for (final index in indexes) {
    print('Running For Index $index');
  }

  // bool isRunning = true;
  int count = 0;

  while (true) {
    if(count >= 5) {
      break;
    }
    count++;
    print('While is Running');
  }

  int number = 0;
  do {
    number++;
    if(number == 4) {
      continue;
    }
    print('Running DO-WHILE $number');
  } while (number < 10);

  /// 3.예외처리
  /// 프로그램 진행 중에 의도와 상관없이 오류 발생했을 때
  /// try-catch-finally | try-on | throw/rethrow

  int num3 = 10;
  try {
    /// 예외발생 예상 코드
    print(10 ~/ 0);
  } catch(error, stack) {
    /// 예외발생 시 실행코드
    print(error);
    print(stack);
  } finally {
    /// 예외발생 여부와 상관없이 try, catch문 이후 실행되는 코드
    print('예외처리문 Bye🖐');
  }
  print('에러 발생!');

  int? numHa;
  try {
    print(numHa!);
  } on UnsupportedError catch(e, s) {
    print('~/ 해당 영산자는 0으로 나눌 수 없습니다.');
  } on TypeError catch(e, s) {
    print('Null 값이 참조 되었습니다.');
  } catch(e, s) {
    print('모르는 에러 발생');
  }

  try {
    throw Exception('UnKnown Error');
  } on UnsupportedError catch(e, s) {
    print('~/ 해당 영산자는 0으로 나눌 수 없습니다.');
  } on TypeError catch(e, s) {
    print('Null 값이 참조 되었습니다.');
  } catch(e, s) {
    rethrow;
  }

}

int add(int firstNum, int secondNum) {
  return firstNum + secondNum;
}