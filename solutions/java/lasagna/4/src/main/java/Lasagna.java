public class Lasagna {
    public int expectedMinutesInOven(){
        return 40;
    }
    
    public int remainingMinutesInOven(int actualMinutes ){
        

        return expectedMinutesInOven() - actualMinutes; 
        
    }

    public int preparationTimeInMinutes(int number_of_layers ){
         return number_of_layers * 2;
    }

    public int totalTimeInMinutes(int number_of_layers  , int number_of_minutes  ){
        return preparationTimeInMinutes(number_of_layers ) + number_of_minutes;
    }
}
