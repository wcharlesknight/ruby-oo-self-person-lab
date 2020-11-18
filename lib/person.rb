# your code goes here
class Person
    
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account


    def happiness=(happiness)
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        else
            @happiness = happiness
        end
    end

    def hygiene=(hygiene)
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        else
            @hygiene = hygiene
        end
    end
    
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
        self.hygiene = @hygiene + 4
        p "♪ Rub-a-dub just relaxing in the tub ♫"
    end    
    
    def work_out
        self.happiness = @happiness + 2
        self.hygiene = @hygiene - 3
        p "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness = @happiness + 3
        friend.happiness += 3
        p "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    
    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness = @happiness - 2
            person.happiness -= 2
            p "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = @happiness + 1
            person.happiness += 1
            p "blah blah sun blah rain"
        else
            p "blah blah blah blah blah"
        end
    end
end 

