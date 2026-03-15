public with sharing class TaskController {

    @AuraEnabled(cacheable=true)
    public static List<Task> fetchTaskBySubject(String subjectString){

        return [SELECT Id, Subject, Status, Description, Priority, ActivityDate FROM Task WHERE Subject = :subjectString];
    }
}