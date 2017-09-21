Public class smsController
{

    public Lead leadRecord;
    public string smsContent{get;set;}

    public smsController(ApexPages.StandardController stdController) 
    {    
        this.leadRecord= (Lead)stdController.getRecord(); 
        leadRecord=[Select id,mobilePhone from lead where id=:leadRecord.id]; // getting the value of record  
    
    }
    
    Public pageReference sendMethod(){
        
        pageReference p; 
        sendSmsApi.sendSmsResult Result= new sendSmsApi.sendSmsResult();
        Result = sendSmsApi.sendSms(leadRecord.mobilePhone,smsContent);
        system.debug('=========RESULT==========' + Result);
        if(Result.status  == 'success')
        { 
        
            p = new pagereference('/' + leadRecord.id);
            return p;
        } 
    
    return null;
    }
    
    
}