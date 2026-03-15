public class IndependentWiresController {

    @AuraEnabled(cacheable = true)
    public static List<Case> getCases(){
        return [SELECT Id, Subject, Origin, Description FROM Case LIMIT 5];
    }

    @AuraEnabled(cacheable = true)
    public static List<tASK> getTasks(){
        return [SELECT Id, Subject, ActivityDate, Description FROM Task LIMIT 5];
    }
   
}