trigger UpdatingLeadDetails on Lead (before update) {

for(lead ld:trigger.new){

if(ld.LeadSource==trigger.oldmap.get(ld.id).LeadSource){

ld.LeadSource= 'Partner Referral';

}

}

}