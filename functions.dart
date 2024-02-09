// defining function
void add(int a, int b) {
  int c;
  c = a + b;
  print("sum is: $c");
}

int sub(int d, int e) {
  int s;
  s = d - e;
  return s;
}

void main() {
  add(10, 20);
  int ans = sub(4, 3);
  print(ans);
}
