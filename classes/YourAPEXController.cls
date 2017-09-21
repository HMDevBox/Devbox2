public class YourAPEXController{
public Lead ldSource {get;set;}
    public Boolean bolCreateOpp {get;set;}
    public String strAccountId {get;set;}
    public String strStatus {get;set;}
    
    //////////////////////////
    // Constructors / GETers
    //////////////////////////
    public YourAPEXController(ApexPages.StandardController scMain) {
        
        ldSource = [SELECT Id, FirstName, LastName, OwnerId, Company, Street, City, State, PostalCOde, Country, Phone, Fax FROM Lead WHERE Id = :scMain.getId()];
        
        bolCreateOpp = false;
        
    }
    
    public List<SelectOption> getlstCompanyInfo() {
        
        String strCompanyWildcard = '%' + ldSource.Company + '%';
        List<Account> lstAcct = [SELECT Id, Name, Owner.Name FROM Account WHERE Name LIKE :strCompanyWildcard];
        
        List<SelectOption> lstCompanies = new List<SelectOption>();
        
        // Add New Account if not found
        lstCompanies.add(new SelectOption('1','Create New Account: ' + ldSource.Company));

        // Add found Accounts to SelectList
        for(Account a : lstAcct) {
            lstCompanies.add(new SelectOption(a.Id, 'Attach to Existing: ' + a.Name + ' (' + a.Owner.Name + ')'));
        }

        return lstCompanies;        
    }
    
    //////////////////////////
    // Action Methods
    //////////////////////////

    public void doNothing() {  }

    public PageReference convertLead() {
        
        // Create LeadConvert object
        Database.LeadConvert lc = new Database.LeadConvert();
        
        lc.setLeadId(ldSource.Id);
        lc.setOwnerId(ldSource.OwnerId);
        if(strAccountId.length() > 1) { lc.setAccountId(strAccountId); }
        lc.setDoNotCreateOpportunity(bolCreateOpp);
        
        // Set Opportunity Name
        if(bolCreateOpp == false) { lc.setOpportunityName(ldSource.Company); }
        
        // Set Lead Converted Status
        LeadStatus convertStatus = [SELECT Id, MasterLabel FROM LeadStatus WHERE IsConverted=true LIMIT 1];
        lc.setConvertedStatus(convertStatus.MasterLabel);
        
        // Convert!
        Database.LeadConvertResult lcr = Database.convertLead(lc);
        
        // Mop up Opportunity
        if(bolCreateOpp == false) {
            Opportunity o = new Opportunity(Id=lcr.getOpportunityId());
            update o;
        }
        
        // Redirect...
        PageReference prResult;
        if(lcr.isSuccess()) {
            prResult = new PageReference('/' + lcr.getAccountId());
            prResult.setRedirect(true);
            return prResult;    
        } else {
            return null;
        }
        
    }
    }