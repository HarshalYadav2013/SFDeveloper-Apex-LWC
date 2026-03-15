public with sharing class GetLastFiveTask {

    public static List<Task> getTodayTasks(){

        return [SELECT Id, Subject, Priority FROM Task WHERE CreatedDate = TODAY ORDER BY CreatedDate DESC LIMIT 5];
    }       
}