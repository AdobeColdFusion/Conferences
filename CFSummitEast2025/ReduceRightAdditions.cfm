<h1>Reduce Right (Array/String/List)</h1>
<h2>Array</h2>
<pre>
&lsaquo;cfscript> 
    data = ['1','2','3','4','5','6']; 
    stringConcat = ArrayReduceRight(data,function(previous,next) { 
    return previous & next; 
    },""); 
    writeOutput(stringConcat) 
&lsaquo;/cfscript>
</pre>
<cfscript> 
       data = [1,2,3,4,5,6]; 
       stringConcat = ArrayReduceRight(data,function(previous,next) { 
        return previous & next; 
       },""); 
       writeOutput(stringConcat) 
</cfscript>
<h2>List</h2>
<pre>
&lsaquo;cfscript>
    myList="2021, ColdFusion "; 
    closure=function(value1,value2){ 
        return (value1&value2); 
    } 
    writeOutput(ListReduce(myList,closure,"")); 
    writeoutput("<br>") 
    writeOutput(ListReduceRight(myList,closure,"")); 
&lsaquo;/cfscript>
</pre>
<cfscript> 
    myList="2021, ColdFusion "; 
    closure=function(value1,value2){ 
             return (value1&value2); 
       } 
       writeOutput(ListReduce(myList,closure,"")); 
       writeoutput("<br>") 
       writeOutput(ListReduceRight(myList,closure,""));  
</cfscript>
<h2>String</h2>
<pre>
&lsaquo;cfscript>
    myStr="1202"; 
    closure=function(value1,value2){      
        return (value1 & value2);  
    } 
    writeOutput(myStr.reduceRight(closure,"ColdFusion"))
    writeOutput("&lsaquo;br/>")
    writeOutput(myStr.reduce(closure,"ColdFusion"))
&lsaquo;/cfscript>
</pre>
<cfscript> 
    myStr="1202"; 
    closure=function(value1,value2){      
        return (value1 & value2);  
    } 
    writeOutput(myStr.reduceRight(closure,"ColdFusion")) 
    writeOutput("<br/>")
    writeOutput(myStr.reduce(closure,"ColdFusion"))
</cfscript>