def main
    while !game_set()
    end
   end
   
   def game_set
    jankenResult = JankenResult()
    if jankenResult == 2
      puts "あいこで"
      return false
    end
   
    if !hand_result()
      puts "もう一回"
      return false
    end
   
    if jankenResult == 1
      puts "勝った！"
    else
      puts "負けた!"
    end
    return true
   end

   def JankenResult
    puts "じゃんけん"
    choices = ["グー", "チョキ", "パー"]
    message(choices)
   
    player = gets.to_i
    computer = rand(choices.size)
    ShowChoiceInfo(choices[player], choices[computer])
   
    result = 0 
    if player == computer
      result = 2
    elsif ((player == 0 && computer == 1) || (player == 1 && computer == 2) || (player == 2 && computer == 0))
      result = 1
    end
    return result
   end
    
   def hand_result
    puts "あっち向いて〜"
    choices = ["上", "下", "左", "右"]
    message(choices)
   
    player_hand = gets.to_i
    computer_hand = rand(choices.size)
    ShowChoiceInfo(choices[player_hand], choices[computer_hand])
   
    return (player_hand == computer_hand)
   end
   
   def message(choices)
    numChoices = choices.size
    for i in 0..(numChoices-1) do
      puts i.to_s + "(" + choices[i] + ")"
    end
   end
   
   def ShowChoiceInfo(playerChoiceString, computerChoiceString)
    puts "ホイ！"
    line = "------------------------"
    puts line
    puts "自分：#{playerChoiceString}"
    puts "相手：#{computerChoiceString}"
    puts line
   end
   
   main()