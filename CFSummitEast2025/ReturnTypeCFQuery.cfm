<h1>ReturnType added to cfquery & QueryExecute</h1>
<pre>
&lsaquo;cfscript> 
        defaultquery  = QueryExecute("select * from csvForOutput",{datasource="csvObj"}, {dbtype="query"});
        jsonquery = QueryExecute("select * from csvForOutput",{datasource="csvObj"}, {dbtype="query",ReturnType="json/array"});
        jsonmetaquery = QueryExecute("select * from csvForOutput",{datasource="csvObj"}, {dbtype="query",ReturnType="json/struct"});
        arrayquery = QueryExecute("select * from csvForOutput",{datasource="csvObj"}, {dbtype="query",ReturnType="array"});
        structquery = QueryExecute("select * from csvForOutput",{datasource="csvObj"}, {dbtype="query",ReturnType="struct"});
           
&lsaquo;/cfscript>
</pre>
<cfscript>
function buildQueryFromCSV(){
        try {
            theCSVFile = getDirectoryFromPath(GetCurrentTemplatePath()) & "data/demodata.csv"; // Grab the value of the location of the file
            format = "query"; // Set format type.
            csvObj = csvread(filepath = theCSVFile, outputformat = format); // Read CSV into memory
            QueryMetaDataArray = GetMetaData(csvObj); // Since we don't know the structure, we need the meta data.
            //writeDump(csvObj);
            //writeDump(QueryMetaDataArray);
            
            GetQueryColCount = arrayLen(QueryMetaDataArray);
            headerArray=[]; 
            for (row in csvObj){
                if (csvObj.currentRow > 1){ // Test whether we are on the first row (assuming headers are in first record). If not, break loop.
                    break;
                }
                for (colname in QueryMetaDataArray) // Loop through the meta data to get the total number of columns. Use that info to create a header array.
                    {
                        colnameeach = colname.Name; // Grab the column name from the struct
                        colvalue = csvObj[colnameeach][csvObj.currentRow]; // Grab the value in the first row at that column position
                        arrayAppend(headerArray, "#colvalue#"); // Append it to our header array
                    }
            }
            readconfiguration={ "header"=#headerArray#, "skipHeaderRecord" = 1 } // Set csvformat to header info, ignore header row
            csvForOutput = csvread(filepath = theCSVFile, outputformat = format, csvformatconfiguration = readconfiguration); // Re-read the CSV, but this time set the headers correctly and ignore the first row
        }
        catch(any e){
            writeDump(e)
        }

        defaultquery  = QueryExecute("select * from csvForOutput",{datasource="csvObj"}, {dbtype="query"});
        jsonquery = QueryExecute("select * from csvForOutput",{datasource="csvObj"}, {dbtype="query",ReturnType="json/array"});
        jsonmetaquery = QueryExecute("select * from csvForOutput",{datasource="csvObj"}, {dbtype="query",ReturnType="json/struct"});
        arrayquery = QueryExecute("select * from csvForOutput",{datasource="csvObj"}, {dbtype="query",ReturnType="array"});
        structquery = QueryExecute("select * from csvForOutput",{datasource="csvObj"}, {dbtype="query",ReturnType="struct"});
        
        //writedump(defaultquery);
        //writedump(jsonquery);
        writedump(jsonmetaquery);
        //writedump(arrayquery);
        //writedump(arrayquery);
    }
    buildQueryFromCSV()
</cfscript>