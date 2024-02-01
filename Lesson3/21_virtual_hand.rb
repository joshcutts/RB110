





def display_player_hand(player_hand)
  club = "\u2663".encode('utf-8')
  heart = "\u2665".encode('utf-8')
  spade = "\u2660".encode('utf-8')
  diamond = "\u2666".encode('utf-8')
  
  char_conversion = {
    "Hearts" => heart,
    "Diamonds" => diamond,
    "Clubs" => club,
    "Spades" => spade
  }
end

def retrieve_virtual_card(card_suit)
  #2
  rank2 = ""+"\n"+
  " _________ "+"\n"+
  "|2        |"+"\n"+
  "|    #{card_suit}    |"+"\n"+
  "|         |"+"\n"+
  "|         |"+"\n"+
  "|         |"+"\n"+
  "|    #{card_suit}    |"+"\n"+
  "|_________|"+"\n"+
  ""
  #3
  rank3 = ""+"\n"+
  " _________ "+"\n"+
  "|3        |"+"\n"+
  "|    #{card_suit}    |"+"\n"+
  "|         |"+"\n"+
  "|    #{card_suit}    |"+"\n"+
  "|         |"+"\n"+
  "|    #{card_suit}    |"+"\n"+
  "|_________|"+"\n"+
  ""

  #4
  rank4 = ""+"\n"+
  " _________ "+"\n"+
  "|4        |"+"\n"+
  "| #{card_suit}     #{card_suit} |"+"\n"+
  "|         |"+"\n"+
  "|         |"+"\n"+
  "|         |"+"\n"+
  "| #{card_suit}     #{card_suit} |"+"\n"+
  "|_________|"+"\n"+
  ""
  
  #5
  rank5 = ""+"\n"+
  " _________ "+"\n"+
  "|5        |"+"\n"+
  "| #{card_suit}     #{card_suit} |"+"\n"+
  "|         |"+"\n"+
  "|    #{card_suit}    |"+"\n"+
  "|         |"+"\n"+
  "| #{card_suit}     #{card_suit} |"+"\n"+
  "|_________|"+"\n"+
  ""

  #6
  rank6 = ""+"\n"+
  " _________ "+"\n"+
  "|6        |"+"\n"+
  "| #{card_suit}     #{card_suit} |"+"\n"+
  "|         |"+"\n"+
  "| #{card_suit}     #{card_suit} |"+"\n"+
  "|         |"+"\n"+
  "| #{card_suit}     #{card_suit} |"+"\n"+
  "|_________|"+"\n"+
  ""

  #7

  rank7 = ""+"\n"+
  " _________ "+"\n"+
  "|7        |"+"\n"+
  "| #{card_suit}     #{card_suit} |"+"\n"+
  "|         |"+"\n"+
  "| #{card_suit}  #{card_suit}  #{card_suit} |"+"\n"+
  "|         |"+"\n"+
  "| #{card_suit}     #{card_suit} |"+"\n"+
  "|_________|"+"\n"+
  ""

  #8
  rank8 = ""+"\n"+
  " _________ "+"\n"+
  "|8        |"+"\n"+
  "| #{card_suit}     #{card_suit} |"+"\n"+
  "|    #{card_suit}    |"+"\n"+
  "| #{card_suit}     #{card_suit} |"+"\n"+
  "|    #{card_suit}    |"+"\n"+
  "| #{card_suit}     #{card_suit} |"+"\n"+
  "|_________|"+"\n"+
  ""

  #9
  rank9 = ""+"\n"+
  " _________ "+"\n"+
  "|9        |"+"\n"+
  "| #{card_suit}     #{card_suit} |"+"\n"+
  "| #{card_suit}     #{card_suit} |"+"\n"+
  "|    #{card_suit}    |"+"\n"+
  "| #{card_suit}     #{card_suit} |"+"\n"+
  "| #{card_suit}     #{card_suit} |"+"\n"+
  "|_________|"+"\n"+
  ""

  #10
  rank10 = ""+"\n"+
  " _________ "+"\n"+
  "|10       |"+"\n"+
  "| #{card_suit}     #{card_suit} |"+"\n"+
  "| #{card_suit}  #{card_suit}  #{card_suit} |"+"\n"+
  "|         |"+"\n"+
  "| #{card_suit}  #{card_suit}  #{card_suit} |"+"\n"+
  "| #{card_suit}     #{card_suit} |"+"\n"+
  "|_________|"+"\n"+
  ""

  #J
  rank_j = ""+"\n"+
  " _________ "+"\n"+
  "|J        |"+"\n"+
  "|         |"+"\n"+
  "|         |"+"\n"+
  "|    #{card_suit}    |"+"\n"+
  "|         |"+"\n"+
  "|         |"+"\n"+
  "|_________|"+"\n"+
  ""

  #Q
  rank_q = ""+"\n"+
  " _________ "+"\n"+
  "|Q        |"+"\n"+
  "|         |"+"\n"+
  "|         |"+"\n"+
  "|    #{card_suit}    |"+"\n"+
  "|         |"+"\n"+
  "|         |"+"\n"+
  "|_________|"+"\n"+
  ""

  #K
  rank_k = ""+"\n"+
  " _________ "+"\n"+
  "|K        |"+"\n"+
  "|         |"+"\n"+
  "|         |"+"\n"+
  "|    #{card_suit}    |"+"\n"+
  "|         |"+"\n"+
  "|         |"+"\n"+
  "|_________|"+"\n"+
  ""

  #A
  rank_a = ""+"\n"+
  " _________ "+"\n"+
  "|A        |"+"\n"+
  "|         |"+"\n"+
  "|         |"+"\n"+
  "|    #{card_suit}    |"+"\n"+
  "|         |"+"\n"+
  "|         |"+"\n"+
  "|_________|"+"\n"+
  ""

end

def create_virtual_hand(cards)
  #
end

def calculate_score
  #
end

club = "\u2663".encode('utf-8')
heart = "\u2665".encode('utf-8')
spade = "\u2660".encode('utf-8')
diamond = "\u2666".encode('utf-8')

#display_player_hand(player_hand)

#virtual_card(heart)