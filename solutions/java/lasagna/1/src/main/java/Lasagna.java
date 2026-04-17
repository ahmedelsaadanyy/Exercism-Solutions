public class Lasagna {
    // TODO: define the 'expectedMinutesInOven()' method
    public int expectedMinutesInOven(){
        return 40;
    }
    // TODO: define the 'remainingMinutesInOven()' method
    public int remainingMinutesInOven(int actualMinutes ){
        int expectedMinutes = expectedMinutesInOven();

        return (actualMinutes + 30) - expectedMinutes; 
        
    }
    // TODO: define the 'preparationTimeInMinutes()' method
    public int preparationTimeInMinutes(int number_of_layers ){
         return number_of_layers * 2;
    }
    // TODO: define the 'totalTimeInMinutes()' method
    public int totalTimeInMinutes(int number_of_layers  , int number_of_minutes  ){
        return (number_of_layers * 2) + number_of_minutes;
    }
}
