public class ChangeCyNamesofSupplier{
public static testmethod void method(){
supplier__c su=new supplier__c();
/*list<supplier__c> s1=new list<supplier__c>();*/
su=[select city__c from supplier__c where city__c='mumbai'];
su.city__c='bombay';
/*s1.add(su);
update s1;*/
update su;
}
}