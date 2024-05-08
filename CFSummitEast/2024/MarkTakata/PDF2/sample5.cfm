<cfif NOT isDefined("form.submit")>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Barcodes</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500&display=swap" rel="stylesheet">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <style>
    * {
        font-family: 'Roboto', sans-serif;
    }
    body {
        padding: 40px;
        background-color: beige;
    }
    a {
        margin-bottom: 20px;
    }
    </style>
    
</head>
<body>
<div id="forms">
<form name="buildcodes" id="buildcodes" action="sample5.cfm" method="post">
<label for="select-codetype">Code Type</label>
<select id="select_codetype" class="form-control" name="select_codetype">
        <option value="barcode">Bar Code</option>
        <option value="qrcode">QR Code (URL)</option>
</select>
<br />
<label for="input-codecolor">Code Color (HEX)</label>
<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">#</span>
  </div>
  <input type="text" class="form-control" placeholder="000000" id="input_codecolor" value="000000" name="input_codecolor" />
</div>
<label for="input-codevalue">Code Value (SKU for barcode, URL for QR)</label>
<input id="input_codevalue" name="input_codevalue" class="form-control" value="" />
<button id="submit" name="submit" class="btn btn-sm btn-success">Generate Code</button>
<div

</form>
</div>
<div id="viewport"></div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>

<cfelse> 

<cfhtmltopdf destination="usage_example5.pdf" overwrite="true"  
  orientation="portrait"  pagetype="A4" margintop="1" marginbottom="1" 
  marginleft="1" marginright="1">
<style>
#qrcode {
 -ro-replacedelement: barcode;
 -ro-barcode-type: qrcode;
 -ro-barcode-ecc-level: H;
 -ro-barcode-size: 3;
 -ro-barcode-color: #<cfoutput>#input_codecolor#</cfoutput>;
}
.barcode {
 -ro-replacedelement: barcode;
 -ro-barcode-type: datamatrix;
 -ro-barcode-content: "<cfoutput>#input_codevalue#</cfoutput>";
 -ro-barcode-color: #<cfoutput>#input_codecolor#</cfoutput>;
 }
</style>
<cfif FORM.select_codetype EQ "barcode">
    <div class="barcode"></div>
<cfelse>
    <a id="qrcode" href="<cfoutput>#input_codevalue#</cfoutput>"></a>
</cfif>
</cfhtmltopdf>
<!---<cfpdf action="thumbnail" source="usage_example5.pdf" imagePrefix="usage_example5.pdf" pages="1" format="JPG" destination="images" overwrite="true" resolution="high" hires="yes" scale="100">
<img src="images/usage_example5.pdf_page_1.jpg" />
<cflocation  url="displaypdf.cfm" addtoken="no" >--->
<cfcontent file="#getdirectoryfrompath(getbasetemplatepath())#usage_example5.pdf" type="application/pdf" >
</cfif>