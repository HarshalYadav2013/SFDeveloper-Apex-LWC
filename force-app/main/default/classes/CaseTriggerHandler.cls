public with sharing class CaseTriggerHandler {
    
    public static void handleAfterUpdate(List<Case> caseRecords){
        List<Case> caseList = new List<Case>();
        for(Case eachCase : caseRecords){
            if(eachCase.Status == 'Escalated'){
                caseList.add(eachCase);
            }
        }
        if(!caseList.isEmpty()){
            System.enqueueJob(new TaskCreatorQueueable(caseList), 2);
        }
    }
}