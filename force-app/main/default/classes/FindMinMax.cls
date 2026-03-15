public with sharing class FindMinMax {

    public static List<Integer> findMaxMin(List<Integer> listOfNumbers){
        List<Integer> minAndMax = new List<Integer>();
        if(listOfNumbers.size() > 0){
            Integer minNumber = listOfNumbers[0];
            Integer maxNumber = listOfNumbers[0];
            for(Integer eachNum : listOfNumbers){
                if(eachNum >= maxNumber){
                    maxNumber = eachNum;
                }
                if(eachNum < minNumber){
                    minNumber = eachNum;
                }
            }
            minAndMax.add(maxNumber);
            minAndMax.add(minNumber);
        }

        return minAndMax;

    }
   
}