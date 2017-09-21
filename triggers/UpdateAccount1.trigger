trigger UpdateAccount1 on Account (before insert) {
list<account> acc=new list<account>();
    list<account> acc1=new list<account>();
    list<contact> lstcon=new list<contact>();
    if(trigger.isupdate){
       for(account a:trigger.new){  
           Account oldacc= trigger.oldmap.get(a.id);
           Account newacc= trigger.newmap.get(a.id);
           if(newacc.name!=oldacc.name){
           // account acc1=new acc([select id,name, (select id,name from contact) from account where name=acc[0].name]); 
                
            contact con=new contact();
                con=[select id,accountid,MailingStreet,Mailingcity,MailingState,MailingPostalcode,MailingCountry from contact where accountid=:a.id];
                // lstcon=[select id,name,account.name from contact where accountname=acc[0].name];
                con.MailingStreet='4th cross'; 
                con.Mailingcity='koramangala';
                con.MailingState='karnataka';
                con.MailingPostalcode='500060';
                con.MailingCountry='india';
               lstcon.add(con);
               update lstcon;
               acc1.add(newacc);
           }  
                
           }
         }
}