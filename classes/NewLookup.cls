Public class NewLookup{

Public String Test{get;set;}
Public String searchByName{get;set;}
Public List<account> lstaccount{get;set;}
public boolean displayPopup {get; set;}
Public string NameChosen{get;set;}

Public NewLookUp(){

    displayPopup  = false;
    lstaccount = [select id,Name from account];
    
}

Public void SearchMethod(){

  displayPopup = true;
  string ser= searchByName + '%';
  system.debug('===========Search By Name=====' + searchByName);
  lstaccount = [select id,Name from account where name like :ser ];

}

Public Void SelectedValues(){
System.debug('=============CHECKING THE VALUE=============' + Apexpages.currentPage().getParameters().get('contIdParam'));
Test = Apexpages.currentPage().getParameters().get('contIdParam');

}
}