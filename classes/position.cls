Public class position{

Public Position__c Position1{get;set;}


Public position(){
 Position1=new Position__c();
 Position1.Close_Date__c=date.today();
  
 }
 }