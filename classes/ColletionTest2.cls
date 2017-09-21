public class ColletionTest2{
       public static testMethod void main(){
       List<Rectangle> r1=new List<Rectangle>();
       Book__c book=new Book__c();
       List<Book__c> b1=new List<Book__c>();
       b1.add(book);
       
       book.Title__c = 'cloud computing';
       book.Author__c='arun sepuri';
       book.Edition__c=3.0;
       book.price__c=545;
       insert b1;
       List<book__c> return_books = [select Title__c,Author__c,Price__c,Edition__c from book__c limit 1];
       for (book__c b2: return_books){
       system.debug('returned books' + return_books);       
       }
       
       }
       
}