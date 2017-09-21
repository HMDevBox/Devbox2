Public class UsingInEmailTemplate{
Public id accountid{get;set;}
Public List<account> lstaccount{get;set;}

Public UsingInEmailTemplate(){

accountid=ApexPages.currentPage().getParameters().get('Id');
lstaccount = [select id,name,SLA__c from account where id=:accountid];

}

Public UsingInEmailTemplate(apexpages.standardcontroller sc){

lstaccount = new List<account>();
accountid=ApexPages.currentPage().getParameters().get('Id');
lstaccount = [select id,name,SLA__c,OwnerId  from account where id=:accountid];

}

Public List<account> getAccountValues(){

lstaccount = [select id,name,SLA__c,OwnerId from account where id=:accountid];

return lstaccount;

}

Public void sendMethod(){

Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
mail.setTargetObjectId(lstaccount[0].OwnerID);
mail.setSenderDisplayName('SFDC');
mail.setUseSignature(false);
mail.setBccSender(false);
mail.setSaveAsActivity(false);
EmailTemplate et=[Select id from EmailTemplate where DeveloperName=:'TestingVfTemplate'];
mail.setTemplateId(et.id);
mail.setwhatid(lstaccount[0].id);
Messaging.SendEmailResult [] r = Messaging.sendEmail(new Messaging.SingleEmailMessage[] {mail});

/*
account acc = new account(id=lstaccount[0].id);
acc.sla__c = 'Gold';
update acc;
*/

}


}