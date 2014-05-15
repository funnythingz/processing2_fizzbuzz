import java.util.ArrayList;
import java.util.Iterator;

Iterator<String> fizzBuzzIterator;

float z;

void setup() {
  size(480, 320, P3D);
  textSize(64);
  textAlign(CENTER, CENTER);
  frameRate(10);
  z = -150;
  
  FizzBuzz fizzBuzz = new FizzBuzz();
  fizzBuzzIterator = fizzBuzz.is(1, 100).iterator();
}

void draw() {
  background(0);
  fill(random(0, 255), random(0, 255), random(0, 255));
  
  if(fizzBuzzIterator.hasNext()) {
    text(fizzBuzzIterator.next(), width/2, height/2, (z += 7));
  }
}

class FizzBuzz {
  
  public ArrayList<String> is(int start, int end) {
    
    ArrayList<String> result = new ArrayList<String>();
    
    for(int i = start; i <= end; i++) {
      
      String resultStr = "";
      
      if(this.isFizz(i)) {
        resultStr += "Fizz";
      }
      
      if(this.isBuzz(i)) {
        resultStr += "Buzz";
      }
      
      if(resultStr != "") {
        result.add(resultStr);
      }
      
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
