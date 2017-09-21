trigger emailAttachmentVisibleOnParent on Attachment (before insert) {
    
    Map<id,id> MapAtt=new Map<id,id>();
    Map<id,id> MapCase=new Map<id,id>();
    Map<id,id> MapCaseAtt=new Map<id,id>();
    
    for(Attachment a : trigger.new ) {  
        
        if( a.parentid == null)
        
        continue;
        String s = string.valueof( a.parentid );     
        
        if( s.substring( 0, 3 ) == '02s' ) {  
        MapAtt.put(a.parentid,a.id);
        }
        System.debug('VALUES >>>>>>> 1 ' + MapAtt);
        
        
    }
    
    for(EmailMessage em:[select id,parentID from EmailMessage where id = :MapAtt.keyset()]){
        
        MapCase.put(em.id,em.parentid);
        System.debug('VALUES >>>>>>> 2 ' + MapCase);
        
    }
     
    for(Id emids:MapAtt.Keyset())
    {
        
        MapCaseAtt.put(MapAtt.get(emids),MapCase.get(emids));
        System.debug('VALUES >>>>>>> 3 ' + MapCaseAtt);
        
    }
    
    for(Attachment a:trigger.new){
    
        a.parentid=MapCaseAtt.get(a.id);
        System.debug('VALUES >>>>>>> 4 ' + a.parentid);
        
    }
}