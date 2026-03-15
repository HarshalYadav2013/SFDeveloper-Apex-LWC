public with sharing class AssignCaseToDifferentQueue {

    public static void assignCasesToQueue(Id caseRecId){

        List<Group> queueInfo = [SELECT Id FROM Group WHERE Type = 'Queue' AND DeveloperName = :System.Label.My_Primary_Queue LIMIT 1];
        List<Case> caseToAssign = [Select Id, OwnerId FROM Case WHERE Id = :caseRecId LIMIT 1];
        if(caseToAssign.size() == 1 && queueInfo.size() == 1){
            caseToAssign[0].OwnerId = queueInfo[0].Id;
            update caseToAssign[0];
        }
    }
    
}