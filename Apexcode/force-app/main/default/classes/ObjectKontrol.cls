public class ObjectKontrol {

    public static void AccountRegister(string accName) {
        
        Account obje= new Account();
        obje.Name= accName;
        insert obje;
    }
    
    public static void MulAcc(list<string> namelist){
        list<Account> emptylist= new list<Account>();
        for(string singledata:namelist){
            Account objectmull = new account();
            objectmull.Name = singledata;
            emptylist.add(objectmull);
        }
        insert emptylist;
    }
}