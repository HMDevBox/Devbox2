trigger suppliertrg on supplier__c (before insert,before update){
//validate records befor insert
//change the field to one value to other value before insert
//so we use trigger context variable as reference for which type of operation we are doing
if(trigger.isinsert){
for(supplier__c s:trigger.new){
    if(s.status__c<='20'){
    s.status__c='50';
}
}
}
//validate records before update
if(trigger.isupdate){
for(supplier__c c:trigger.new){
if(c.city__c=='delhi'){
c.city__c='dilli';
}
}
}
}