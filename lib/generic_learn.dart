import 'package:flutter_app/opp_leaarn.dart';

class TestGeneric{
  void start(){
     Cache<String>cache1=Cache();
     cache1.setItem("cache1", 'cache1');//泛型作用：类型检查约束类比：list<String>
    String string1 = cache1.getItem('cache1');
    print(string1);

    Cache<int>cach2=Cache();
     cach2.setItem("cach2", 1008);
     int string2 = cach2.getItem('cach2');
     print(string2);

     Member<Student>member=Member(Student('','',16));
     print(member.fixedName());
  }
}
//泛型：
//通俗理解：泛指主要解决类，接口，方法的复用性，以及对不特定性数据类型的支持
//泛型类
//作用：提高代码的复用性
class Cache<T>{
   static final Map<String,Object> _cached  = Map();
   void setItem(String key , T value){
       _cached[key] = value;
   }
   T getItem(String key){
     return _cached[key];
   }
}


//有时候你在实现类似通用接口的泛型中，期望的类型是某些特定类型时，这时可以使用类型约束
class Member<T extends Person>{
  T _person;
//  泛型作用：约束参数类型
Member(this._person);
String fixedName(){
  return 'fixed:${_person.name}';
}
}