public class RetriveBook {
    Public List<Book__c> books;

    public List<Book__c> getBooks() {
        books = [select name,id,title__c,author__c,edition__c from Book__c ];
        return books;
    }

}