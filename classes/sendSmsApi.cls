@RestResource(urlMapping='/sendSmsApi/*')
global Class sendSmsApi
{
    @HttpPost
    global static sendSmsResult sendSms(String phoneNumber,string content)
    {
        sendSmsResult Result = new sendSmsResult();        
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('http://api.textlocal.in/send/');
        req.setTimeout(20000);
        req.setMethod('POST');
        string body = '';
        body +=  'username=goldy414@gmail.com&hash=41887a891e75047cd4e9a5e8079eea1756e8af1f9a71384d6932a9d82ed5fd0c&numbers=917022584448&' + 'message=' + content;
        req.setBody(body);
        req.setHeader('Content-Type','application/x-www-form-urlencoded');
        HttpResponse res = new HttpResponse();
        res = http.send(req);        
        String resresult = res.getBody();
        system.debug('==========API RES============'+resresult);
        try
        {
            Result = (sendSmsResult)JSON.deserialize(resresult, sendSmsResult.class);
        }
        Catch(Exception e)
        {

        }
        return Result;
    }

    global class sendSmsResult
    {
        global String balance;
        global String status;
    }
}