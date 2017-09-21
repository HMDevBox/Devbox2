global class createMemberInbound implements Messaging.InboundEmailHandler 
{
    global Messaging.InboundEmailResult handleInboundEmail(Messaging.inboundEmail email, Messaging.InboundEnvelope env)
    {
    
        Messaging.InboundEmailResult result = new Messaging.InboundEmailResult();
          
        String myPlainText= '';     
            
        myPlainText = email.plainTextBody;  
        
        List<Mileage__c> memb = new List<Mileage__c>();
            
        try 
        {
            Mileage__c mem = new Mileage__c(Miles__c= 4);
            
            memb.add(mem);
            
            insert memb;    
             
            System.debug('New member: ' + memb);   
        } 
            
        catch (Exception e) 
        {
            System.debug('Error is: ' + e);
        }   
          
        result.success = true;
         
        return result;
    }
}