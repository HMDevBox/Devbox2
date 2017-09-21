public class testbankacc{
public static testmethod void method(){
createbankacc firstacc=new createbankacc();
firstacc.setvalues(1001,'maddy',10000);
firstacc.getvalues();
firstacc.deposit(5000);
firstacc.getvalues();
firstacc.withdraw(2000);
firstacc.getvalues();
}
}