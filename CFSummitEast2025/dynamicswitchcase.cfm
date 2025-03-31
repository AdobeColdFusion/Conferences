<h1>Dynamic Switch/Case</h1>
<pre>
&lsaquo;cfscript>
    s=-1 
    switch((()=> 1)()) {  
    case 3/4: 
        writeoutput("22")  
        break; 
    case s+ 2:  
        writeoutput("21")  
        break; 
    } 
&lsaquo;/cfscript>
</pre>
<cfscript> 
    s=-1 
    switch((()=> 1)()) {  
    case 3/4: 
        writeoutput("22")  
        break; 
    case s+ 2:  
        writeoutput("21")  
        break; 
    } 
</cfscript> 