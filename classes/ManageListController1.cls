public class ManageListController1 
{
 public List<AccountWrapper> wrappers {get; set;}
 public static Integer toDelIdent {get; set;}
 public static Integer addCount {get; set;}
 private Integer nextIdent=1;
  
 public ManageListController1()
 {
  wrappers=new List<AccountWrapper>();
  
   wrappers.add(new AccountWrapper(nextIdent));
   nextIdent++;
  
 }
  public void delWrapper()
 {
  Integer toDelPos=-1;
  for (Integer idx=0; idx<wrappers.size(); idx++)
  {
   if (wrappers[idx].ident==toDelIdent)
   {
    toDelPos=idx;
   }
  }
   
  if (-1!=toDelPos)
  {
   wrappers.remove(toDelPos);
  }
 }
  
 public void addRows()
 {
  for (Integer idx=0; idx<addCount; idx++)
  {
   wrappers.add(new AccountWrapper(nextIdent++));
  }
 }
  
 public PageReference save()
 {
  List<Account> accs=new List<Account>();
  for (AccountWrapper wrap : wrappers)
  {
   accs.add(wrap.acc);
  }
   
  insert accs;
   
  return new PageReference('/' + Schema.getGlobalDescribe().get('Account').getDescribe().getKeyPrefix() + '/o');
 }
  
 public class AccountWrapper
 {
  public Account acc {get; private set;}
  public Integer ident {get; private set;}
   
  public AccountWrapper(Integer inIdent)
  {
   ident=inIdent;
   acc=new Account(Name='Bulk Acc ' + ident);
  }
 }
}