component {
 // final method and cannot be overridden
 public final void function display(){
  writeOutput("From super class, final display() method");
 }
 // concrete method
 public void function show(){
  writeOutput("From super class, non-final show() method");
 }
}