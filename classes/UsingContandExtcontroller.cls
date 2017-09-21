public class UsingContandExtcontroller{

public contact con{get;set;}

public list<contact> listcon{get;set;}

public UsingContandExtcontroller(apexpages.Standardcontroller stdcontroller1){


con =(contact)stdController1.getRecord();

listcon=new list<contact>();

listcon.add(con);

}
public pagereference save1(){

// insert acc;

contact con1=new contact();

listcon.add(con1);

PageReference MyVFPage = Page.clickpage;
MyVFPage.setRedirect(false);
  
  //   return MyVFPage;
  
        return null; 

}
}