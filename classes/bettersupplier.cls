public class bettersupplier{
public static testmethod void method(){
list<supplier__c> st=[select name,status__c from supplier__c where city__c ='BOMBAY'];
for(supplier__c s:st){
if(s.status__c == '25')
{
system.debug('good supplier'+s.name);
}
else{
system.debug('bad supplier'+s.name);
}
}
}
}