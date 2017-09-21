public class MyBookClass {

    public MyBookClass(ApexPages.StandardController controller) {

   }
   
    
   public book__c b1=new book__c();
   
   public mybookclass(){
   }
   public String name;
   public void setName(string n){
   name=n;
   }
   public String getName(){
   return name;
   }
   public String author;
   public void setauth(string au){
   author=au;
   }
   public String getauth(){
   return author;
   }
   public integer price;
   public void setprice(Integer pr){
   price=pr;
   }
   public Integer getprice(){
   return price;
   }
   public Decimal Edition;
   public void setEdi(Decimal ed){
   Edition=ed;
   }
   public Decimal getEdi(){
   return Edition;
   }
    public PageReference Save() {
  PageReference pr = new PageReference('https://ap1.salesforce.com/a04/o');
    b1.title__c = getName();
    b1.author__c = getAuth();
    b1.price__c = getPrice();
    b1.edition__c = getEdi();
    insert b1;
        return pr;
    }
   
   //b1.Title__c = getname();

}