public class ConditionDemo {
    public static void Task(){
        integer age = 50;
        if(age >= 21){
            system.debug('Eligible for job');
        }
    }
        
        public static void Task2(){
            integer num = 42;
            if(math.mod(num,2)==0){
                system.debug('Even');
            }
            else
            {
                system.debug('Odd');
            }
        }
    
    public static void Task3(){
        integer marks = 110;
        if(marks  >= 90)
        {
            system.debug('A Grade');
        }
        
        else if(marks <= 70)
        {
            system.debug('B Grade');
        }
        
        else if(marks >= 50)
        {
            system.debug('C Grade');
        }
        
        else
        {
            system.debug('Fail');
        }
    } 
    public static void Task4(){
        integer temperature = 50;
        if(temperature > 35)
        {
            system.debug('Hot');
        }
    }
    public static void Task5(){
        integer num = 69;
        
        if(num < 10)
        {
            system.debug('Small');
        }
        else if(num > 10 && num < 50)
        {
            system.debug('Medium');
        }
        else 
        {
            system.debug('Large');
        }
            
    }
    public static void Task6(){
        string name = 'praveen';
        if(name =='admin')
        {
            system.debug('WELCOME ADMIN');
        }
    }
    }