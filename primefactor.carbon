package Hello library "Foo" api;


fn Fibonacci(limit: i32) {
  var (a: i32, b: i32) = (0, 1);
  while (a < limit) {
    Print("{0}", a);
    let next: i32 = a + b;
    a = b;
    b = next;
  }
  Print("\n");
}

fn Divide(dividend: i32, divisor: i32) -> i32 {

  var (a: i32, b: i32, quot: i32) = (dividend, divisor, 0);
  while (a >= b) {
    a = a - b;
    quot = quot + 1;
  }
  return quot;
}

fn Sqrt (n: i32) -> i32 {
    var result: i32 = 0;
    var odd: i32 = 1;
    var oddsum: i32 = 1;

    while (oddsum <= n) {

        result = result + 1;
        odd = odd + 2;
        oddsum = oddsum + odd;

    }
    return result;

}


fn PrimeFactors(number: i32) {

  var c: i32 = 2;
  var n: i32 = number;
  while (n % 2 == 0){
    Print("2\t");
    n = Divide(n, 2);
  }
  var i: i32 = 3;
  while (i <= Sqrt(n)){
    while (n % i == 0){
        Print("{0}\t", i);
        n = Divide(n, i);
    }
    i = i + 2;
  }
  if (n > 2) {
    Print("{0}\t", n);
  }
}


fn Main() -> i32 {
  let s: auto = "Hello world!";
  Print(s);
  Print("Divide 10 by 2:");

  let n: i32 = 10;
  Print("{0}", Divide(10, 2));

  let number: i32 = 12345;
  Print("Find Prime Factor of {0}:", number);

  PrimeFactors(number);
  return 0;
}