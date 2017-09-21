public class rest {
    private PageReference page;
    private string action;
    private string session;
    private string result;
 
    public rest() {
        //constructor, let's grab the session token here
        session = userInfo.getSessionId();
 
        page = ApexPages.currentPage();
        this.action = page.getParameters().get('action');
        if (action == null) action = '';
 
        integer q = action.indexOf('query/?q=');
 
        if(q >= 0) {
            string qs = action.substring(q + 9);
            action = action.substring(0, q + 9);
 
            action += EncodingUtil.urlEncode(qs, 'UTF-8');
        }
    }
 
    public void retrieve() {
        //we'll call the REST API here
        http h = new http();
 
        httprequest req = new httprequest();
        //note that 'na1' may be different for your organization
        req.setEndpoint('https://ap1.salesforce.com/services/data/v33.0/' + action);
        req.setMethod('GET');
        req.setHeader('Authorization', 'OAuth ' + session);
        req.setTimeout(60000);
 
        httpresponse res = h.send(req);
 
        result = res.getBody();
    }
 
    //getter method to return JSON result
    public string getResult() {
        return this.result;
    }
}