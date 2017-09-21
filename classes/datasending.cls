public class datasending{
list<supplier__c> s1;
public void setvalues(list<supplier__c> name){
s1=name;
}
public void getvalues(){
system.debug('name of the supplier'+ s1);
}
}