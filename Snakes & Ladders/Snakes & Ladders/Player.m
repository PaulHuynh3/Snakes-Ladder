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
        _gameLogic =@{@"4L": @14, @"9L": @31, @"17S":@7, @"20L":@38, @"28L":@84, @"40L":@59, @"52L":@67,@"63L":@81,@"64S":@60, @"89S":@26, @"95S":@75, @"99S":@78};
    
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
    NSLog(@"Your current square is %lu",self.currentSquare);
    

}

@end
