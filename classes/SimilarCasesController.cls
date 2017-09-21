public class SimilarCasesController {

    List<case> lstcas=new List<case>();
    set<id> SetCaseIds = new Set<id>();
    public list<wrappercase> listwrapper{get;set;}
    user usr=new user();
    
    public similarCasesController(){
    
    usr=[select id from user where id=:UserInfo.getUserId()];
    
    listwrapper = new list<wrappercase>();
    for(case cs:[SELECT Id, CaseNumber, Owner.Name, Subject, Status FROM Case WHERE 
                 owner.name = 'Indexing Queue']){
     
     listwrapper.add(new wrappercase(cs));
                 
    }             
    }
    
    public Case getCurrentCase() {
        String cid = ApexPages.currentPage().getParameters().get('cid');
        return [SELECT Id, CaseNumber, Reason, Product__c FROM Case WHERE Id = :cid];
    }
    
    public Case[] getSimilarCases() {
      //  Case currentCase = getCurrentCase();
        return [SELECT Id, CaseNumber, Owner.Name, Subject, Status FROM Case WHERE 
                owner.name = 'Indexing Queue'];
                
    }
    
    Public pagereference selectedValues(){
    pagereference pg;
        for(wrappercase w: listwrapper) {
          if(w.checked == true) {
          SetCaseIds.add(w.case1.id);
          }
        }      
        for(case cs:[SELECT Id, ownerid,Owner.Name, Subject, Status FROM Case WHERE 
                      id=:setcaseids]){
                      
             system.debug(cs);  
             cs.ownerid=usr.id; 
             lstcas.add(cs);          
        }   
                   
        update lstcas;
        pg=new pagereference('/apex/Mycase');
        return pg;
    }
     
    Public class wrappercase{
    
    Public Case Case1{get;set;}
    Public Boolean checked{get;set;} 
    
    Public wrappercase(Case cs){
    
    case1=cs;
    checked=false;
    
    }
    } 
    
}