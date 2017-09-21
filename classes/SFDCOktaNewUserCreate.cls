@RestResource(urlMapping='/SFDCOktaNewUserCreate/*')
global Class SFDCOktaNewUserCreate
{
    @HttpPost
    global static OktaCreateNewUserResult OktaCreateNewUser(String fName, 
                                                              String lName,
                                                              String uemail, 
                                                              String secondmail,
                                                              String loginid,
                                                              String mobile,
                                                              String pwd,
                                                              String question,
                                                              String answer)
    {
        OktaCreateNewUserResult Result = new OktaCreateNewUserResult();
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://cadence.oktapreview.com/api/v1/users?activate=true');
        req.setHeader('Authorization','SSWS 00pTCv1w5jZ0g-rgp5cK9Q0wQs9iNakj3bjRHPrUym');
        req.setTimeout(20000);
        req.setMethod('POST');
        String dynamicreqbody = '';
        /*dynamicreqbody = dynamicreqbody + '{"profile":{';
        dynamicreqbody = dynamicreqbody + '"firstName": "Isaac",';
        dynamicreqbody = dynamicreqbody + '"lastName": "Brock",';
        dynamicreqbody = dynamicreqbody + '"email": "isaac@example.org",';
        dynamicreqbody = dynamicreqbody + '"secondEmail": "isaac2@example.org",';
        dynamicreqbody = dynamicreqbody + '"login": "isaac@example.org",';
        dynamicreqbody = dynamicreqbody + '"mobilePhone": "555-415-1337"},';
        dynamicreqbody = dynamicreqbody + '"credentials":{"password":{"value":"GoAw@y123"},';
        dynamicreqbody = dynamicreqbody + '"recovery_question":{"question":"Who is a major player in the cowboy scene?",';
        dynamicreqbody = dynamicreqbody + '"answer": "Cowboy Dan"}';
        dynamicreqbody = dynamicreqbody + '}}';*/
        dynamicreqbody = '{"profile":{"firstName": "Isaac","lastName": "Brock","email": "isaac@example.org","secondEmail": "isaac2@example.org","login":"isaac@example.org","mobilePhone": "555-415-1337"},"credentials":{"password":{"value":"GoAw@y123"},"recovery_question":{"question": "Who is a major player in the cowboy scene?","answer": "Cowboy Dan"}}}';
        req.setBody(dynamicreqbody);
        req.setHeader('Content-Type','Application/json');
        HttpResponse res = http.send(req);
        String resresult = res.getBody();
        Result = (OktaCreateNewUserResult)JSON.deserialize(resresult, OktaCreateNewUserResult.class);
        System.Debug('Test' + Result.id);
        if(Result.errorCode == null)
        {
            Contact c = new Contact(FirstName = 'Isaac', 
                                    LastName = 'Brock',
                                    Email = uemail,
                                    phone = mobile);
            insert c;
            Result.sfdcContactid = c.id; 
        }
        else if (Result.errorCode != null)
        {
            Cadence_Online_Service_Log__c c = new Cadence_Online_Service_Log__c(Operation_Status__c = 'Failed',
                                                                                Webservice_Callout_Method__c = 'POST',
                                                                                WebService_Callout_Request__c = 'https://cadence.oktapreview.com/api/v1/users?activate=true',
                                                                                WebService_Callout_Request_Body__c = dynamicreqbody,
                                                                                Webservice_Callout_Request_Header1_Name__c = 'Authorization',
                                                                                Webservice_Callout_Request_Header1_Value__c = 'SSWS 00pTCv1w5jZ0g-rgp5cK9Q0wQs9iNakj3bjRHPrUym',
                                                                                Webservice_Callout_Request_Header2_Name__c = 'Content-Type',
                                                                                Webservice_Callout_Request_Header2_Value__c = 'Application/json');
            insert c;
            Attachment a = new Attachment(body = Blob.ValueOf(resresult), ParentId = c.id, name = 'WebserviceResponse.txt');
            insert a;
            Result.logobjid = c.id; 
        }
        return Result;
    }
    
    global class OktaCreateNewUserResult
    {
        global String id;
        global String sfdcContactid;
        global String errorSummary;
        global String errorCode;
        global String errorId;
        global String logobjid;
    }
}