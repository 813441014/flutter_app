
//面向对象的编程技巧
//-：封装，继承，多态
//善于封装 大到功能模块的封装，类的封装与抽象，小到方法的封装，封装的目的在于复用和易于扩展和维护
//不要再一个方法题里面堆砌太多的代码
//点点点的技巧
//在一个类的世界里：万物皆对象 查看对象有哪些方法和属性 查看源码  探究竟

void main(){
  List list;
  print("zheli");

//Dart编程小技巧1：安全地调用
//对于不确定是否为空的对象可以通过？、的方式来定位他的属性和方法以防止空异常如 ： a？。foo()
  print(list?.length);


//
  print(list?.length??0);
  print(list?.length ?? - 1);
  list=[];
  list.add(0);
  list.add("");
  list.add(null);


  if(list[0] == null || list[0] == '' || list[0] == 0){
    print('list[0] is empty');
  }


//  https://www.dartlang.org
//  https://dart.goodev.org/guides/language/language-tour

//  https://dart.goodev.org/guides/language/effective-dart/usage
//dart官网

//  https://dart.dev/guides/language/language-tour#/using-generic-methods
}