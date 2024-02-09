
// scope
void main() {   
  var list = ["prkash","subair","aadi"];  
  print("Example of anonymous function");  
  list.forEach((item) {  
      print(item);  
});  
}  


// lexical scope
void td() {
  // Outer variable accessible within the main function
  String outerVariable = "I am from the outer scope"; //global

  void outerFunction() {
    // Inner variable accessible within the outerFunction
    String innerVariable = "I am from the inner scope"; //local
    
    void innerFunction() {
      // Variable accessible within the innerFunction
      String deepVariable = "I am from the deep inner scope"; //innerlocal

      print(deepVariable);
      print(innerVariable); 
      print(outerVariable); 
    }

    print(innerVariable);
    print(outerVariable); 

    innerFunction();
  }

  print(outerVariable); 

  outerFunction();
}




