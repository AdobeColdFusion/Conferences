
<cfhtmltopdf destination="usage_example1.pdf" overwrite="true"  
  orientation="portrait"  pagetype="A4" margintop="1" marginbottom="1" 
  marginleft="1" marginright="1">
<style>
.buttonstyle {

background-color: rgba(255,0,0,0.1);
padding: 20px;
border: solid 1px black;
border-radius: 9px;

}
</style>
<div class="buttonstyle">This is a test <cfoutput>#now()#</cfoutput></div>
</cfhtmltopdf>

<cfcontent file="#getdirectoryfrompath(getbasetemplatepath())#usage_example1.pdf" type="application/pdf" >