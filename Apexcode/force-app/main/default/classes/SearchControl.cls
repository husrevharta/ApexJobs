public class SearchControl {

    public static void Ara (String kelime) {
        list<list<SObject>> searchList = [FIND:kelime IN ALL FIELDS RETURNING Account(Name),Contact(LastName)];
    
    list<Account> AccList = searchList.get(0);
        list<Contact> ConList = searchList.get(1);
        
        for (Account singleacc:AccList){
            system.debug(singleacc);
        }
        for(Contact singleCon:ConList){
            system.debug(singleCon);  
        }
    }
}