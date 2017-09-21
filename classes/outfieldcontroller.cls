public class outfieldcontroller{
public account acc{get;set;}
public outfieldcontroller(){
acc=new account();
}
public string getvalues(){
account acc1=new account();
acc1=[select name,accountnumber from account where name=:acc.name limit 1];
system.debug('Account number' + acc1.accountnumber);
acc.accountnumber=acc1.accountnumber;
return null;
}
}