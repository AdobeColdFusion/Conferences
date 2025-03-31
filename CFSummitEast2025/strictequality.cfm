<h1>Strict Equality/Inequality</h1>
<h2>Equality</h2>
<pre>
&lsaquo;cfscript>
    writedump(2=="2"); // YES 
    writedump(2==="2"); // NO 
    writedump('yes' == 1); // YES 
    writedump('yes' === 1); // NO 
    writedump(false ==0); // YES 
    writedump(false ===0);//NO 
&lsaquo;/cfscript>
</pre>
<cfscript> 
    writedump(2=="2"); // YES 
    writedump(2==="2"); // NO 
    writedump('yes' == 1); // YES 
    writedump('yes' === 1); // NO 
    writedump(false ==0); // YES 
    writedump(false ===0);//NO 
</cfscript>
<h2>Inequality</h2>
<pre>
&lsaquo;cfscript>
    writedump(2!="2"); // NO 
    writedump(2!=="2"); // YES 
    writedump('yes' != 1); // NO 
    writedump('yes' !== 1);// YES 
    writedump(false !=0); // NO 
    writedump(false !==0);//YES
&lsaquo;/cfscript>
<cfscript> 
    writedump(2!="2"); // NO 
    writedump(2!=="2"); // YES 
    writedump('yes' != 1); // NO 
    writedump('yes' !== 1);// YES 
    writedump(false !=0); // NO 
    writedump(false !==0);//YES 
</cfscript>
</pre>