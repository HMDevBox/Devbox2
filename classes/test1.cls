public with sharing class test1 {

    public List<Opportunity> objectsToInsert { get; set; } 
    public Integer numberOfRowToRemove { get; set; }
    public Opportunity opp { get; set; }

    public test1()
    {
        objectsToInsert = new List<Opportunity>();
        opp = [ Select Id From Opportunity Limit 1 ];
    }

    // The method to add a new item to the list
    public PageReference addNewObject(){

        Opportunity newObject = new Opportunity(Id = opp.id);
        objectsToInsert.add(newObject);

        return null;
    }

    // The method to remove an item from the list
    public PageReference removeNewObject(){

        objectsToInsert.remove(numberOfRowToRemove);  

        return null;
    }
}