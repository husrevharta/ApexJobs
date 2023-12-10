/**
 * @description       : 
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 07-11-2023
 * @last modified by  : Selçuk GÖKTAŞ
**/
public without sharing class LeadUI {
    public LeadUI() {

    }

    @AuraEnabled
    public static string createCampaignMember(CampaignMember cm ){
        try {
            insert cm;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
        return cm.id;
    }

    @AuraEnabled(cacheable=true)
    public static string getCampaign(String UTMID){
        
        List<Campaign> campRecords = New List<Campaign>();

        try {
            campRecords =[SELECT Id, Name, Type, Status, StartDate, ExpectedRevenue 
                        FROM Campaign 
                        WHERE Name=:UTMID LIMIT 1];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }

        return campRecords[0].id;
    }

    @AuraEnabled
    public static String createAd(Ad__c ad){
        try {
            insert ad;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }

        return ad.id;
    }


    @AuraEnabled
    public static string createLead(Lead infoLead){
        
        try {
            insert infoLead;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }

        return infoLead.id;
    }
}