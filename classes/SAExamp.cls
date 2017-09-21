global class SAExamp implements schedulable{

global void execute(SchedulableContext sc){
       BAexam ba1=new BAexam();
       ID jobid  = Database.executeBatch(ba1);

}






}