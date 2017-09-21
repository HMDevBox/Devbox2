global class BAexam implements Database.Batchable<Book__c>{

            global Iterable<Book__c> start(Database.BatchableContext bc){
            List<Book__c> blist =new List<Book__c>();
            blist=[select id,Name,Title__c,Author__c,Price__c from Book__c];
            return blist; 

}

            global void execute(Database.BatchableContext bc, LIST<Book__c> blist){
            
            for(Book__c b1:blist){
            b1.price__C=0;
            update b1;
            
            }  
            
            }  
            
            global void finish(Database.BatchableContext bc){
            
            
            }     
            
           


}