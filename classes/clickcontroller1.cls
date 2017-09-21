public class clickcontroller1{
public account acc;
public list<account> listacc{get;set;}
public account acc1{get;set;}
public account acc3{get;set;}

public clickcontroller1(apexpages.Standardcontroller stdcontroller){
acc = (account)stdController.getRecord();
listacc=new list<account>();
listacc.add(acc);
acc1.accountnumber='0';
}

public pagereference save(){
// insert acc;
account ac=new account();
listacc.add(ac);
PageReference MyVFPage = Page.clickpage;
MyVFPage.setRedirect(false);
//   return MyVFPage;
 return null; 
}
public string accnumber(){
return null;
}


public string prodetails(){
account acc3=new account(); 
if(acc1.AccountNumber!='0'){

acc3=[select id,name,accountnumber from account where accountnumber=:acc1.accountnumber];

system.debug('Account Name' + acc3.name );
system.debug('Account Number' + acc3.accountnumber);// listprop.clear();


/* for(integer i=listprop.size();i==listprop.size();i++){
pro3.Paid_Amount__c=pro3.Paid_Amount__c+listprop[i].Premium_amount__c;
} */
}

return null;

}

}