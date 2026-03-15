public class BatchForOpportunites implements Database.Batchable<SObject>{

     public Database.QueryLocator start(Database.BatchableContext context){
        String baseQuery = 'SELECT Id, Name, StageName FROM Opportunity ';
        String filterQuery = 'WHERE StageName = \'Closed Won\' AND CloseDate < LAST_N_DAYS:7';
        String finalQuery = baseQuery + filterQuery;
        return Database.getQueryLocator(finalQuery);
    }

    public void execute(Database.BatchableContext context, List<Opportunity> scope){
        Map<Id, Id> accountOwnerMap = new Map<Id, Id>(); // AccountId -> OwnerId

        // Fetch account owners
        Set<Id> accountIds = new Set<Id>();
        for (Opportunity opp : scope) {
            if (opp.AccountId != null) {
                accountIds.add(opp.AccountId);
            }
        }

        if (!accountIds.isEmpty()) {
            for (Account acc : [SELECT Id, OwnerId FROM Account WHERE Id IN :accountIds]) {
                accountOwnerMap.put(acc.Id, acc.OwnerId);
            }
        }

        // Create Tasks for Account Owners
        List<Task> tasks = new List<Task>();
        for (Opportunity opp : scope) {
            if (accountOwnerMap.containsKey(opp.AccountId)) {
                tasks.add(new Task(
                    Subject = 'Congratulate Opportunity Owner',
                    Description = 'Congratulate ' + opp.OwnerId + ' for closing the deal: ' + opp.Name,
                    OwnerId = accountOwnerMap.get(opp.AccountId),
                    WhatId = opp.AccountId, // Related to Account
                    Status = 'Not Started',
                    Priority = 'Normal'
                ));
            }
        }

        if (!tasks.isEmpty()) {
            insert tasks;
        }
    }

    public void finish(Database.BatchableContext context){
        //post processing logic here
        System.debug('Batch job completed');
    }
    
}