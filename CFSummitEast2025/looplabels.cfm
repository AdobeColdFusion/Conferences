<h1>Loop Labels for Break/Continue</h1>
<pre>
&lsaquo;cfscript>
// breaking out using a label 
   x = 0; 
   WhileLabel: while (x < 10){    
    writeOutput("x is #x#<br>"); 
    switch (x){ 
        case 1: 
        break; 
        case 3: 
        break WhileLabel; 
    } 
    x++; 
    writeOutput("end of of loop<br>"); 
   } 
   writeOutput("After loop, x is #x#<br>");
&lsaquo;/cfscript>
</pre>
<cfscript> 
   // breaking out using a label 
   x = 0; 
   WhileLabel: while (x < 10){    
   writeOutput("x is #x#<br>"); 
   switch (x){ 
   case 1: 
   break; 
   case 3: 
   break WhileLabel; 
   } 
   x++; 
   writeOutput("end of of loop<br>"); 
   } 
   writeOutput("After loop, x is #x#<br>"); 
</cfscript>