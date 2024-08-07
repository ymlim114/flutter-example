import 'dart:async';

void main(){
  /*
  /// 함수 / 메서드
  /// 프로그래밍에서 가장 기본이 되는 단위 중 하나.
  /// 동작에 대한 단위
  /// 리턴 타입 함수명(매개변수){
  ///   함수내 동작 할 코드
  ///   }
  ///

  int num1 = 10;
  int num2 = 20;

  int sum = add(num1, num2);
  print(sum);

  /// 분기문과 반복문
  /// 분기문 : 프로그램이 특정한 상황에 일을 할 지 / 하지않고 넘길지
  /// if / else || switch
  ///
  /// if 문 / if - else 문
  ///

  bool isTrue = true;

  if(isTrue == true){
    print('True');
  } else {
    print('False');
  }

  if(isTrue != false){
    print('Not false');
  } else {
    print('False');
  }
  
  int stanard = 3;
  if (stanard < 0){
    print('여기는 찍히지 않음');
  } else if(stanard == 3) {
    print('여기는 찍혀야함.');
  } else {
    print('모두 거짓임.');
  }

  /// switch 문
  /// switch(비교대상) {
  ///   case (조건식1): 
  ///   case (조건식2):
  ///   case (조건식3):
  ///   default:
  /// }

  int num = 101;
  switch(num){
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
    /// Only Upper Dart 3.0 범위 조건식 가능
    case > 100:
      print('Wow big number!! $num');
    default:
      print('Not 1~5');
        
  }

  /// 분기문과 반복문
  /// for / for in / while / do-while
  /// continue / break
  ///
  /// for(기준변수; 조건식; 가변치){
  ///   조건식이 참일 경우 반복할 코드
  /// }
  ///

  for(int i = 0; i < 10; i++){
    print('Running For Index $i');
  }

  /// while (조건식) {
  ///   조건식이 참일 경우 실행 될 반복문
  /// }
  ///

  bool isRunning = true;
  int count = 0;

  while(isRunning) {
    if(count >= 5) {
      // break;
      isRunning = false;
    }
    count++;

    print('While is $count Running');
  }

  /// do-whild
  /// do {
  ///   선행 진행 / 반복 될 코드
  /// } while (조건);
  ///
  int inum = 0;
  do {
    inum++;

    if(inum == 4) {
      continue;
    }

    print('Running Do While $inum');
  } while (inum < 10);

  /// 예외처리 : 프로그램이 진행 중일 때. 의도하였거나 의도하지 않은 상황에 대해서
  /// 프로그램적으로 오류가 발생했을 때 대처하는 방법
  /// try-catch 문
  /// finaly 문
  /// on 문
  /// throw / rethrow 문
  ///

  int? num;
  try {
    // 예외가 발생할 것으로 예상되는 코드
    // print(10 ~/ 0); // 나누기 한 값의 몫
    // print(num!);
    throw Exception('Unknown Error');
  } on UnsupportedError catch (e, s) {
    print('~/ 해당 연산자는 0으로 나눌 수 없습니다.');
  } on TypeError catch(e, s){
    print('Null 값이 참조되었습니다.');
  } catch(error, stack){
    // 예외가 발생했을 경우 실행 하고자 하는 코드
    // print(error);
    // print(stack);
    rethrow;
  } finally {
    // 예외 발생 여부와 상관없이 try, catch 이후 실해하고자 하는 코드
    print('예외처리문을 지나쳤습니다.');
  }


  /// 비동기 / 동기성 프로그래밍
  /// 동기 : 모든 코드가 순차적으로 진행되는 형태
  /// 비동기 : 코드가 동시다발적으로 실행되며 순차적으로 보장을 할 수  없는 형태
  /// async / await / Futrue : 1회만 응답을 돌려받는 경우
  /// async* / yield / Stream : 지속적으로 응답을 돌려받는 경우
  ///

  /// async / await / Futrue : 1회만 응답을 돌려받는 경우
  Future<void> todo (int second) async {
    await Future.delayed(Duration(seconds: second));
    print('TODO Done in $second seconds');
  }

  todo(3);
  todo(1);
  todo(5);
  */

  /// async* / yield / Stream : 지속적으로 응답을 돌려받는 경우
  Stream<int> todo() async* {
    print('Todo');
    int counter = 0;

    while(counter <= 10) {
      counter++;
      await Future.delayed(Duration(seconds: 1));
      print('Todo is Running $counter');
      yield counter;
    }
    print('Todo is Done');
  }
  todo().listen((event) {});
}

int add(int num1, int num2){
  return num1 + num2;
}