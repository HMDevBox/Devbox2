Public class parentController{

Public case cse{get;set;}
Public Boolean prev{get;set;}
Public Boolean nxt{get;set;}
Public List<SimilarCasesWrapper> lstSimilarCase{get;set;}
String caseId;
Public Account personAcc;
private integer totalRecs = 0;
private integer OffsetSize = 0;
private integer LimitSize= 1;

    Public parentController(Apexpages.standardController sc){
    
        prev = true;
        nxt = true;
        lstSimilarCase=new List<SimilarCasesWrapper>(); 
        cse =new case();
        personAcc=new Account(); 
        
        caseId= Apexpages.currentPage().getparameters().get('id');
        for(case cs:[select  id,CaseNumber,Origin,Owner.Name,CreatedByid,ClosedDate,Account_CheckBox__c,CreatedDate,Description,Accountid,
                     Subject,Priority,Status,LastModifiedById,SuppliedEmail,account.Name,Name__c,ParentID from case where id=:caseId]){
                     
            cse=cs;             
            System.debug('--------List Size------' + lstSimilarCase);                
        }  
                   
    
    }

    Public void saveMethod(){
    
        cse.Account_CheckBox__c = true;
        Update cse;    
        
    }
    
    Public void ContactInfm(){
      
        try{
            totalRecs = 0;
            OffsetSize = 0;
            LimitSize= 1;
            
            
            system.debug('VALUE OF CONTACT ID-----------'+cse.Accountid);
             
            personAcc=[select id,Name from Account where id=:cse.Accountid];
            
            totalrecs = [select Count() from case where (Accountid!=null and Accountid=:cse.Accountid) and 
                           id!=:caseID and ParentID=null];
              
            for(case cs:[select id,CaseNumber,Subject,Status,Name__c from case where (Accountid!=null and Accountid=:cse.Accountid) and 
                           id!=:caseID and ParentID=null LIMIT :LimitSize OFFSET :OffsetSize]){
                              
                    SimilarCasesWrapper scw=new SimilarCasesWrapper(cs);
                    lstSimilarCase.add(scw);
                      
            }
            cse.Name__c = personAcc.Name;
             
            System.debug('--------List Size------' + lstSimilarCase); 
            System.debug('--------Account Name------' + cse.Name__c);  
            
            if(OffsetSize == 0){
                prev = true;
                nxt = false;
                system.debug('==Prev1==' + prev + '==nxt1==' + nxt);
            }else if((OffsetSize + LimitSize) > totalRecs){
                nxt = true;
                prev = false;  
                system.debug('==Prev==2' + prev + '==nxt==2' + nxt);             
            }else{
                nxt = true; 
                prev = true;      
            } 
            system.debug('==Prev==' + prev + '==nxt==' + nxt);
           
        }
           
        catch(exception e){
          
              System.debug('----------GARBAGE-----------');
          
        }
         
    }     
    public class SimilarCasesWrapper{
       
        public case cs{get;set;}
        Public Boolean Checkbox{get;set;}
           
        public SimilarCasesWrapper(case cs){
       
            This.cs=cs;
                  
        }
   }
   
   
    Public Void ListWrapper(){
        
        lstSimilarCase=new List<SimilarCasesWrapper>();
        for(case cs:[select id,CaseNumber,Subject,Status,Name__c from case where (Accountid!=null and Accountid=:cse.Accountid) and 
                           id!=:caseID and ParentID=null LIMIT :LimitSize OFFSET :OffsetSize]){
                              
                    SimilarCasesWrapper scw=new SimilarCasesWrapper(cs);
                    lstSimilarCase.add(scw);
                      
        }
    
    
    }
    public void FirstPage()
    {
        System.debug('Size of Offset >>>>> in F' + Offsetsize);
        OffsetSize = 0;
        ListWrapper();
    }
    public void previous()
    {
        System.debug('Size of Offset >>>>> in P' + Offsetsize);
        OffsetSize = OffsetSize-LimitSize;
        ListWrapper();
    }
    public void next()
    {
        System.debug('Size of Offset >>>>> in N' + Offsetsize);
        OffsetSize = OffsetSize+LimitSize;
        ListWrapper();
    }
    public void LastPage()
    {
        System.debug('Size of Offset >>>>> In L' + Offsetsize);
        OffsetSize = totalrecs-math.mod(totalRecs,LimitSize);
        ListWrapper();
    }
/*    public boolean getprev()
    {
        if(OffsetSize == 0)
        return true;
        else
        return false;
    }
    public boolean getnxt()
    {
        if((OffsetSize + LimitSize) > totalRecs)
        return true;
        else
        return false;
    }
       
*/
}