trigger ValidationOnopp on Opportunity (before insert) {
List<Opportunity> listopp=new List<Opportunity>();
Opportunity opp1=new Opportunity();    
integer pr,p,q,sum=0,newpr;    
if(trigger.isInsert){
    for(Opportunity opp:Trigger.new){
        pr=integer.valueof(opp.proposal_no__c); //437921687
        pr=pr/10; //43792168  
        p=pr/10000000;    //4 
        p=p*1;
        sum=sum+p; //4
        p=pr/1000000; // 43
        p=math.mod(p,10);  // 3
        p=p*2;    // 6     
            if(p>10){
                q=p/10; 
                q=q+math.mod(p,10);
                system.debug('***First Value In Q*****' + q);
                p=q;
            }  
        sum=sum+p; // 10
        p=pr/100000; //437
        p=math.mod(p,10); // 7
        p=p*1; //7
        sum=sum+p;  // 17
        p=pr/10000;  //4379
        p=math.mod(p,10); // 9
        p=p*2;  //18
        if(p>10){
                q=p/10;  //1 
                q=q+math.mod(p,10);  //1+8 = 9
                system.debug('***Second Value In Q*****' + q);
                p=q; // 9
            }  
        sum=sum+p; // 27
        p=pr/1000; //43792
        p=math.mod(p,10); // 2
        p=p*1; //2
        sum=sum+p; // 29
        p=pr/100; // 437921
        p=math.mod(p,10);  //1
        p=p*2; // 1
        if(p>10){
                q=p/10;  
                q=q+math.mod(p,10);  
                system.debug('***Third Value In Q*****' + q);
                p=q; 
            } 
        sum=sum+p; // 30
        p=pr/10; // 4379216
        p=math.mod(p,10); //6
        p=p*1; // 6
        sum=sum+p; // 36
        p=pr; // 43792168
        p=math.mod(p,10);  // 8
        p=p*2;  // 16
         if(p>10){
                q=p/10;  //1
                q=q+math.mod(p,10);  //1+6 = 7
                system.debug('***fourth Value In Q*****' + q);
                p=q; // 7
            } 
          sum=sum+p; //  43
        p=sum/10; // 4
        p=p+math.mod(sum,10); //  4+3
        pr=pr*10+p;  // 437921680 +7=437921687
        newpr=integer.valueof(opp.proposal_no__c);    
      if(integer.valueof(opp.proposal_no__c)!=pr)      
        {
        Opp.proposal_no__c.adderror('Please enter valid proposal number');
        }
        
        
    
    }
        
    }    
}