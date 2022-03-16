# your code goes here
require 'pry'
class Person

    attr_reader :name, :happy
    attr_accessor :happiness, :bank_account, :hygiene
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8 
        @hygiene = 8
    end

    def ifs(attribute)
        if attribute > 10
            attribute= 10
        elsif attribute < 0
            attribute= 0
        end
        attribute
    end

    def happiness
        ifs(@happiness)        
    end

    def hygiene
        ifs(@hygiene)
    end

    def happy?
        @happiness > 7
    end
    def clean?
        @hygiene > 7
    end

    def get_paid(amount)
        @bank_account= @bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene= @hygiene= @hygiene+=4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene= @hygiene= @hygiene-=3
        self.happiness= @happiness= @happiness+=2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        #friend = Person.new(the_friend.name)
        friends = [self, friend]
        friends.each {|f| f.happiness= f.happiness+=3}
        #self.happiness= @happiness= @happiness+=3
        #friend.happiness= friend.happiness+=3
        "Hi #{friend.name}! It's #{@name}. How are you?"
        #binding.pry
    end

end

victor = Person.new("victor")
victor.happiness
#binding.pry