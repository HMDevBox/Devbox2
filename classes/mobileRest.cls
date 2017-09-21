@RestResource(urlMapping='/PhoneAPIWebhook/*')
global class mobileRest {
    @HttpPost
    global static string postItems () {
        
          RestRequest  req = RestContext.request;
          RestResponse res = RestContext.response;
        
        Result re = new Result();
        re=(Result)JSON.deserialize(req.requestBody.tostring(), Result.class);
      //  a.debug__c =re.leadId + ' ' + re.phoneNumber + ' ' +  re.startTime + ' ' + re.endTime ;
        
        lead le = new lead();
        le = [select id,CallLog__c from lead where MobilePhone=:re.phoneNumber];
        return le.id; 
           
    
    }
    
    public class Result{
    
 //   public string leadId;
    public string phoneNumber;
 /*   public string startTime;
    public string endTime;  */
    
    
    }
}