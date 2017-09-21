Public class mycases{
Public List<case> lstcase{get;set;}

public mycases(){
user usr=[select id from user where id=:userinfo.getuserid()];
lstcase=[select CaseNumber, Owner.Name, Subject, Status FROM Case WHERE ownerid=:usr.id];
}

}