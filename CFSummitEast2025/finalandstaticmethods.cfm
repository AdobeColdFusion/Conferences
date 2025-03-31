<h1>Static and Final Methods</h1>
<h2>Static</h2>
<pre>
--- case3.cfc ---
component { 
    /** 
    * splits a full name in half 
    */ 
    public static function splitFullName(required string fullName) { 
        var arr=listToArray(fullName,"  "); 
        return {'lastname':arr[1],'firstname':arr[2]}; 
    } 
} 
&lsaquo;cfscript>
writeDump(Case3::splitFullName("Mark Takata"));
&lsaquo;/cfscript>
</pre>
<cfscript>
writeDump(Case3::splitFullName("Mark Takata"));
</cfscript>

<hr> 
<h2>Final</h2>
<pre>
--- demo.cfc ---
component extends="Test"{
 //public void function display(){}
 public void function show()
   {
     writeOutput("From subclass show() method");
   }
}
--- test.cfc ---
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
&lsaquo;cfscript>
 d1=new Demo();
 d1.display();
 d1.show();
&lsaquo;/cfscript>
</pre>
<cfscript>
 d1=new Demo();
 d1.display();
 d1.show();
</cfscript>
