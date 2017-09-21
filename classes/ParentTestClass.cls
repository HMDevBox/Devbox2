@isTest
Public class ParentTestClass{


@testSetup 
public static void ParentTest1() {

Case cs = new Case();
cs.status = 'MyNew';
cs.Priority = 'Low';
insert cs;
apexpages.currentPage().getparameters().put('id',cs.id); 
}

public static testmethod void test1(){

Case cs1 = new Case();
cs1 = [select id from case where status='MyNew' limit 1];
apexpages.currentPage().getparameters().put('id',cs1.id);
parentController p1=new parentController(new apexpages.standardcontroller(cs1)); 

}
/*
public static testmethod void test2(){

Case cs1 = new Case();
cs1 = [select id from case where status='MyNew' limit 1];
//cs1.status = 'New';
//cs1.Priority = 'Low';
//insert cs1;
apexpages.currentPage().getparameters().put('id',cs1.id);
parentController p1=new parentController(new apexpages.standardcontroller(cs1)); 
}  */


}