public class afcontroller{

    public afcontroller(ApexPages.StandardController controller) {

    }

public string firstvalue{get;set;}
public string Secondvalue{get;set;}
public string takenvalue{get;set;}
    
public afcontroller(){
   firstvalue='null';
   secondvalue='null';
}

public string tv(){
takenvalue=firstvalue+secondvalue;
return null;

}
}