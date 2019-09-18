#these are the decks we pull from!
$deck_of_52 = ["Ace of Spades", "Two of Spades", "Three of Spades", "Four of Spades", "Five of Spades", "Six of Spades", "Seven of Spades", "Eight of Spades", "Nine of Spades", "Ten of Spades", "Jack of Spades", "Queen of Spades", "King of Spades", "Ace of Hearts", "Two of Hearts", "Three of Hearts", "Four of Hearts", "Five of Hearts", "Six of Hearts", "Seven of Hearts", "Eight of Hearts", "Nine of Hearts", "Ten of Hearts", "Jack of Hearts", "Queen of Hearts", "King of Hearts", "Ace of Clubs", "Two of Clubs", "Three of Clubs", "Four of Clubs", "Five of Clubs", "Six of Clubs", "Seven of Clubs", "Eight of Clubs", "Nine of Clubs", "Ten of Clubs", "Jack of Clubs", "Queen of Clubs", "King of Clubs", "Ace of Diamonds", "Two of Diamonds", "Three of Diamonds", "Four of Diamonds", "Five of Diamonds", "Six of Diamonds", "Seven of Diamonds", "Eight of Diamonds", "Nine of Diamonds", "Ten of Diamonds", "Jack of Diamonds", "Queen of Diamonds", "King of Diamonds"]
def hand(x)
  $deck_of_52.sample(x)
end
$major_arcana = ["The Fool", "The Magician", "The High Priestess", "The Empress",  "The Emperor", " The Hierophant", "The Lovers", "The Chariot", "Fortitude", "The Hermit", "Wheel of Fortune", "Justice", "The Hanged Man", "Death", "Temperance", "The Devil", "The Tower", "The Star", "The Moon", "The Sun", "Judgement", "The World"]
def majorpull()
  $major_arcana.sample(1)
end

#this defines our character!
class Character
	def initialize(name, major_arcana, pentacles, wands, swords, cups, eyes, dress, hands)
		@name = name
		@major_arcana = major_arcana
		@pentacles = pentacles
		@wands = wands
		@swords = swords
		@cups = cups
		@eyes = eyes
		@dress = dress
		@hands = hands
	end
  def hand(x)
  $deck_of_52.sample(x)
  end
	def burn
		if (2..4).include?(@wands)
			puts hand(1)
		elsif (5..8).include?(@wands)
			puts hand(2)
		elsif (9..11).include?(@wands)
			puts hand(3)
		end
	end
	def tools
			if (2..4).include?(@pentacles)
			puts hand(1)
		elsif (5..8).include?(@pentacles)
			puts hand(2)
		elsif (9..11).include?(@pentacles)
			puts hand(3)
		end
	end
	def shock
		if (2..4).include?(@pentacles)
			puts hand(1)
		elsif (5..8).include?(@pentacles)
			puts hand(2)
		elsif (9..11).include?(@pentacles)
			puts hand(3)
		end
  end
	def commune
	  if (2..4).include?(@wands)
			puts hand(1)
		elsif (5..8).include?(@wands)
			puts hand(2)
		elsif (9..11).include?(@wands)
			puts hand(3)
		end
  end
	def display 
		puts "My name is #{@name}, I bear the #{@major_arcana}.  I have #{@eyes} eyes, #{@dress} clothes, and #{@hands} hands.  My stats are #{@pentacles} of Pentacles, #{@wands} of Wands, #{@swords} of Swords, and #{@cups} of Cups."
  end
	def move
		puts "What move do you want to take?  Burn and Brand, Commune with the Beyond, Tools of the Trade, or Shock and Awe?"
		input = gets.chomp.downcase
		if ["burn", "burn and brand"].include?(input) 
			puts burn
		elsif ["shock", "shock and awe"].include?(input) 
			puts shock
		elsif ["commune", "commune with the beyond"].include?(input) 
			puts commune
		elsif ["tools", "tools of the trade"].include?(input) 
			puts tools
		else 
			puts "Sorry, that didn't make any sense to me.  Care to try again?"
			puts move
    puts move
    end
  end
end
#this generates your character for Wizard World
def wizard_wizard 
  puts "What is your name?"
  @playername = gets.chomp
  puts "Give an adjective for how your eyes look."
  @playereyes = gets.chomp
  puts "Give an adjective for how your clothes look."
  @playerdress = gets.chomp
  puts "Give an adjective for how your hands look."
  @playerhands = gets.chomp
  puts "We’ll now draw your cards for you."
  @playermajor = majorpull
  w = rand(1..11)
  @playerwands = w
  c = rand(1..11)
  @playercups = c
  s = rand(1..11)
  @playerswords = s
  p = rand(1..11)
  @playerpentas = p
  @my_mage = Character.new(@playername, @playermajor, @playerpentas, @playerwands, @playerswords, @playercups, @playereyes, @playerdress, @playerhands)
  puts "Meet your new character!"
  @my_mage.display
end
wizard_wizard
@my_mage.move
puts "At any time, type @my_mage.move to take action with your character!  Type @my_mage.display to look at your character again."
