# Blackjack-Robot
This project uses a FANUC robot with IRVision to play Blackjack as a player. The robot follows basic Blackjack strategy ("playing by the book") and makes decisions based on its own hand as well as the dealer's visible card.

Each `.VD` file is dedicated to recognizing a specific card value using IRVision. The `.TP` and `.LS` files contain the main robot program. During execution, the robot cycles through each card recognition program until it identifies the correct card, then adds that card's value to its current hand.

After reading its initial two cards, the robot scans the dealer's face-up card and determines whether it should hit or stand based on basic Blackjack strategy. Once that decision is made, the robot continues reading the dealer's cards to account for the dealer's required actions, including the soft 17 rule.

The program maintains separate card counts for both the player and the dealer. These counts are used to apply positional offsets, allowing the robot to move to the correct location when reading each successive card.

This project was completed within a limited timeframe, so there are several areas where the code and overall implementation could be further optimized and expanded.

