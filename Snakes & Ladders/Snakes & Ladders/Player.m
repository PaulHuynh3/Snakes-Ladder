//
//  Player.m
//  Snakes & Ladders
//
//  Created by Paul on 2017-09-09.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "Player.h"

@implementation Player

//override the player's init
-(instancetype)init{
    self = [super init];
    
    if(self){
        _currentSquare = 0;
        
//key:object
//key:bottom of ladder. object:top of ladder snake is reverse
    _gameLogic =@{@4:@14, @9:@31,@17:@7,@20:@38,@28:@84, @40:@59, @52:@67, @63:@81, @64:@60, @89:@26, @95:@75, @99:@78};
        
        _gameOver = YES;
        
    }
    return self;

}

-(void)roll{
    //number generate 1-6
    int diceRoll = arc4random_uniform(6)+1;
    
    //display when roll is called in main
    NSLog(@"You rolled a %i",diceRoll);

    //your current position increments when a new dice rolls
    self.currentSquare += diceRoll;

    
    //turned my nsinteger into an nsnumber
    //This as an independent variable the value of _currentSquare is no longer associated with the property
    NSNumber *currentSquareCompare = @(self.currentSquare);
    

//**Only using currentSquareCompare to compare i will pass on the new value of _currentSquare after.. as currentSquareCompare becomes an independent variable***
    
//destination will now hold the new key value everytime it loops
   NSNumber *destination = [self.gameLogic objectForKey:currentSquareCompare];

    
//IF the number rolls into one of the designated number assigned move it to that new destination.. this _currentSquare is independent than the one on top!!!!
    if (destination) {
        NSInteger destinationInteger = [destination integerValue];
        
        if(destinationInteger > self.currentSquare){
            //the self.currentSquare is different as its sequential
            self.output = [NSString stringWithFormat:@"Stairway to heaven you went up from %lu to %lu",self.currentSquare, destinationInteger];
            NSLog(@"%@",self.output);
        } else if (destinationInteger < self.currentSquare){
            self.output = [NSString stringWithFormat:@"Get f*cked you went from %lu to %lu",destinationInteger, self.currentSquare];
            NSLog(@"%@",self.output);
        }
        //this has to be last because it changes the _currentSquare.
        self.currentSquare = destinationInteger;
    }
    
    //end while loop and display a message
    if(self.currentSquare >= 100){
        self.output = @"You win the game!";
        NSLog(@"%@",self.output);
        self.gameOver = NO;
    }
    
    
//sequential order matters a lot make sure IF YOU want to see current position its at end.
NSLog(@"Your current position is %lu",self.currentSquare);
}

@end
