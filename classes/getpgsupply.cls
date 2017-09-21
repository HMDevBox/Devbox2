public class getpgsupply{
public static testmethod void metod(){
supplier__c sup=new supplier__c();
/* list<supplier__c> s2=new list<supplier__c>();
s2.add(sup);
sup.supplier_name__c='ravi';
sup.Status__c='20';
sup.city__c='hyderabad'; 
insert s2; */
list<supplier__c> re=[select supplier_name__c,status__c,city__c from supplier__c limit 1];
for(supplier__c su:re){
system.debug('returned information' + re) ;
/* system.debug('returned information' + re[1]) ; */
}
}
}