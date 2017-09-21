public virtual class BankAccount{
    //data members
    protected Integer Acc_no;
    protected String Acc_name;
    protected integer Balance;
    static integer count=0;
    //member methods
    //create
    public BankAccount(){
    Acc_no=104567;
    Acc_name='raju';
    Balance=100;
    
    }
    public BankAccount(Integer Ac_no,String Acc_na,Integer Bal){
    Acc_no=Ac_no;
    Acc_name=Acc_na;
    Balance=Bal;
    
    }
    //I/P
    public virtual void setValues(Integer Ac_no,String Acc_na,Integer Bal){
    Acc_no=Ac_no;
    Acc_name=Acc_na;
    Balance=Bal;
    }
    //o/p
    public virtual void getValues(){
    system.debug('the acount no is'+Acc_no);
    system.debug('the acount holder name is' + Acc_name);
    system.debug('the balace is'+Balance);
    }
    public static void getCount(){
    system.debug('the count is'+count);
    }
    //Action
    public void deposit(Integer amt){
    Balance+=amt;
    }
    public virtual void withdraw(Integer amt){
    Balance-=amt;
    }
    public void balanceEnquiry(){
    system.debug('the balance is'+Balance);
    }

}