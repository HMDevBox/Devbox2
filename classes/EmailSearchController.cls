public class EmailSearchController {
    public String Email {get; set;}
    public List<Contact> contactList {get; set;}
      
    public void doSearch() {
        contactList = Database.query('SELECT id, email, firstname, lastname FROM Contact WHERE email LIKE \'%' + String.escapeSingleQuotes(Email) + '%\'');
    }
}