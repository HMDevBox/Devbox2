trigger Casetrigger on Case (before insert, before update, after insert, after update, after delete) {
    /*
 if(Trigger.isBefore && Trigger.isInsert){
 
 contact a=[select id,email from contact];
  for (Case caseItem : Trigger.New) {
  caseItem.ownerid;//Invalid id value for this SObject type: 005900000004w0rAAA
 caseItem.contactid='005900000004w0r'; //Invalid id value for this SObject type: 005900000004w0rAAA

}
 
 }
  list<id> caseIds = new list<id>();

  if(Trigger.isAfter && Trigger.isUpdate){
              for (Case caseItem : Trigger.New) {
         caseIds.add(caseItem.id);
        }
                  
  }
  CasetriggerHandler a= new CasetriggerHandler();
  a.chatterPost(caseIds);
  for(case cs:[select id,ownerid from case where id in:caseIds])
  {
      cs.ownerid='005900000004w0r';
      update cs; //Update failed. First exception on row 0 with id 5009000001eOxYjAAK; first error: INVALID_CROSS_REFERENCE_KEY, invalid cross reference id: []
  }
*/

}