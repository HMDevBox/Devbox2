public class controllermethod 
{
public  Account newproj{get;set;}
   public contact  module{get;set;}

    public controllermethod()
    {
         newproj = new account();
         module=new contact();
    }
 public PageReference savecreatenew() {
    Insert newproj;
        return null;
    }

}