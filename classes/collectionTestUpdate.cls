public class collectionTestUpdate{
       public static testMethod void main(){
      Book__c book1=new Book__c();
      List<Book__c> b1=new List<Book__c>();
      book1 =[select Title__c,Price__c from Book__c where Price__c<300];
      book1.price__c=500;
      b1.add(book1);
      update b1;
       }
       }