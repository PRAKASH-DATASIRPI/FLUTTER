// void main() {  
//       // Call constructor automatically when we creates an object   
//       Student student = new Student();  
// }  
  
// class Student{  
//      // Declaring a construstor   
//      Student(){  
//           print("The example of the default constructor");  
//              }  
// }  


// paramterized const

// void main() {  
//       // Creating an object   
//       Student std = new Student("Jones",26);  
// }  
// class Student{  
//      // Declaring a parameterized constructor   
//      Student(String str, int age){  
//           print("The name is: ${str}");  
//           print("The age is: ${age}");  
  
//              }  
// }  




void main() {  
      
      Student std1 = new Student();   
      Student std2 = new Student.namedConst("Computer Science");   
}  
  
class Student{  
     // Declaring a construstor   
     Student(){  
          print("The example of the named constructor");  
             }  
      // Second constructor  
     Student.namedConst(String branch){  
          print("The branch is: ${branch}");  
  
           }  
} 


