<h1>Case-Sensitive Structs (and test)</h1>
<h2>Case Sensitive</h2>
<pre> 
&lsaquo;cfscript> 
    cloudVendors=StructNew("casesensitive") 
    cloudVendors.Azure="Microsoft" 
    cloudVendors.Aws= "Amazon" 
    cloudVendors.ACC = "Adobe" 
    cloudVendors.Gce= "Google" 
    cloudVendors.OCP = "Oracle" 
    writeDump(cloudVendors);
    writeOutput(StructIsCaseSensitive(cloudVendors)); // should output YES 
    writeOutput(cloudVendors.isCaseSensitive()); // should output YES 
    cloudVendors2=StructNew() 
    cloudVendors2.Azure="Microsoft" 
    cloudVendors2.Aws= "Amazon" 
    cloudVendors2.ACC = "Adobe" 
    cloudVendors2.Gce= "Google" 
    cloudVendors2.OCP = "Oracle" 
    writeDump(cloudVendors2);
    writeOutput(StructIsCaseSensitive(cloudVendors2)); // should output YES 
    writeOutput(cloudVendors2.isCaseSensitive()); // should output YES
&lsaquo;/cfscript>
</pre>
<cfscript> 
    cloudVendors=StructNew("casesensitive") 
    cloudVendors.Azure="Microsoft" 
    cloudVendors.Aws= "Amazon" 
    cloudVendors.ACC = "Adobe" 
    cloudVendors.Gce= "Google" 
    cloudVendors.OCP = "Oracle" 
    writeDump(cloudVendors);
    writeOutput(StructIsCaseSensitive(cloudVendors)); // should output YES 
    writeOutput(cloudVendors.isCaseSensitive()); // should output YES 
    cloudVendors2=StructNew() 
    cloudVendors2.Azure="Microsoft" 
    cloudVendors2.Aws= "Amazon" 
    cloudVendors2.ACC = "Adobe" 
    cloudVendors2.Gce= "Google" 
    cloudVendors2.OCP = "Oracle" 
    writeDump(cloudVendors2);
    writeOutput(StructIsCaseSensitive(cloudVendors2)); // should output YES 
    writeOutput(cloudVendors2.isCaseSensitive()); // should output YES
    </cfscript>
<hr> 
<h2>Ordered</h2>
<pre> 
&lsaquo;cfscript>
    animals=StructNew("ordered-casesensitive") 
    animals.Aardwolf="Proteles cristata" 
    animals.Aardvark="Orycteropus afer" 
    animals.Alligator="Mississippiensis" 
    animals.Albatross="Diomedeidae" 
    writeDump(animals) 
&lsaquo;/cfscript>
</pre>


    <cfscript> 
    animals=StructNew("ordered-casesensitive") 
    animals.Aardwolf="Proteles cristata" 
    animals.Aardvark="Orycteropus afer" 
    animals.Alligator="Mississippiensis" 
    animals.Albatross="Diomedeidae" 
    writeDump(animals) 
</cfscript>
