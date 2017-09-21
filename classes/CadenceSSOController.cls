public class CadenceSSOController{
    
    Public String cadenceAppCode{Get; Set;}
    Public String cadenceAppName{Get; Set;}
    Public String cadenceAppUserId{Get; Set;}
    Public String cadencesiteuserlang{Get; Set;}
    Public Contact cadenceintextuser{Get; Set;}
    Public String userpwd{Get; Set;}
    Public String newuserpwd{Get; Set;}
    Public String newuserSQ{Get; Set;}
    Public String newuserSQA{Get; Set;}
    Public Contact cadenceappuser {Get; Set;}
    Public Dummy_Contact__c dummyContact{Get; Set;}
    Public String hostidorrefkey{Get; Set;} 
    
    Public CadenceSSOController()
    {
        newuserpwd = '';
        newuserSQ ='';
        newuserSQA ='';
        hostidorrefkey = 'Hostid';
        dummyContact = new Dummy_Contact__c();
        cadenceAppUserId = apexpages.currentpage().getparameters().get('userid');
        if(cadenceAppUserId != null && cadenceAppUserId != '')
        {
            cadenceappuser = [SELECT id, 
                                     FirstName, 
                                     LastName, 
                                     Email, 
                                     Phone 
                              FROM 
                                  Contact 
                              WHERE id = :cadenceAppUserId];
        }
        else{
            cadenceappuser = new Contact();
        }
        cadenceAppCode = apexpages.currentpage().getparameters().get('appcode');
        if(cadenceAppCode == 'cos')
        {
            cadenceAppName = 'Cadence Online Support';
        }
        else if(cadenceAppCode == 'lms')
        {
            cadenceAppName = 'LMS';
        }
        else if(cadenceAppCode == 'cdotcom')
        {
            cadenceAppName = 'Cadence.com';
        }
        else if(cadenceAppCode == 'edtap')
        {
            cadenceAppName = 'Edoan-Tap';
        }
        cadencesiteuserlang = 'en';
        cadenceintextuser = new Contact();
        userpwd = '';
    }
    
    Public void changedispalylanguage()
    {
        if(cadencesiteuserlang == 'ja')
        {
            cadencesiteuserlang = 'en';
        }
        else
        {
             cadencesiteuserlang = 'ja';   
        }
    }
    
    Public pagereference btnCSSOLogin()
    {
        pagereference p = null;
        String r = SFDCOktaAuth.OktaAuthentication('', '').endURL;
        if(r != '' && r != null)
        {
            p = new pagereference(r);
        }
        return p;   
    }
    
    Public pagereference lnkCadenceForgetPwd()
    {
        return null;   
    }
    Public pagereference lnkCadenceRegisterNewUser()
    {
        pagereference p = new pagereference('/apex/CadenceOnlineReg?appcode='+cadenceAppCode+'&langcode='+cadencesiteuserlang);
        p.setRedirect(true);
        return p;   
    }
}