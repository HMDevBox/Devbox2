public class OpController{
 public PageReference methodOnLoad()
 {
  String ObjectPrefix = Opportunity.sObjectType.getDescribe().getKeyPrefix();   
  // or Opportunities am not sure
  PageReference pr = new PageReference('/' + ObjectPrefix + '/o');
  pr.setRedirect(true);
  return pr;
 }
}