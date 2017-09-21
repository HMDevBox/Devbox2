Public class accountSearch{
Public static List<account> accsearch{get;set;}

Public accountSearch(){
accsearch = new List<account>();

}
@remoteAction
public static List<account> accountSea(){

accsearch = [select name from account];

return accsearch;

}
}