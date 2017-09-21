public class Createbankacc{
integer accno;
string accname;
integer balance;
public void setvalues(integer acno,string acname,integer bal){
accno=acno;
accname=acname;
balance=bal;
}
public void getvalues(){
system.debug('account holder name'+ accname);
system.debug('account no'+ accno);
system.debug('account balance'+ balance);
}
public void deposit(integer dep){
balance=balance+dep; 
}
public void withdraw(integer wd){
balance=balance-wd;
}
}