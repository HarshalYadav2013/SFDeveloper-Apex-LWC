public with sharing class AssignCasesToSLAQueue {
    public static final String priorityType = 'High';
    public static final String originType = 'Web';

    public static void reAssignCasesToQueue(Case caseRecord){
        if(caseRecord != null){
            if(caseRecord.Priority == priorityType && caseRecord.Origin == originType){
                List<Group> mySLAQueue = [SELECT Id, Name, Type, DeveloperName FROM Group Where Type = 'Queue' AND DeveloperName = 'SLA_Queue'];
                if(mySLAQueue.size() == 1){
                    caseRecord.OwnerId = mySLAQueue[0].Id;
                    Database.update(caseRecord, true);
                }
            }
        }

    }
    
}

/*
Anonymous Window Code
Case caseRec = [Select Id, Origin, Priority, Owner.Name FROM Case WHERE Id = '500gL00000DOItcQAH'];
AssignCasesToSLAQueue.reAssignCasesToQueue(caseRec);
*/