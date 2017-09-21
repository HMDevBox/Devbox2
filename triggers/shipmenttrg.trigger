trigger shipmenttrg on shipment__c (after insert) {
shipment__c sh=trigger.new[0];
if(sh.quantity__c>400){
}

}