<h1>Array Methods</h1>
<h2>ArrayPush()</h2>
<pre> 
&lsaquo;cfscript>
    arr=[23,65,187,81,9] 
    WriteOutput("The original size of the array is : " & arrayLen(arr) & "&lsaquo;br />");
    writeDump(arr); 
    ArrayPush(array=arr,value=17); 
    writeOutput("We run 'ArrayPush(array=arr,value=17);&lsaquo;br />")
    WriteOutput("The size of the array is now: " & arrayLen(arr) & "&lsaquo;br />");
    writeDump(arr); 
&lsaquo;/cfscript>
</pre>
<cfscript> 
    arr=[23,65,187,81,9] 
    WriteOutput("The original size of the array is : " & arrayLen(arr) & "<br />");
    writeDump(arr); 
    ArrayPush(array=arr,value=17); 
    writeOutput("We run 'ArrayPush(array=arr,value=17);<br />")
    WriteOutput("The size of the array is now: " & arrayLen(arr) & "<br />");
    writeDump(arr); 
</cfscript>
<hr />
<h2>ArrayPop()</h2>
<pre> 
&lsaquo;cfscript>
arr=[{"id":101,"name":"John"},
         {"id":102,"name":"Paul"},
         {"id":103,"name":"George"}
        ]
    WriteDump(arr);
    WriteOutput("Now we run 'ArrayPop(arr)<br />");
    WriteDump(ArrayPop(arr));
&lsaquo;/cfscript>
</pre>
<cfscript>
    arr=[{"id":101,"name":"John"},
         {"id":102,"name":"Paul"},
         {"id":103,"name":"George"}
        ]
    WriteDump(arr);
    WriteOutput("Now we run 'ArrayPop(arr)<br />");
    WriteDump(ArrayPop(arr));
    WriteOutput("Now the original array has one less item.")
    WriteDump(arr);
</cfscript>
<hr>
<h2>ArrayShift()</h2>
<pre> 
&lsaquo;cfscript>
    arr=["Jan","Feb","Mar","Apr","May"]
    shiftedElement=ArrayShift(arr)
    WriteOutput(shiftedElement) // Returns Jan
&lsaquo;/cfscript>
</pre>
<cfscript>
    arr=["Jan","Feb","Mar","Apr","May"]
    writeDump(arr);
    writeOutput("shiftedElement=ArrayShift(arr)");
    shiftedElement=ArrayShift(arr)
    WriteOutput("This returns:" & shiftedElement) // Returns Jan
    writeDump(arr)
</cfscript>
<hr>
<h2>ArrayUnShift()</h2>
<cfscript>writeDump(arr)</cfscript>
<pre> 
&lsaquo;cfscript>
    arr=["Mar","Apr","May","Jun","Jul"]
    unshifted=ArrayUnshift(arr,"Jan","Feb") // Returns 7
    WriteOutput(unshifted)
&lsaquo;/cfscript>
</pre>
<cfscript>
    arr=["Mar","Apr","May","Jun","Jul"]
    writeOutput("We run 'unshifted=ArrayUnshift(arr,&quot;Jan&quot;,&quot;Feb&quot;)' which adds 2 elements and returns new length: ")
    unshifted=ArrayUnshift(arr,"Jan","Feb") // Returns 7
    WriteOutput(unshifted)
    WriteDump(arr)
</cfscript>