trigger testUpdate on Account (after Update) {
set<id> lstacc=new set<id>();
for(account acc:trigger.new)
{

lstacc.add(acc.id);

}

testACCOUNT tes=new testACCOUNT();
tes.testUpdate(lstacc);
}