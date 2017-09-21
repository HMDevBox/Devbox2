public class sfdctosfdccls{
public boolean acctsstoken{get;set;}
public string url{get;set;}
public sfdctosfdccls(){
acctsstoken=false;
//url='https://mano-dev-ed--manoharlightnig.ap2.visual.force.com/apex/ordervf?access_token=';
url='https://mano-dev-ed--manoharlightnig.ap2.visual.force.com/resource/1484350812000/manoharlightnig__productimage?access_token=';
sfdcintegration.OAuth2 o=new sfdcintegration.OAuth2();
o=sfdcintegration.SfdcAuthentication();
if(o.access_token!=null){
acctsstoken=true;
url+=o.access_token;

}


}

}