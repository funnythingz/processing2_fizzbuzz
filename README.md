# processing2 fizzbuzz

Processing2 FizzBuzz

```java

Iterator<String> fizzBuzzIterator;

void setup() {
    size(480, 320, P3D);
    textSize(64);
    textAlign(CENTER, CENTER);
    frameRate(10);

    FizzBuzz fizzBuzz = new FizzBuzz();
    fizzBuzzIterator = fizzBuzz.is(1, 100).iterator();
}

void draw() {
    background(0);
    fill(random(0, 255), random(0, 255), random(0, 255));

    if(fizzBuzzIterator.hasNext()) {
        text(fizzBuzzIterator.next(), width/2, height/2);
    }
}
```

![](cap.gif)
