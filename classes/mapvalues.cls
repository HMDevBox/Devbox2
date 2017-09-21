public with sharing class mapvalues {
    Public map<Account,List<contact>> productMap{get; set;}
    Public List<contact> contat;
    Public List<string> str{get;set;}
    Public integer var{get;set;}
    public map<integer,string> str1{get;set;}
    
    public mapvalues()
    {
    productMap =new map<Account,List<contact>>();
    str1=new map<integer,string>();
    contat=new List<contact>();
    str=new List<string>();
    var = 1;
    str.add('Account');
    str1.put(1,'Account');
    str1.put(2,'Contact');

    str.add('Contact');
    /*
    for(Account acc:[select id,name,(select id,name from contacts) from account limit 2])
    {
     
     str.add(acc.name);
     for(contact con:acc.contacts)
     {
         str.add(con.name);
     }    
     
     
     
    } */
     
     system.debug('>>>>>'+productMap.size());
    
    
    }
}