Public class ValidationsController{

public validationscontroller(){
list<lead> leads=new list<lead>();
Boolean error=false;
Integer idx=1;
for (lead ld:leads)
{
 if ( (null==ld.mobilephone || ld.mobilephone.length()!=14) &&(null==ld.Phone || ld.Phone.length()!=14) )
 {
  error=true;
  ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, 'Line ' + idx + ' - please enter valid phone/mobile number'));
 }
 idx++;
}
}
}