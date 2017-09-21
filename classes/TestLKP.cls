Public Class TestLKP{

Public Contact con{get;set;}
Public Position__c pos{get;set;}
Public shipment__c shp{get;set;}
String Id;

Public TestLKP (ApexPages.StandardController controller){
con=new Contact();
pos=new Position__c();
shp=new shipment__c();
System.debug('>>>>>>>>HIRE'+Pos.Hiring_Manager__c);
System.debug('>>>>>>>>Shipment'+shp.supplier_number__c);


}
public void act(){

System.debug('>>>>>>>>HIRE'+Pos.Hiring_Manager__c);
System.debug('>>>>>>>>Shipment'+shp.supplier_number__c);



}
}