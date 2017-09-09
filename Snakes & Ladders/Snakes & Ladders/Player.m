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
//        _gameLogic =@{@"4L": @14, @"9L": @31, @"17S":@7, @"20L":@38, @"28L":@84, @"40L":@59, @"52L":@67,@"63L":@81,@"64S":@60, @"89S":@26, @"95S":@75, @"99S":@78};
        //key:object
        //key:bottom of ladder. object:top of ladder snake is reverse
    _gameLogic =@{@4:@14, @9:@31,@17:@7,@20:@38,@28:@84, @40:@59, @52:@67, @63:@81, @64:@60, @89:@26, @95:@75, @99:@78};
        
        
    }
    return self;

}

-(void)roll{

 //Check whether the player has landed on a square corresponding to a key in the dictionary. Do this inside the implementation of roll. If the roll matches a key then set the currentSquare property to the associated value. If there is no match set currentSquare to the new rolled value.
    
    
    
    
    //number generate 1-6
    int diceRoll = arc4random_uniform(6)+1;
    
    
    //display when roll is called in main
    NSLog(@"You rolled a %i",diceRoll);

    
    //your current position increments when a new dice rolls
    self.currentSquare += diceRoll;
    NSLog(@"Your current square is %lu",self.currentSquare);
    
    //turned my nsinteger into an nsnumber
    //since i set this as an independent variable the value of _currentSquare is no longer associated with the property
    NSNumber *currentSquareCompare = @(self.currentSquare);
    

//Only using currentSquareCompare to compare i will pass on the new value of _currentSquare after.. as currentSquareCompare becomes an independent variable
  NSNumber *currentSquareNumber = [self.gameLogic objectForKey:currentSquareCompare];
    
    if(currentSquareCompare){
    
    }

}

@end
