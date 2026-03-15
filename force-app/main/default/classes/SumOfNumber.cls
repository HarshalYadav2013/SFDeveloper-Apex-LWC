public with sharing class SumOfNumber {

    public static Integer sumOfNNumber(Integer endNumber){
        Integer totalSum = 0;
        for(Integer i = 1; i <= endNumber; i++){
            totalSum += i;

        }

        return totalSum;

    }
   
}