@RestResource(urlMapping='/testAccount/*')
global class AcountTestRest
{
    @HttpGet
    global static account queryaccount(){
    
        account acc=[select id,name from account limit 1];
        return acc;
        
    }
    @HttpPost
    global static String createaccount(String name) {
        account acc = new account(
            Name=name);
            insert acc;
        return acc.Id;
    }
}