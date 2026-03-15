public with sharing class CatogriesCasesOrigin {

    public static Map<String, List<Case>> generateCasesByOriginMap(){
        Map<String, List<Case>> casesByOriginMap = new Map<String, List<Case>>();
        List<Case> caseRecords = [SELECT Id, CaseNumber, Origin FROM Case LIMIT 50000];
        for(Case caseRec : caseRecords){
            if(casesByOriginMap.containsKey(caseRec.Origin)){
                casesByOriginMap.get(caseRec.Origin).add(caseRec);
            }
            else {
                List<Case> caseByOriginList = new List<Case>();
                caseByOriginList.add(caseRec);
                casesByOriginMap.put(caseRec.Origin, caseByOriginList);
            }
        }

        return casesByOriginMap;
    }
    
}