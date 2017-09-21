@RestResource(urlMapping='/MsgAPIWebhook/*')
global class messageRest {
    @HttpPost
    global static string postItems () {
        
          RestRequest  req = RestContext.request;
          RestResponse res = RestContext.response;
       //  Account a=new account();
     //    a.name='message';
        Result re = new Result();
        re=(Result)JSON.deserialize(req.requestBody.tostring(), Result.class);
      //  a.debug__c =re.leadId + ' ' + re.phoneNumber + ' ' +  re.startTime + ' ' + re.endTime ;
        
        lead le = new lead();
        le = [select id,CallLog__c from lead where id=:re.leadid];
        le.CallLog__c  = re.leadId + re.phoneNumber + ' ' +  re.startTime + ' ' + re.endTime ;
        update le;
       

        // insert a;
 return le.id;
    }
    
    public class Result{
    
    public string leadId;
    public string phoneNumber;
    public string startTime;
    public string endTime; 
    
    
    }
}