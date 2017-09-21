public class check1{
public account acc1{get;set;}
public account acc2{get;set;}
public check1(apexpages.standardcontroller controller){
acc1.name='malli';
}
public void getnumber(){
acc2=[select accountnumber,name from account where name=:acc1.name];
}
}