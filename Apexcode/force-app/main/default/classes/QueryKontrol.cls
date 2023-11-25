public class QueryKontrol {
    public static void AccountList(list<Account> a){
        for (Account b:a){
            system.debug(b);
        }    
    }
    public static void ContactEmail(list<Contact> c){
        integer y=0;
        for (Contact d:c){
            y++;
            d.Email='info'+y+'@clarusway.com';            
            system.debug(d.Email);
        }    
    }
}