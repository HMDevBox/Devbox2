Public class TaskEdit{

    Public List<Task1__c> lstcs{get;set;}
    Public List<Task1__c> lstcs1{get;set;}
    Public Task1__c tk1;
    Public Task1__c taskExtend{get;set;}
    public string str;
    Public list<wrappertask> lstwrappertask{get;set;}
    
    
    Public TaskEdit(apexpages.standardcontroller sc){
        str=ApexPages.currentPage().getParameters().get('id');
        lstcs = new List<Task1__c>();
        lstwrappertask=new list<wrappertask>();
        
        for(task1__C tk:[select RemianderType__c,Due_Date__c,Status__c from Task1__c where case__c=:str order by Due_Date__c desc]){
        
            wrappertask wt=new wrappertask(tk);
            lstwrappertask.add(wt);
             
        }
            lstcs1 = new List<Task1__c>(); 
            tk1=new Task1__c ();
            tk1.Case__c=(id)str;
            lstcs1.add(tk1);
             
    }
   
   Public Pagereference Add(){
   
       Pagereference pg;
       pg = new pagereference('/apex/TaskEditPage1');
    
         system.debug('------------------My URL---------------'+pg);
       return pg;
   
   }
        
   Public Pagereference Save(){
       
       System.debug('Inthe Save');
       insert lstcs1; 
       Pagereference pg;
       String str1='/'+str;
       
       pg = new pagereference('/apex/TaskEditPage');    
       return pg;       
      
   }
   
   Public Pagereference extend(){
       Pagereference pg;
       List<wrappertask> listwp=new list<wrappertask>();
       for(wrappertask w:lstwrappertask){
                 
           if(w.CheckBox==true) {
               lstcs1.add(w.tsk);
               taskExtend = w.tsk;
               
           }
       }
       System.debug('Values in Extend------------->>>>>>>> ' + taskExtend);
       pg = new pagereference('/apex/TaskEditPageExtend'); //
       return pg;
   }
   
   Public pagereference extendsave(){
   
      // lstcs1 = new List<Task1__c>(); 
       
     //  lstcs1.add(taskExtend);
       pagereference pgNew;
       
       System.debug('..........Pagereference....... ' + pgNew);
       Task1__c tskextend=new Task1__C();
       tskextend.RemianderType__c = taskExtend.RemianderType__c;
       tskextend.Due_Date__c = taskExtend.Due_Date__c;
       tskextend.Status__c = taskExtend.Status__c;
       tskextend.Case__c = ApexPages.currentPage().getParameters().get('id');
       System.debug('Values in ExtendSave------------->>>>>>>> ' + taskExtend);
       
       insert tskextend;
       
      
       pgNew=new pagereference('/apex/TaskEditPage');
       String str1='/'+str;
      // pgNew=new pagereference(str1); 
       return pgNew;              
      
   }
   
   Public pagereference deletepage(){
   
       Pagereference pg;
       List<wrappertask> listwp=new list<wrappertask>();
       List<Task1__c> lsttkdel=new List<Task1__c>();
       for(wrappertask w:lstwrappertask){
                 
           if(w.CheckBox==true) {
               lstcs1.add(w.tsk);
               lsttkdel.add(w.tsk);
                             
           }
       }
       Delete lsttkdel;
       System.debug('Values in Extend------------->>>>>>>> ' + taskExtend);
       pg = new pagereference('/apex/TaskEditPage'); //
       return pg;
     
   }
   
   public class wrappertask{
   
       public Task1__c tsk{get;set;}
       Public Boolean Checkbox{get;set;}
       
       public wrappertask(Task1__c tk){
       
       tsk=tk;
       CheckBox=false;
       
       
       }
   }
   
}