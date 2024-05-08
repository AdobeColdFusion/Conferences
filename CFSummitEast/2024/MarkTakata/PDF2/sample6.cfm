<cfhtmltopdf destination="usage_example6.pdf" overwrite="true"  
  orientation="portrait"  pagetype="A4" margintop="1" marginbottom="1" 
  marginleft="1" marginright="1">
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width">
  <title>Interactive PDF Form</title>
  <style>
  #credentials, #credentials > input { -ro-pdf-format: pdf; }
  </style>
</head>
<body>
<form id="credentials" name="credentials" action="displayformdata.cfm" method="post">
 First Name: <input type="text" name="firstname" value="firstname" />
 Last Name: <input type="text" name="firstname" value="lastname" />
 <input type="submit" name="submit" value="submit" />
</form>

</body>
</html>
</cfhtmltopdf>
<cfcontent file="#getdirectoryfrompath(getbasetemplatepath())#usage_example6.pdf" type="application/pdf" >