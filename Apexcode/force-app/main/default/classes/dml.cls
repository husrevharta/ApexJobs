public class dml {
    /*public void f11(){
        Account acc1 = new Account (Name= 'Test',Phone= '123456',Rating= 'Hot');
        insert acc1;
    }

    public void f11(string yeniisim, string tel ){
        Account acc1 = new Account ();
        acc1.Name='yeniisim';
        acc1.phone=Tel;
        insert acc1;
    }
    public void f12(){
        List<Account> yeniAcclar = New List<Account>();
        Account acc1=new Account(Name= 'Test1');
        Account acc2=new Account(Name= 'Test2');
        Account acc3=new Account(Name= 'Test1');
        yeniAcclar.add(acc1);
        yeniAcclar.add(acc2);
        yeniAcclar.add(acc3);
        insert yeniAcclar;
    }
    
    public void f13(){
       List<Account> hesaplar = [SELECT Id,Name FROM Account WHERE Name LIKE '%Test%']; 
        List<Account> yeniHesap = New List<Account>(); 
        for(Account w:hesaplar){
            w.Name='Husrev Harta';
            yeniHesap.add(w);
        }
        update yeniHesap;
    }
    
  public void f14(){
       List<Account> hesaplar = [SELECT Id,Name FROM Account WHERE Name LIKE '%Husrev%']; 
        
      delete  hesaplar;
    } 
    
    public void f15() {
        List<Account> hesaplar = [SELECT Id,Name FROM Account WHERE Name LIKE '%Husrev%' ALL ROWS];
        undelete hesaplar;
        
    }*/
    public void f16(){
        List<Account> hesaplar = [SELECT Id,Name FROM Account WHERE Name LIKE '%Husrev%']; 
        for(Account w:hesaplar){
        w.Name= 'Hands-on DML';   
        }
       Account yeniAcc= new Account(Name = 'Hands-on Upsert');
        hesaplar.add(yeniAcc);
        upsert hesaplar;
    }
    
}