@isTest
public class ObjectKontrolTest {
    
    @isTest
    public static void AccountRegisterTest(){
       ObjectKontrol.AccountRegister('User-1'); 
        list<Account> accList = [SELECT Id,Name FROM Account];
        system.debug(accList);
    }
    @isTest
    public static void MullAccTest (){
        list<String> name = new list<string>();
        for(integer i=2; i<=5; i++){
            name.add('User'+i);
        }//for bitis
        ObjectKontrol.MulAcc(name);
        list<Account> alist = [SELECT Id, Name FROM Account];
        system.debug(alist);
    }
    
    @isTest 
    public static void TestMethodT(){
        Account obje_a = new Account();
        obje_a.Name='Deneme Account';
        system.assertEquals('Deneme Account', obje_a.Name,'lutfen gecerli bir isim griniz');
        insert obje_a;
        system.debug(obje_a);
        
        obje_a.Name='Test Acc';
        system.assertEquals('Test Acc', obje_a.Name);
        update obje_a;
        system.debug('Guncel sonuc liste :'+obje_a);
        
        list<Account> deletelist= [SELECT Id,Name FROM Account WHERE Id=:obje_a.Id];
        delete deletelist;
        system.debug('Guncel sonuc liste :'+obje_a);
    }

}