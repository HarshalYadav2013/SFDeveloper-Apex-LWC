public with sharing class CheckLeadDuplication {
    
    public static Boolean checkDuplicateLead(Lead leadRecordToCheck){

        if(leadRecordToCheck != null){
            List<Lead> leadRecords = [SELECT Id FROM Lead WhERE Id != :leadRecordToCheck.Id AND Name = :leadRecordToCheck.Name AND Email = :leadRecordToCheck.Email AND LeadSource = :leadRecordToCheck.LeadSource AND Industry = :leadRecordToCheck.Industry];
            if(leadRecords.size() > 0){
                return true;
            }
        }
        return false;

    }

}

//Annyomyus Window code
// List<Lead> myLeadRecords = [SELECT ID, Industry, LeadSource, Name, Email FROM Lead WHERE Id = '00QgL000004JqINUA0' LIMIT 1];