<h1>Null Coalescing Operator</h1>
<pre>
&lsaquo;cfscript>
    foo=javacast("null","") ?? "NULL coalescing"
    writeOutput(foo)
    writeOutput("&lsaquo;br/>")
    baz=0 ?? 45
    writeOutput(baz)
&lsaquo;/cfscript>
</pre>
<cfscript>
    foo=javacast("null","") ?? "NULL coalescing"
    writeOutput(foo)
    writeOutput("<br/>")
    baz=0 ?? 45
    writeOutput(baz)
</cfscript>
