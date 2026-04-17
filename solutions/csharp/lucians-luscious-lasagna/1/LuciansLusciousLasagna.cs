class Lasagna
{

public int ExpectedMinutesInOven(){
    return 40;
}

public int RemainingMinutesInOven(int actual_minutes){
    return ExpectedMinutesInOven() - actual_minutes; 
}

public int PreparationTimeInMinutes(int numOfLayers){
    return numOfLayers * 2;
}

public int ElapsedTimeInMinutes(int numOfLayers, int numOfMins){
    return PreparationTimeInMinutes(numOfLayers) + numOfMins;
}
}
