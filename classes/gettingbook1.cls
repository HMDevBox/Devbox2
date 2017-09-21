public class gettingbook1 {
public list<book__c> book1;
public list<book__c> getbook1(){ 
book1=[select title__c,author__c,price__c,edition__c from book__c limit 4];
return book1;
}
}