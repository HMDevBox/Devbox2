public class SuppliersName4mShipment{
public static testMethod void method(){
list<shipment__c> p1=[select supplier_number__c,part_number__c from shipment__c limit 3];
for(shipment__c s:p1){
system.debug('supplier nuber'+ s.supplier_number__c);
system.debug('part number' + s.part_number__c);
}
}
}