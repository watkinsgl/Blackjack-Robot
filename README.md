# Blackjack-Robot
Fanuc Robot that plays blackjack as a player using IRVision. The robot plays blackjack by "the book" and it can make decisions based on its hand and the opponents.

Each .VD file is a different card number that uses IRVision to recognize that specific card value. The .TP and .LS files are used for the actual program. The robot will run through each card to check if its seen by the camera, if it is seen then the robot will add that card value into its hand value. 

After the robot reads its two cards, it will then look at the dealer's one card to then make a decision if it should hit or stand. Once that decision is made, the robot will then read the dealer's hand anticipating what the dealer has to do for soft 17. 

You will see there is a card count given to both the player and the dealer. This card count is to apply an offset for each card to move the robot over in order to know which card it should be reading. 

I was only given a short amount of time to work on this project so the code could be improved. 
