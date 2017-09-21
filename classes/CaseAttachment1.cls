Public class CaseAttachment1{


    Public CaseAttachment1(){
    
    }
    
    Public static void CaseAttachmentMethod(List<EmailMessage> lstem){
    
        System.debug('Email Values >>>>>> '+ lstem[0].id + ' ' + lstem[0].parentid);
        
        map<id,id> MapofCaseAndAttachment=new map<id,id>(); 
        List<Attachment> lstatt=new List<Attachment>();
        for(EmailMessage em:lstem){
        
            MapofCaseAndAttachment.put(em.id,em.parentid);
           
        }
        
        System.debug('Values of cases >>>>>> ' + MapofCaseAndAttachment );
        if(MapofCaseAndAttachment.size()>0){
        
            for(attachment att:[select id,parentid from attachment where parentid=:MapofCaseAndAttachment.keyset()]){
                
                att.parentid=MapofCaseAndAttachment.get(att.parentid);
                lstAtt.add(Att);
        
            }
            
            if(lstAtt.size()>0){
            
                update lstAtt;
            }    
        
        }
    }
    
}