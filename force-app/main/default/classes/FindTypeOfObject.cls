public with sharing class FindTypeOfObject {

    public static String typeOfObject (Id recordId){
        String objectType = '';

        Map<String, Schema.SObjectType> globalDesMap = Schema.getGlobalDescribe();

        for(String eachString : globalDesMap.keySet()){
            String keyPrefix = globalDesMap.get(eachString).getDescribe().getKeyPrefix();
            if(keyPrefix != null){
                if(String.valueOf(recordId).startsWith(keyPrefix)){
                    objectType = eachString;
                }
            }
        }

        return objectType;

    }
    
}