@isTest
public class UpdateTotalSponsoredMealFeeeTest {
    @isTest
    static void testUpdateTotalSponsoredMealFee() {
        // Account kaydını oluştur
        Account testAccount = new Account(Name = 'Test Account');
        insert testAccount;
        // Duty_Status__c kaydını oluştur
        Duty_Status__c testDutyStatus = new Duty_Status__c();
        testDutyStatus.Account__c = testAccount.Id;
        testDutyStatus.Duty_Type__c = '(+) Business Trip';
        testDutyStatus.Start_Date__c = Date.today();
        testDutyStatus.End_Date__c = Date.today() + 5;
        // Tetikleyiciyi çağır
        Test.startTest();
        insert testDutyStatus;
        Test.stopTest();
        // Account kaydını güncelle
        testAccount = [SELECT Total_Sponsored_Meal_Fee__c FROM Account WHERE Id = :testAccount.Id];
        // Toplam Sponsorlu Yemek Ücreti doğru hesaplanmış mı kontrol et
        System.assertEquals(150, testAccount.Total_Sponsored_Meal_Fee__c);
    }
}