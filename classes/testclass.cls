public class testclass{

public static list<contact> testlst= new list<contact>();

public list<contact> testlst1= new list<contact>();

Public static integer count=0;
Public integer count1=0;

public void method1(){


    testlst = [select id from contact limit 1];
    testlst1 = [select id from contact limit 1];
    count = count+1;
    count1 = count1+1;
    
    System.debug('=======testlst=======' + testlst.size());
    System.debug('=======testlst1=======' + testlst1.size());
    System.debug('=======count=======' + count);
    System.debug('=======count1=======' + count1);




}

public void method2(){


    testlst = [select id from contact limit 1];
    testlst1 = [select id from contact limit 1];
    count = count+1;
    count1 = count1+1;
    System.debug('=======testlst=======' + testlst.size());
    System.debug('=======testlst=======' + testlst1.size());
    System.debug('=======count=======' + count);
    System.debug('=======count1=======' + count1);





}



}