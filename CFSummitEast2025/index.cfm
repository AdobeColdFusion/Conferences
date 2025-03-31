<!DOCTYPE html>
<html lang="en">
<head>
    <title>Adobe ColdFusion 2025 - Charting Demo App</title>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@1.0.2/css/bulma.min.css">
    <style>
        body {
            padding: 30px;
        }
    </style>
</head>
<body>
<h1 class="is-size-3">CF Summit 2025</h1>
    <h2 class="is-size-4">CF 2021</h2>
        <ul class="ul">
            <li class="block li">
                <a href="RestAndSpreadOperators.cfm" class="button is-link is-info is-outlined" target="_blank">
                    Rest & Spread Operators
                </a>
                <a href="https://helpx.adobe.com/coldfusion/developing-applications/the-cfml-programming-language/using-expressions-and-number-signs/expressions-developing-guide.html" class="button is-link is-warning is-small" target="_blank">DOCS</a>
            </li>
            <li class="block li">
                <a href="ReturnTypeCFQuery.cfm" class="button is-link is-info is-outlined" target="_blank">
                    ReturnType added to cfquery & QueryExecute
                </a>
                <a href="https://helpx.adobe.com/coldfusion/cfml-reference/coldfusion-tags/tags-p-q/cfquery.html" class="button is-link is-warning is-small" target="_blank">DOCS</a>
            </li>
            <li class="block li">
                <a href="ImmediatelyInvokedFunctions.cfm" class="button is-link is-info is-outlined" target="_blank">
                    Immediately Invoked Function Expressions
                </a>
                <a href="https://helpx.adobe.com/si/coldfusion/developing-applications/building-blocks-of-coldfusion-applications/writing-and-calling-user-defined-functions/creating-user-defined-functions.html#iife" class="button is-link is-warning is-small" target="_blank">DOCS</a>
            </li>
            <li class="block li">
                <a href="OrderedAndCaseSensitiveStructs.cfm" class="button is-link is-info is-outlined" target="_blank">
                    Ordered & Case-Sensitive Structs
                </a>
                <a href="https://helpx.adobe.com/coldfusion/cfml-reference/coldfusion-functions/functions-s/structnew.html" class="button is-link is-warning is-small" target="_blank">DOCS</a>
            </li>
            <li class="block li">
                <a href="ReduceRightAdditions.cfm" class="button is-link is-info is-outlined" target="_blank">
                    Reduce Right (Array/String/List)
                </a>
                <a href="https://helpx.adobe.com/coldfusion/cfml-reference/coldfusion-functions/functions-a-b/arrayreduceright.html" class="button is-link is-warning is-small" target="_blank">DOCS (array)</a>
                <a href="https://helpx.adobe.com/coldfusion/cfml-reference/coldfusion-functions/functions-l/listreduceright.html" class="button is-link is-warning is-small" target="_blank">DOCS (list)</a>
                <a href="https://helpx.adobe.com/coldfusion/cfml-reference/coldfusion-functions/functions-s/stringreduceright.html" class="button is-link is-warning is-small" target="_blank">DOCS (string)</a>
            </li>
            <li class="block li">
                <a href="strictequality.cfm" class="button is-link is-info is-outlined" target="_blank">
                    Strict Equality
                </a>
                <a href="https://helpx.adobe.com/coldfusion/developing-applications/the-cfml-programming-language/using-expressions-and-number-signs/expressions-developing-guide.html" class="button is-link is-warning is-small" target="_blank">DOCS</a>
            </li>
            <li class="block li">
                <a href="dynamicswitchcase.cfm" class="button is-link is-info is-outlined" target="_blank">
                    Dynamic Switch/Case
                </a>
                <a href="https://helpx.adobe.com/coldfusion/developing-applications/the-cfml-programming-language/extending-coldfusion-pages-with-cfml-scripting/using-cfscript-statements.html" class="button is-link is-warning is-small" target="_blank">DOCS</a>
            </li>
            <li class="block li">
                <a href="looplabels.cfm" class="button is-link is-info is-outlined" target="_blank">
                    Loop Labels for Break/Continue
                </a>
                <a href="https://helpx.adobe.com/coldfusion/developing-applications/the-cfml-programming-language/extending-coldfusion-pages-with-cfml-scripting/using-cfscript-statements.html#label-support" class="button is-link is-warning is-small" target="_blank">DOCS</a>
            </li>
            <li class="block li">
                <a href="stringsascollections.cfm" class="button is-link is-info is-outlined" target="_blank">
                    Strings as Collections
                </a>
                <a href="https://helpx.adobe.com/coldfusion/cfml-reference/coldfusion-functions/functions-s/stringsort.html" class="button is-link is-warning is-small" target="_blank">DOCS (stringSort)</a>
                <a href="https://helpx.adobe.com/coldfusion/cfml-reference/coldfusion-functions/functions-s/stringsome.html" class="button is-link is-warning is-small" target="_blank">DOCS (stringSome)</a>
                <a href="https://helpx.adobe.com/coldfusion/cfml-reference/coldfusion-functions/functions-s/stringreduce.html" class="button is-link is-warning is-small" target="_blank">DOCS (stringReduce)</a>
                <a href="https://helpx.adobe.com/coldfusion/cfml-reference/coldfusion-functions/functions-s/stringmap.html" class="button is-link is-warning is-small" target="_blank">DOCS (stringMap)</a>
                <a href="https://helpx.adobe.com/coldfusion/cfml-reference/coldfusion-functions/functions-s/stringfilter.html" class="button is-link is-warning is-small" target="_blank">DOCS (stringFilter)</a>
                <a href="https://helpx.adobe.com/coldfusion/cfml-reference/coldfusion-functions/functions-s/stringevery.html" class="button is-link is-warning is-small" target="_blank">DOCS (stringEvery)</a>
            </li>
            <li class="block li">
                <a href="arraymethods.cfm" class="button is-link is-info is-outlined" target="_blank">
                    Array Methods (Push, Pop, Shift, Unshift)
                </a>
                <a href="https://helpx.adobe.com/coldfusion/cfml-reference/coldfusion-functions/functions-a-b/arraypush.html" class="button is-link is-warning is-small" target="_blank">DOCS (ArrayPush)</a>
                <a href="https://helpx.adobe.com/coldfusion/cfml-reference/coldfusion-functions/functions-a-b/arraypop.html" class="button is-link is-warning is-small" target="_blank">DOCS (ArrayPop)</a>
                <a href="https://helpx.adobe.com/coldfusion/cfml-reference/coldfusion-functions/functions-a-b/arrayshift.html" class="button is-link is-warning is-small" target="_blank">DOCS (ArrayShift)</a>
                <a href="https://helpx.adobe.com/coldfusion/cfml-reference/coldfusion-functions/functions-a-b/arrayunshift.html" class="button is-link is-warning is-small" target="_blank">DOCS (ArrayUnShift)</a>
            </li>
        </ul>
        <h2 class="is-size-4">CF 2023</h2>
        <ul class="ul">
            <li class="block li">
                <a href="avroandprotobuff.cfm" class="button is-link is-info is-outlined" target="_blank">
                    Avro & Protocol Buffer (Protobuff)
                </a>
                <a href="https://helpx.adobe.com/coldfusion/using/avro-protobuf-coldfusion.html" class="button is-link is-warning is-small" target="_blank">DOCS</a>
            </li>
            
        </ul>
        <h2 class="is-size-4">CF 2025</h2>
        <ul class="ul">
            <li class="block li">
                <a href="trycatchmulti.cfm" class="button is-link is-info is-outlined" target="_blank">
                    Multi Error-type Handling in Try/Catch
                </a>
                <a href="https://helpx.adobe.com/coldfusion/developing-applications/the-cfml-programming-language/extending-coldfusion-pages-with-cfml-scripting/handling-exceptions.html" class="button is-link is-warning is-small" target="_blank">DOCS</a>
            </li>
            <li class="block li">
                <a href="finalandstaticmethods.cfm" class="button is-link is-info is-outlined" target="_blank">
                    Final and Static Method Support
                </a>
                <a href="https://helpx.adobe.com/coldfusion/developing-applications/building-blocks-of-coldfusion-applications/building-and-using-coldfusion-components/cfc-variables-and-scope.html" class="button is-link is-warning is-small" target="_blank">DOCS (Static)</a>
                <a href="https://helpx.adobe.com/coldfusion/developing-applications/building-blocks-of-coldfusion-applications/object-oriented-programming-coldfusion.html" class="button is-link is-warning is-small" target="_blank">DOCS (Final)</a>
            </li>
            <li class="block li">
                <a href="nullcoalescing.cfm" class="button is-link is-info is-outlined" target="_blank">
                    Null Coalescing Operator
                </a>
                <a href="https://helpx.adobe.com/coldfusion/developing-applications/the-cfml-programming-language/using-coldfusion-variables/data-types-developing-guide.html#nullcoalescing" class="button is-link is-warning is-small" target="_blank">DOCS ()</a>
            </li>
        </ul>
</body>
</html>