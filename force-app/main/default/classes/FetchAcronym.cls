public with sharing class FetchAcronym {

    public static void findAcornym(String enterShortend){
        List<Acronym_Master__c> acronymMaster = [SELECT Id, Name, Full_Form__c FROM Acronym_Master__c WHERE Name = :enterShortend LIMIT 1];
        if(acronymMaster.size() == 1){
            system.debug('For your acrnoyum, the full form is - ' + acronymMaster[0].Full_Form__c);
        }
        else{
            System.debug('The acronyum not found in the record');
        }
    }
    
}