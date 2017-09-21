Public class devToDev{
public string sid{get;set;}
public string urlstr{get;set;}

Public devToDev(){

partnerSoapSforceCom.Soap sp = new partnerSoapSforceCom.Soap();
String username = 'mano0217@reddy.com';
String password = 'Manohar@20OHotkpIPuz6lYZn5lwANBWx9e';

partnerSoapSforceCom.LoginResult loginResult = sp.login(username, password);

system.debug('   loginResult ' + loginResult);
system.debug('   loginResult ' + loginResult.sessionId);
sid=loginResult.sessionId;
urlstr = 'https://mano-dev-ed--manoharlightnig.ap2.visual.force.com/apex/datatable?sessionId=' + sid;
}

}