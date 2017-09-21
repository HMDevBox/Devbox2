public class TestBankAccount{
    public static testMethod void method(){
    // BankAccount sbi=new BankAccount(1067489,'sasikanth',35000);
    savings s1=new savings();
    s1.getvalues();
    savings s2=new savings(1067489,'sasikanth',35000,1000);
    s2.getvalues();
    s2.setValues(1009378923,'Suresh kumar',40000,1000);
    s2.getvalues();
    s2.deposit(20000);
    s2.balanceEnquiry();
    s2.withdraw(59000);
    s2.balanceEnquiry();
    }
    
}