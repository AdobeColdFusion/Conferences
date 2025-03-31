<h1>Strings as Collections</h1>
<h2>stringSort()</h2>
<pre> 
&lsaquo;cfscript>
    city = "LONDON12398";             
    sortedVal= StringSort(city); 
    writeoutput(sortedVal)
&lsaquo;/cfscript>
</pre>
<cfscript> 
    city = "LONDoON1239dr8";             
    sortedVal= StringSort(city); 
    writeoutput(sortedVal) 
</cfscript>
<hr>
<h2>stringSome()</h2>
<pre> 
&lsaquo;cfscript>
    myString="123456789"; 
    callback=function(num){ 
        return num>53 
    } 
    writeOutput(StringSome(myString,callback)) // YES 
&lsaquo;/cfscript>
</pre>
<cfscript> 
    myString="123456789"; 
    callback=function(num){ 
        return num>53 
    } 
    writeOutput(StringSome(myString,callback)) // YES 
</cfscript>
<hr>
<h2>stringReduce()</h2>
<pre> 
&lsaquo;cfscript>
    closure=function(value1,value2){               
        return (value1&value2);  
    } 
    writeOutput(StringReduce(callback=closure,initialValue="Hello",string="World")) 
&lsaquo;/cfscript>
</pre>
<cfscript> 
    closure=function(value1,value2){               
        return (value1&value2);  
    } 
    writeOutput(StringReduce(callback=closure,initialValue="Hello",string="World")) 
</cfscript>
<hr>
<h2>stringMap()</h2>
<pre> 
&lsaquo;cfscript>
    myString="Hello World"         
    closure=function(val){               
      return (val & 'a')  
    } 
    writeOutput(StringMap(callback=closure,string=myString)) // Haealalaoa aWaoaralada 
&lsaquo;/cfscript>
</pre>
<cfscript> 
    myString="Hello World"         
    closure=function(val){               
      return (val & 'a')  
    } 
    writeOutput(StringMap(callback=closure,string=myString)) // Haealalaoa aWaoaralada 
</cfscript>
<hr>
<h2>stringFilter()</h2>
<pre> 
&lsaquo;cfscript>
    myStr="diamonds" 
    callback=function(chr){ 
        return chr>"d" 
    } 
    writeOutput(StringFilter(myStr,callback)) // imons 
&lsaquo;/cfscript>
</pre>
<cfscript> 
    myStr="diamonds" 
    callback=function(chr){ 
        return chr>"d" 
    } 
    writeOutput(StringFilter(myStr,callback)) // imons 
</cfscript>
<hr>
<h2>stringEvery()</h2>
<pre> 
&lsaquo;cfscript>
    myString="CDEFGHIJ" 
    // define callback 
    callback=function(chr){ 
        return chr>"B" 
    } 
    writeOutput(StringEvery(myString,callback)) // YES 
     writeOutput("&lsaquo;br>")
    // define another callback 
    callback_1=function(chr){ 
        return chr<"A" 
    } 
    writeOutput(StringEvery(myString,callback_1)) // NO 
&lsaquo;/cfscript>
</pre>
<cfscript> 
    myString="CDEFGHIJ" 
    // define callback 
    callback=function(chr){ 
        return chr>"B" 
    } 
    writeOutput(StringEvery(myString,callback)) // YES 
     writeOutput("<br>")
    // define another callback 
    callback_1=function(chr){ 
        return chr<"A" 
    } 
    writeOutput(StringEvery(myString,callback_1)) // NO 
</cfscript>
<hr>
<h2>stringEach()</h2>
<pre> 
    myCities="St. Petersburg" 
    callback=function(city){ 
        WriteOutput(city & " | " & rand("SHA1PRNG") & "<br/>") 
    }           
    StringEach(myCities,callback) 
&lsaquo;/cfscript>
</pre>
<cfscript> 
    myCities="St. Petersburg" 
    callback=function(city){ 
        WriteOutput(city & " | " & rand("SHA1PRNG") & "<br/>") 
    }           
    StringEach(myCities,callback) 
</cfscript>