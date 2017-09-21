/* Author: Mallikarjun
   Description: If Case is created from email to case for which the email is having any attachment add to case attachments.
*/ 
trigger CaseAttachment on EmailMessage (After insert) {

    // Defination of variables 
    List<EmailMessage> lstem=new List<EmailMessage>();
    List<case> lstcase =new list<case>();
    List<Attachment> lstatt=new List<Attachment>();
    map<id,id> MapofCaseAndAttachment=new map<id,id>();
    set<id> SetEmailid=new set<id>();
    set<id> setAtt=new Set<id>();
        
    for(EmailMessage em:Trigger.new)
    {
        System.debug('Email Message id>>>>>> ' + em.id);
        System.debug('Generated case id >>>>>> '+ em.parentid);
        System.debug('Email status >>>>>> '+ em.hasAttachment + ' Incoming status ' + em.Incoming);
        if(em.hasAttachment==true && em.Incoming==true){
            System.debug('Entered in loop');
            MapofCaseAndAttachment.put(em.id,em.parentid);
            SetEmailid.add(em.id);
        }     
    }
    
    if(MapofCaseAndAttachment.size()>0){
    
    system.debug('map values>>>>'+MapofCaseAndAttachment);
    
    for(EmailMessage em:[select id,(select id from Attachments) from emailmessage where id=:MapofCaseAndAttachment.keyset()])
    {
        system.debug('Testing >>>>>>> ' + em.attachments);    
        for(Attachment att:em.attachments){
            
            System.debug('Value of the attachment' + att.id);
            setAtt.add(att.id);
        }    
            
        
    }
    }
    
    if(setAtt.size()>0){
    for(Attachment att:[select id,parentid from Attachment where id=:setAtt])
    {
    
        att.parentid=MapofCaseAndAttachment.get(att.parentid);
        lstAtt.add(att);
        
    }     
    }
    
    if(lstAtt.size()>0){
    
    update lstAtt;
    
    }
    
}