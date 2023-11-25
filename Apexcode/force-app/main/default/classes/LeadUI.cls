public with sharing class LeadUI {
    public LeadUI() {

    }
    @AuraEnabled
    public static Boolean createLead(Lead infoLead){
        try {
            insert infoLead;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
        return true;
    }
}