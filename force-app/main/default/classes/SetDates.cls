public with sharing class SetDates {
    public static void apexLists(){
        List<Opportunity> opps = [SELECT Id, Last_Stage_Change_Date__c FROM Opportunity Limit 600];
        for (Opportunity o : opps) {
            o.Last_Stage_Change_Date__c = Date.Today()+5;
            System.Debug(o.Last_Stage_Change_Date__c);
        }
        update opps;
    }
}