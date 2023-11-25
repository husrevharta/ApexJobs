@isTest

public class ProcessTest {
    
    @isTest
    public static void SumTest(){
        Process.Sum(4,6);
        
    }
    @isTest
    public static void SubTest(){
        Process.Sub(10,6);
    }
    @isTest
    public static void MulTest(){
        integer sonuc=Process.Mul(4,5);
        system.debug('Gelen sonuc degeri: '+sonuc);
    }
    @isTest
    public static void DivTest(){
        decimal sonuc2=Process.Div(25,5);
        system.debug('Gelen bölme sonuc degeri: '+sonuc2);
    }
    @isTest
    public static void PasswordKontrolTest(){
        integer result3 = Process.PasswordKontrol('4542kdkdkd52');
        system.assertEquals(8, result3,'Yanlis girdi yaptiniz');
        system.debug('password deger :' +result3);
    }
    
}