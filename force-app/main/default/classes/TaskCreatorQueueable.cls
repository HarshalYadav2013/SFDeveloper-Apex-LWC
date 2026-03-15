public with sharing class TaskCreatorQueueable implements Queueable {

    public List<Case> caseRecords;

    public TaskCreatorQueueable(List<Case> caseList) {
        caseRecords = caseList;

    }

    public void execute(QueueableContext context){
        List<Task> tRecList = new List<Task>();

        for (Case eachCase : caseRecords) {
            Task tRec = new Task();
            tRec.Subject = 'Check and follow up';
            tRec.Priority = 'Medium';
            tRec.ActivityDate = System.today() + 2;
            tRec.WhatId = eachCase.Id;
            tRec.OwnerId = eachCase.OwnerId;
            tRecList.add(tRec);
        }
        if(!tRecList.isEmpty()){
            insert tRecList;
        }
    }
}