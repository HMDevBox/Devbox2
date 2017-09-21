public class getcityfmsupply{
public static testmethod void method(){
supplier__c su=new supplier__c();
list<supplier__c> s1=[select city__c from supplier__c where city__c='hyderabad'];
su.city__c='BHAGYANAGAR';
s1.add(su);
update s1;
}
}