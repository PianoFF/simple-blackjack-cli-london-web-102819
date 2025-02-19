require "pry"
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card_number)
  puts "Your cards add up to #{card_number}"
  # code #display_card_total here
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  user_input = gets.chomp
  user_input 
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here 
  # first_card = deal_card
  total_card = deal_card + deal_card
  display_card_total(total_card)
  total_card

end

def hit?(number)
  # code hit? here
  prompt_user
  # number 
  order = get_user_input
  if order.upcase=="H" 
    total = number+ deal_card
    total 
  elsif order.upcase == "S"
    number  
  else 
    invalid_command
    prompt_user 
    order = get_user_input
    hit?(number)
    order 
  end 

end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total =  initial_round
  while total < 21 do
     total = hit?(total)
     display_card_total(total)
  end 
  end_game(total)
end
    
