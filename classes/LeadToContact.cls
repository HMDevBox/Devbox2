public class LeadToContact
{
public PageReference convert()
{
try
{
String id = ApexPages.currentpage().getParameters().get('id');

Database.LeadConvert lc = new Database.LeadConvert();
lc.setLeadId(id);
lc.setDoNotCreateOpportunity(true);

LeadStatus convertStatus = [SELECT Id, MasterLabel FROM LeadStatus WHERE IsConverted=true LIMIT 1];
lc.setConvertedStatus(convertStatus.MasterLabel);

Database.LeadConvertResult lcr = Database.convertLead(lc);
if(lcr.isSuccess())
{
String cId = lcr.getContactId();
PageReference redirect = new PageReference('/' + cId);
redirect.setRedirect(true);
return redirect;
}
}
catch(Exception e)
{
ApexPages.addMessages(e);
}
return null;
}
}