Public Class CadenceExternalAppComm
{
    Public CadenceExternalAppComm()
    {
    }
    
    Public String OktaAuthentication(String username, string password)
    {
        String Result = '';
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://cadence.oktapreview.com/api/v1/sessions?additionalFields=cookieToken');
        req.setTimeout(20000);
        req.setMethod('POST');
        req.setBody('{"username":"santoshs","password":"Smiles123"}');
        //req.setBody('{"username":"santhosh.s@happiestminds.com","password":"Smiles@123"}');
        req.setHeader('Content-Type','Application/json');
        HttpResponse res = http.send(req);
        String resresult = res.getBody();
        OktaAuthenticationResult oktaaures = (OktaAuthenticationResult)JSON.deserialize(resresult, OktaAuthenticationResult.class);
        System.Debug('Test' + oktaaures.id);
        if(oktaaures.errorCode == null)
        {
            Result = Result + 'https://cadence.oktapreview.com';
            Result = Result + '/login/sessionCookieRedirect?token=';
            Result = Result + oktaaures.cookieToken;
            Result = Result + '&redirectUrl=';
            Result = Result + 'https://cadence.oktapreview.com';
        }
        return Result;        
    }
    
    public class OktaAuthenticationResult
    {
        public String id;
        public String userId;
        public Boolean mfaActive;
        public String cookieToken;
        Public String errorCode;
        Public String errorSummary;
        Public String errorLink;
        Public String errorId;
    }
}