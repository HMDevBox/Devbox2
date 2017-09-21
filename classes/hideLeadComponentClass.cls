Public class hideLeadComponentClass
{

    public Lead leadRecord;
    public string comments;

    public hideLeadComponentClass(ApexPages.StandardController stdController) 
    {
        System.debug('in constructor');
        this.leadRecord= (Lead)stdController.getRecord(); // getting the record id
        System.debug('in constructor'+leadRecord);
        comments= Apexpages.currentPage().getparameters().get('comment');
    }

    Public void captureCallHistory()
    {
    
        system.debug('====test ===' + comments);
        if(comments != null)
        {
            system.debug('====test ===' + comments);
            leadRecord=[Select id,How_can_we_help_you__c from lead where id=:leadRecord.id]; // getting the value of record
            
            leadRecord.How_can_we_help_you__c = 'Call';
            update leadRecord;
        }   

    }
}