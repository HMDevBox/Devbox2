public with sharing class ListViewDemo1 {

  private String baseQuery = 'Select ID, CaseNumber FROM case ORDER BY CaseNumber ASC';
  public String AccFilterId {get; set;}
  private Integer pageSize = 10;

  public ListViewDemo1(){}

  public ApexPages.StandardSetController AccSetController {
        get{
            if(AccSetController == null){
                AccSetController = new ApexPages.StandardSetController(Database.getQueryLocator(baseQuery));
                AccSetController.setPageSize(pageSize);

                // We have to set FilterId after Pagesize, else it will not work
                if(AccFilterId != null)
                {
                  AccSetController.setFilterId(AccFilterId);
                }
            }
            return AccSetController;
        }set;
    }

  public ListViewDemo1(ApexPages.StandardSetController c) {   }

    //Navigate to first Page
    public void firstPage()
    {
      AccSetController.first();
    }

    //Navigate to last Page
    public void lastPage()
    {
      AccSetController.last();
    }

    //Navigate to Next page
    public void next()
    {
      if(AccSetController.getHasNext())
      {
        AccSetController.next();
      }
    }

    //Navigate to Prev Page
    public void prev()
    {
      if(AccSetController.getHasPrevious())
      {
        AccSetController.previous();
      }
    }

    public List<case> getAccounts()
    {
      return (List<case>)AccSetController.getRecords();
    }

    //Get all available list view for case
    public SelectOption[] getAccountExistingViews(){
        return AccSetController.getListViewOptions();
    }

    /**
    * Reset List View
    */
    public PageReference resetFilter()
    {
      AccSetController = null;
        AccSetController.setPageNumber(1);
        return null;
    }

}