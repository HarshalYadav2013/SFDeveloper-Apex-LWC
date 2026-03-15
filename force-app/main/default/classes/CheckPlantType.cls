public with sharing class CheckPlantType {
    
    public static Void checkMyPlantType(String plantName){
        
        /* List<Plant_Info_Master__mdt> plantRecords = [SELECT Id, MasterLabel, Plant_Type__c FROM Plant_Info_Master__mdt];
        for(Plant_Info_Master__mdt plantRec : plantRecords){
            if(plantRec.MasterLabel == plantName){
                system.debug('Your selected plant type is - ' + plantRec.Plant_Type__c);
                return plantRec.Plant_Type__c;               
            }
            else{
                System.debug('Your plant is not found' + plantRec.Plant_Type__c);
   
            }
             
        } */
       List<Plant_Info_Master__mdt> plantRecords = [SELECT Id, MasterLabel, Plant_Type__c FROM Plant_Info_Master__mdt WHERE MasterLabel = :plantName LIMIT 1];
       if(plantRecords.size() == 1){
            System.debug('Your plant type is - ' + plantRecords[0].Plant_Type__c);

       }
       else {
            system.debug('You plant is not avilable');
       } 
    }

}