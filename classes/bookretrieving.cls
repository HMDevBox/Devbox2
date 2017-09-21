public class bookretrieving{

list<book__c> book= [select title__c,author__c from book__c limit 5];
}