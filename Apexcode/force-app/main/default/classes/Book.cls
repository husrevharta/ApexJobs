public class Book {
    
    Public static void RecordB(string y_isim, string k_isim){
        
        Yazar__c y = new Yazar__c();
        y.Name = y_isim;
        insert y;
        
        Kitap__c k = new Kitap__c();
        k.Name = k_isim;
        k.Yazar__c=y.id;
        insert k;
    }
    
    Public static void UpdateK(){
        list<Kitap__c> kitapList = [SELECT Id,Name FROM Kitap__c];
        list<Kitap__c> emptyList = new list <Kitap__c>();
        ID Yid = 'a01Do00001JLu01IAD';
       
        for(Kitap__c single:kitapList){
            
            single.Yazar__c=Yid;
            emptyList.add(single);
        }//for bitis
        update  emptyList;
    }

}