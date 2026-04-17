public class Lasagna {
    public int expectedMinutesInOven(){
        return 40;
    }
    
    public int remainingMinutesInOven(int actualMinutes ){
        int expectedMinutes = expectedMinutesInOven();

        return (actualMinutes + 30) - expectedMinutes; 
        
    }

    public int preparationTimeInMinutes(int number_of_layers ){
         return number_of_layers * 2;
    }

    public int totalTimeInMinutes(int number_of_layers  , int number_of_minutes  ){
        return (number_of_layers * 2) + number_of_minutes;
    }
}
