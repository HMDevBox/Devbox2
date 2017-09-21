public class savings extends BankAccount{
         //data members
     integer min_bal;
      
      // create 
     public savings(){
     super();
     min_bal=0;
     }
    public savings(Integer Ac_no,String Acc_na,Integer Bal,Integer mb){
    super(Ac_no,Acc_na,Bal);
    min_bal=mb;
    }
    public void setValues(Integer Ac_no,String Acc_na,Integer Bal,Integer mb){
    super.setvalues(Ac_no,Acc_na,Bal);
    min_bal=mb;
    }
    public override void withdraw(Integer amt){
    if(balance-amt<min_bal){ 
    system.debug('insufficient balance');
    }
    else
    balance-=amt;
    }
    public override void getValues(){
    /*system.debug('the acount no is'+Acc_no);
    system.debug('the acount holder name is' + Acc_name);
    system.debug('the account balance is'+balance);*/
    super.getvalues();
    system.debug('the min balance is '+min_bal);
    }

}