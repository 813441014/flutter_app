import 'package:flutter/material.dart';

class dataType extends StatefulWidget {
  @override
  _dataType createState() => _dataType();
}

class _dataType extends State<dataType> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    _numType();
    _stringType();
    _booType();
    _listType();
    _mapType();
    _tips();
    return Container(child: Text('常用数据类型，请查看控制台输出'));
  }

//数字类型
  void _numType() {
    num num1 = -1.0; //是数字类型的父类
    num num2 = 0; //是数字类型的父类
    int int1 = 3; //只能是整数
    double d1 = 1.68; //双精度
    print("num:$num1 num:$num2 int:$int1 d1:$d1");
    print(num1.abs()); //求绝对值
    print(num1.toInt()); //转换成int
    print(num1.toDouble()); //转换成double
  }
}

//字符串
_stringType() {
  String str1 = '字符串', str2 = "双引号"; //字符串的定义
  String str3 = 'str1:$str1 str2:$str2'; //字符串拼接
  String str4 = 'str1:' + str1 + 'str2:' + str2; //字符串拼接
  String str5 = "常用数据类型，请查看控制台输出";
  print(str3);
  print(str4);
  print(str5.substring(1, 5)); //字符串截取
  print(str5.indexOf("类型")); //获取指定字符串位置
}

//布尔类型
_booType() {
  bool success = true, fail = false;
  print(success);
  print(fail);
  print(success || fail);
  print(success && fail);
}

//list集合
_listType() {
  print('---_listType-----');

  ///集合初始的方式
  List list = [1, 2, 3, '集合']; //初始化时添加元素
  print(list);
  List<int> list2 = [];
//  List2 = list 错误  类型转换错误
  List list3 = [];
  list3.add('list3');
  list3.addAll(list);
  print(list3);
  List list4 = List.generate(3, (index) => index * 2);
  print("zhe:$list4");

  ///便利集合的方式
  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }
  for (var o in list) {
    print(o);
  }

  list.forEach((val) {
    print(val);
  });
}

//map 是将key和value相关联的对象
_mapType() {
  print('---_mapType---');
  //Map初始化
  Map names = {'xiaoming': '小明', 'xiaohong': '小红'};
  print(names);
  Map ages = {};
  ages['xiaoming'] = 16;
  ages['xiaohong'] = 18;
  print(ages);
//  Map 便利
  ages.forEach((k, v) {
    print('$k,$v');
  });
  Map ages2 = ages.map((k, v) {
    return MapEntry(v, k);
  });
  print(ages2);

  for (var key in ages.keys) {
    print("$key ${ages[key]}");
  }
//  科普小知识 dynamic var Object 三者的区别
}

_tips() {
  print('---_tips---');

  ///dynamic
  dynamic x = 'hal';
  print(x.runtimeType);
  print(x);
//  x.foo();

  x = 123;
  print(x.runtimeType);
  print((x));

  ///var
  var a='hal';
  print(a.runtimeType);
  print(a);
//  a = 123;
//Object
Object o1 = "111";
print(o1.runtimeType);
print(o1);
}
