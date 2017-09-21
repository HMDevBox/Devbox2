Public class appButton{

    Public contract contract{get;set;}
    Public string contractid{get;set;}
    
    Public appButton(apexpages.standardcontroller sc){
    
        contractid = apexpages.currentpage().getparameters().get('id');
        contract = [select id,Status from contract where id=:contractid];    
    
    }
    
    @RemoteAction
    Public static void updateAction(string contractid){
    
        contract contract;
        contract = [select id,Status from contract where id=:contractid]; 
        contract.status = 'In Approval Process';
        update contract;
        system.debug('testing the example' +contractid );               
        pagereference pg=new pagereference('/' + contractid);    
        
    
    }
    
    
}