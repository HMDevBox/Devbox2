trigger ValidationOnProposalNo on Opportunity (before insert,before update) {
   List<opportunity> lstopp=new List<opportunity>(); 
   opportunity opp=new opportunity();
   Decimal prp;
   /* Integer prpint,sumprp,prpint1,po;
   Integer[] pr;
   Integer[] prd;
   list<integer> lstprp=new list<integer>();
    */
   Integer prpcon,p,sump=0,q,prpgen; 
   fOR(opportunity oppt:trigger.new)
   {
       prp=Oppt.proposal_no__c;
       System.debug('prp value' + prp);
       prpcon=prp.intvalue()/10; /* 11234567 */
       p=prpcon/10000000; /* first value  1 */
       system.debug('first value' + p);
       p=p*1;
       sump=sump+p;
       system.debug('sump value' + sump);
       if(p>10){
           Integer x;
           x= p/10+math.mod(p,10);
           sump=x;
       }
       q=Math.mod(prpcon,10000000); /* 1234567 */
       p=q/1000000; /* second value  1 */
       system.debug( 'second value' + p);
       p=p*2;
       sump=sump+p;
       system.debug('sump value' + sump);
       if(p>10){
           Integer x;
           x= p/10+math.mod(p,10);
           sump=sump+x;
       }       
       q=Math.mod(q,1000000); /* 234567 */
       p=q/100000; /* third value  2 */
       system.debug('third value'+p );
       p=p*1;
       sump=sump+p;
       system.debug('sump value' + sump);
       if(p>10){
           Integer x;
           x= p/10+math.mod(p,10);
           sump=sump+x;
       } 
       q=Math.mod(q,100000); /* 34567 */
       p=q/10000; /* fourth value  3 */
       system.debug('fourth value' + p);
       p=p*2;
       sump=sump+p;
       system.debug('sump value' + sump);
       if(p>10){
           Integer x;
           x= p/10+math.mod(p,10);
           sump=sump+x;
       } 
       q=Math.mod(q,10000); /* 4567 */
       p=q/1000; /* fifth value  4 */
       system.debug('fifth value' + p);
       p=p*1;
       sump=sump+p;
       system.debug('sump value' + sump);
       if(p>10){
           Integer x;
           x= p/10+math.mod(p,10);
           sump=sump+x;
       } 
       q=Math.mod(q,1000); /* 567 */
       p=q/100; /* sixth value  5 */
       system.debug('sixth value'+p);
       p=p*2;
       sump=sump+p;
       system.debug('sump value' + sump);
       if(p>10){
           Integer x;
           x= p/10+math.mod(p,10);
           sump=sump+x;
       } 
       q=Math.mod(q,100); /* 67 */
       p=q/10; /* seventh value  6 */
       system.debug('seventh value'+ p);
       p=p*1;
       sump=sump+p;
       system.debug('sump value' + sump);
       if(p>10){
           Integer x;
           x= p/10+math.mod(p,10);
           sump=sump+x;
       } 
       q=Math.mod(q,10); /* 7 */
       p=q;
       system.debug('eigth value' + p);
       p=p*2;
       /* sump=sump+p; */
       system.debug('before adding into sump value' + sump);
       if(p>9){
           Integer x;
           x= p/10 + math.mod(p,10);
           system.debug('x th value' + x);
           sump=sump+x;
           system.debug('sump value' + sump);
       } 
       sump=Math.mod(sump,10);
       system.debug(' final sump value' + sump);
       sump=10-sump;
       system.debug('after nsubtract sump value' + sump);
       prpgen=prpcon*10+sump; 
       system.debug('generated proposal no' + prpgen); 
       if(prpgen!=Oppt.proposal_no__c){
          Oppt.proposal_no__c.adderror('Please enter valid proposal number');
       }
   }
}