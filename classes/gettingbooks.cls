public class gettingbooks{
public list<book__c> book1{set;get;}
public list<book__c> getbooks(){ 
book1=[select title__c,author__c,price__c,edition__c from book__c];
return null;
}
}