void main() {
  var sum = addNumbers(5);
}

int addNumbers(var n) {
  print("value of n is $n");
  //termination condition should be used in recursive
  if (n == 1) {
    return 1;
  }
  return n + addNumbers(n - 1);
}
