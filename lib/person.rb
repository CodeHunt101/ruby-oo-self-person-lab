class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happinessOrHygeneHandler(instance_var)
    if instance_var > 10
      instance_var = 10
    elsif instance_var < 0
      instance_var = 0
    else instance_var
    end
  end
  
  def happiness
    happinessOrHygeneHandler(@happiness)
  end
  
  def hygiene
    happinessOrHygeneHandler(@hygiene)
  end
  
  def happy?
    @happiness > 7 ? true : false
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    '♪ Rub-a-dub just relaxing in the tub ♫'
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    '♪ another one bites the dust ♫'
  end

  def call_friend(person_instance)
    self.happiness += 3
    person_instance.happiness += 3
    "Hi #{person_instance.name}! It's #{@name}. How are you?"
  end

  def start_conversation(person_instance, topic)
    if topic == "politics"
      self.happiness -= 2
      person_instance.happiness -= 2
      'blah blah partisan blah lobbyist' 
    elsif topic == "weather"
      self.happiness += 1
      person_instance.happiness += 1
      'blah blah sun blah rain'
    else 'blah blah blah blah blah'
    end
  end

end