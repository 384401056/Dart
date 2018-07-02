void main(){

  var rect = new Rectangle(3, 4, 20, 15); 
  print(rect.right);
  print(rect.bottom);
}


/**
 * Getter和Setter是用来读写一个对象属性的方法
 * 你可以使用get和set关键字扩展功能
 * 如果字段为final或者const的话，那么它只有一个getter方法
 */
class Rectangle {
    num left;
    num top;
    num width;
    num height;

    Rectangle(this.left, this.top, this.width, this.height);
    
    // right 和 bottom 两个属性的计算方法
    num get right => left + width;
    set right(num value) => left = value - width;
    num get bottom => top + height;
    set bottom(num value) => top = value - height;
}