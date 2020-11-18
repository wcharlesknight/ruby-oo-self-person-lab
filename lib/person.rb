# your code goes here
class Person
    
    attr_reader :name 
    attr_accessor :bank_account, :happiness, :hygiene
   
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end     
    
    def clean?
        if @hygiene > 7 
            true
        else
            false
        end
    end

    def happy?
        if @happiness > 7 
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        p "all about the benjamins" 
    end    

    def take_bath
        @hygiene=@hygiene + 4 
        if @hygiene > 10
            @hygiene = 10
        end
        p "♪ Rub-a-dub just relaxing in the tub ♫"
    end     
end 

