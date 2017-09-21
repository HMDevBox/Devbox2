@RestResource(urlMapping='/SFDCtoSFDC/*')
global class sfdcintegration
{
@HttpPost
global static OAuth2 SfdcAuthentication()
{
String clientId = '3MVG9ZL0ppGP5UrCzcYjruOVd7NHbn09ZQJdIegV4bqnmuDbogmyebuWj1n.FU7ypIEaBArW0dIMvsnXkd1LJ';
String clientSecret = '3397791868664993342';
String username='mano0217@reddy.com'; 
String password= 'Manohar@20';
String URL='https://login.salesforce.com';

String reqbody = 'grant_type=password&client_id='+clientId+'&client_secret='+clientSecret+'&username='+username+'&password='+password;

Http h = new Http();
HttpRequest req = new HttpRequest();
req.setBody(reqbody);
req.setMethod('POST');
req.setEndpoint(URL+'/services/oauth2/token');
req.setTimeout(120000);
HttpResponse res = h.send(req);
system.debug('====firstbody====='+res.getbody());
OAuth2 objAuthenticationInfo =new OAuth2 ();
 objAuthenticationInfo = (OAuth2)JSON.deserialize(res.getbody(), OAuth2.class);

  system.debug('====objAuthenticationInfo ====='+objAuthenticationInfo);
return objAuthenticationInfo ;
  }
  /*To get aouthentication detail Wrapper*/
global class OAuth2{
 global String id{get;set;}
 global String issued_at{get;set;}
 global String instance_url{get;set;}
 global String signature{get;set;}
 global String access_token{get;set;}  
}
 

 }