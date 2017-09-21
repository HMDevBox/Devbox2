trigger updateaccountinfm on Account (before update) {
  /*  list<account> accold=new list<account>();
    list<account> acc=new list<account>();
    list<contact> lstcon=new list<contact>();
    if(trigger.isupdate){
       if(trigger.new!=trigger.old){
            accold=trigger.old;                   
            acc=trigger.new;
           if(acc[0].name!=accold[0].name){
           // account acc1=new acc([select id,name, (select id,name from contact) from account where name=acc[0].name]); 
                
            contact con=new contact();
                con=[select id,account.id,MailingStreet,Mailingcity,MailingState,MailingPostalcode,MailingCountry from contact where account.id=:acc[0].id];
                // lstcon=[select id,name,account.name from contact where accountname=acc[0].name];
                con.Mailingcity='koramangala';
                con.MailingStreet='4th cross';
                con.MailingState='karnataka';
                con.MailingPostalcode='500060';
                con.MailingCountry='india';
               lstcon.add(con);
               update lstcon;
               
                
           }
         }
    }
  */  
        
}