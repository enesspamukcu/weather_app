import 'dart:io';

void main() {
  performTask();
}

void performTask()async {
  task1();
  String task2Result = await task2();
  task3();
}

void task1(){
  String result = 'task 1 data';
  print('task 1 complete');

}

Future task2() async {
  String result ='';
  Duration threeSecond = Duration(seconds: 3);
  Future.delayed(threeSecond,(){
     result = 'task 2 complete';
    print(result);
  });
  return result;
}

void task3(){
  print('task 3 complete');
}