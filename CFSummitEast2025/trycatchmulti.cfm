<h1>Multi Error Handler in Try/Catch</h1>
<pre>
&lsaquo;cfscript>
    try {
        // Code that might throw an exception
        result = 10 / 0; // This will throw an arithmetic exception
    } 
    catch (expression|application|database e) {
        // This block catches arithmetic or divide by zero errors
        writeOutput("Error caught: " & e.message);
    } 
    catch (any e) {
        // A generic catch block for all other exceptions
        writeOutput("Unknown Error: " & e.message);
    }
&lsaquo;/cfscript>
</pre>
<cfscript>
    try {
        // Code that might throw an exception
        result = 10 / 0; // This will throw an arithmetic exception
    } 
    catch (expression|application|database e) {
        // This block catches arithmetic or divide by zero errors
        writeOutput("Error caught: " & e.message);
    } 
    catch (any e) {
        // A generic catch block for all other exceptions
        writeOutput("Unknown Error: " & e.message);
    }
</cfscript>