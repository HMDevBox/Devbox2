Public class testACCOUNT{

public void testUpdate(set<id> acc){

account acc1=[select id,ownership from account where id=:acc];
acc1.ownership = 'Private';
update acc1;

}
}