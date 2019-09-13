import 'my_counter.dart';
import 'package:scoped_model/scoped_model.dart';

class CounterModel extends Model {
  MyCounter myCounter = MyCounter(0);

  int get counts => myCounter.counter;

  void add() {
    myCounter.increaseCount();
    notifyListeners();
  }
}
