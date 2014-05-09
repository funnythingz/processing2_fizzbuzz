import java.util.ArrayList;
import java.util.Iterator;

void setup() {
  FizzBuzz fizzBuzz = new FizzBuzz();
  
  for(int i = 1; i <= 15; i++) {
    println(fizzBuzz.is(i));
  }
}

void draw() {
}

class FizzBuzz {
  
  public ArrayList<String> is(int arg) {
    
    ArrayList<String> result = new ArrayList<String>();
    
    if(this.isFizz(arg)) {
      result.add("Fizz");
    }
    
    if(this.isBuzz(arg)) {
      result.add("Buzz");
    }
    
    return result;
    
  }
  
  private boolean isFizz(int arg) {
    return (arg%3 == 0)? true : false;
  }
  
  private boolean isBuzz(int arg) {
    return (arg%5 == 0)? true : false;
  }
  
}
