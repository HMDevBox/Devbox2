public class NewController{

public account acc;

public list<account> acc1{get;set;}

public NewController(apexpages.Standardcontroller stdcontroller){


acc = (account)stdController.getRecord();
acc.name='as';
acc.accountnumber='0';

acc1=new list<account>();

acc1.add(acc);

}
public pagereference save(){



// insert acc;


account ac=new account();

acc1.add(ac);


PageReference MyVFPage = Page.clickpage;


  MyVFPage.setRedirect(false);
        
        
     //   return MyVFPage;
        return null; 




}


}