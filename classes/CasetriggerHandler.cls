public class CasetriggerHandler{


public void chatterPost(list<id> caseIds )
{

  FeedItem fedDel = new FeedItem();
  fedDel.id='005900000004w0r';
  delete fedDel ; //Invalid id value for this SObject type: 005900000004w0rAAA
  
  list<FeedItem> feedInsert = new list<FeedItem> ();
  for(case cs:[select id,ownerid from case where id in:caseIds])
  {
      FeedItem fed = new FeedItem();
      fed.Body ='Case Feed';
      fed.ParentId='005900000004w0r';
      feedInsert.add(fed); 
      
      case c = new case();
      c.subject='Test';
      c.description='Test';
      c.ownerid='005900000014w0r'; //Insert failed. First exception on row 0; first error: INACTIVE_OWNER_OR_USER, operation performed with inactive user [005900000014w0r] as owner of case: []
      insert c;
  }
  insert feedInsert;//Insert failed. First exception on row 0; first error: INVALID_CROSS_REFERENCE_KEY, invalid cross reference id: []

}

}