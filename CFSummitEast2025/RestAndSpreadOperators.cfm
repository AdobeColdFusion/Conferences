<h1>Rest & Spread Operators</h1>
<h2>Spread Operator</h2>
<pre>
&lsaquo;cfscript> 
    numbers = [1,2,3,4]; 
     writeOutput("Output:" & sum( ...numbers )); 
     function sum(required v,required x,required y,required z) { 
          return v + x + y + z; 
     } 
&lsaquo;/cfscript>
</pre>
<cfscript> 
     numbers = [1,2,3,4]; 
     writeOutput("Output:" & sum( ...numbers )); 
     function sum(required v,required x,required y,required z) { 
          return v + x + y + z; 
     } 
     //writeDump(numbers)
</cfscript>
<hr>
<h2>Rest Operator</h2>
<pre>
&lsaquo;cfscript> 
    function restTest(one,two,...args){ 
        writeDump(one) 
        writeDump(two) 
        writeDump(args) 
    } 
    restTest(1,2,3,4,5) 
&lsaquo;/cfscript> 
</pre>
<cfscript> 
    function restTest(one,two,...args){ 
        writeDump(one) 
        writeDump(two) 
        writeDump(args) 
    } 
    restTest(1,2,3,4,5) 
</cfscript> 