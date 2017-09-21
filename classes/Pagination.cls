public class Pagination
{
private integer totalRecs = 0;
private integer OffsetSize = 0;
private integer LimitSize= 5;
public Pagination()
{
totalRecs = [select count() from account];
}
public List<account> getacclist()
{
List<account> acc = Database.Query('SELECT Name, website, AnnualRevenue, description, Type FROM account LIMIT :LimitSize OFFSET :OffsetSize');
System.debug('Values are' + acc);
return acc;
}
public void FirstPage()
{
System.debug('Size of Offset >>>>> in F' + Offsetsize);
OffsetSize = 0;
}
public void previous()
{
System.debug('Size of Offset >>>>> in P' + Offsetsize);
OffsetSize = OffsetSize-LimitSize;
}public void next()
{
System.debug('Size of Offset >>>>> in N' + Offsetsize);
OffsetSize = OffsetSize+LimitSize;
}public void LastPage()
{
System.debug('Size of Offset >>>>> In L' + Offsetsize);
OffsetSize = totalrecs-math.mod(totalRecs,LimitSize);
}
public boolean getprev()
{
if(OffsetSize == 0)
return true;
else
return false;
}
public boolean getnxt()
{
if((OffsetSize + LimitSize) > totalRecs)
return true;
else
return false;
}
}