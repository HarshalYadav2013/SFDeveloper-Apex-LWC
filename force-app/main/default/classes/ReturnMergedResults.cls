public with sharing class ReturnMergedResults {

    public static Set<Case> returnMergedTasks(String queueName1, String queueName2){

        Set<Case> mergedList = new Set<Case>();
        List<Case> slaRecords = [SELECT Id FROM Case WHERE Owner.Name = :queueName1];
        List<Case> escalationRecords = [SELECT Id FROM Case WHERE Owner.Name = :queueName2];

        mergedList.addAll(slaRecords);
        mergedList.addAll(escalationRecords);

        return mergedList;
    }
    
}