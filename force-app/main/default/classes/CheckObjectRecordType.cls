public with sharing class CheckObjectRecordType {

    public static List<String> checkRecordType(String objectName){
        List<String> recordTypeName = new List<String>();
        //List<RecordType> recordTypes = [SELECT Id, DeveloperName FROM RecordType Where sObjectType = :objectName];
        //for(RecordType rT : recordTypes){
        //    recordTypeName.add(rt.DeveloperName);
        //}
        //return recordTypeName;

        Map<String, Schema.RecordTypeInfo> recordTypeInfo = Schema.getGlobalDescribe().get(objectName).getDescribe().getRecordTypeInfosByDeveloperName();
        for(String devName : recordTypeInfo.keySet()){
            if(devName != 'Master'){
                recordTypeName.add(recordTypeInfo.get(devName).getName());
            }
        }

        return recordTypeName;

    }
    
}