@RestResource(urlMapping='/SFDCOktaAuth/*')
global Class SFDCOktaAuth
{
    @HttpPost
    global static OktaAuthenticationResult OktaAuthentication(String username, string password)
    {
        OktaAuthenticationResult Result = new OktaAuthenticationResult();
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://cadence.oktapreview.com/api/v1/sessions?additionalFields=cookieToken');
        req.setTimeout(20000);
        req.setMethod('POST');
        req.setBody('{"username":"santoshs","password":"Smiles123"}');
        req.setHeader('Content-Type','Application/json');
        HttpResponse res = http.send(req);
        String resresult = res.getBody();
        Result = (OktaAuthenticationResult)JSON.deserialize(resresult, OktaAuthenticationResult.class);
        System.Debug('Test' + Result.id);
        if(Result.errorCode == null)
        {
            Result.endURL = '';
            Result.endURL = Result.endURL + 'https://cadence.oktapreview.com';
            Result.endURL = Result.endURL + '/login/sessionCookieRedirect?token=';
            Result.endURL = Result.endURL + Result.cookieToken;
            Result.endURL = Result.endURL + '&redirectUrl=';
            Result.endURL = Result.endURL + 'https://cadence.oktapreview.com';
        }
        return Result;        
    }   
    global class OktaAuthenticationResult
    {
        global String id;
        global String userId;
        global Boolean mfaActive;
        global String cookieToken;
        global String errorCode;
        global String errorSummary;
        global String errorLink;
        global String errorId;
        global String endURL;
    }
}