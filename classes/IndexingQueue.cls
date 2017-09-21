public class IndexingQueue
{
    private integer totalRecs = 0;
    private integer OffsetSize = 0;
    private integer LimitSize= 5;
    public List<case> lstcase{get;set;}
    Public datetime CaseDt{get;set;}
    Public string CaseDate{get;set;}
    
    public IndexingQueue()
    {
        totalRecs = [select count() from case where owner.name = 'Indexing Queue'];
        List<Case> casedtvalue =new List<case>([select lastmodifieddate from case where status='Closed' 
                                                order by lastmodifieddate desc limit 1]);
        CaseDt = casedtvalue[0].lastmodifieddate;  
        CaseDate = CaseDt.format('dd/MM/yyyy');                                       
        System.debug('Oldest close date' + CaseDt);
        System.debug('Oldest close date' + CaseDate);
        Caseslist();
    }
    public void Caseslist()
    {
          lstcase=new List<case>();
          lstcase = Database.Query('SELECT CaseNumber, Subject, status, SuppliedEmail, Priority  FROM Case Where owner.name=\'Indexing Queue\' LIMIT :LimitSize OFFSET :OffsetSize');
     //   List<Case> lstcase = Database.Query('SELECT Name, website, AnnualRevenue, description, Type FROM Case where owner.name =\'Indexing Queue\' LIMIT :LimitSize OFFSET :OffsetSize');
      
        System.debug('Values are' + lstcase);
        
    }
    public void FirstPage()
    {
        System.debug('Size of Offset >>>>> in F' + Offsetsize);
        OffsetSize = 0;
        Caseslist();
    }
    public void previous()
    {
        System.debug('Size of Offset >>>>> in P' + Offsetsize);
        OffsetSize = OffsetSize-LimitSize;
        Caseslist();
    }
    public void next()
    {
        System.debug('Size of Offset >>>>> in N' + Offsetsize);
        OffsetSize = OffsetSize+LimitSize;
        Caseslist();
    }
    public void LastPage()
    {
        System.debug('Size of Offset >>>>> In L' + Offsetsize);
        OffsetSize = totalrecs-math.mod(totalRecs,LimitSize);
        Caseslist();
    }
    public boolean getPreviousPg()
    {
        if(OffsetSize == 0)
        return true;
        else
        return false;
    }
    public boolean getNextPg()
    {
        if((OffsetSize + LimitSize) > totalRecs)
        return true;
        else
        return false;
    }
}