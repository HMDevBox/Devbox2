public class TwoObjCon{

public account acc{get;set;}

public list<account> acc1{get;set;}
public list<contact> listcon{get;set;}


public TwoObjCon(){



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