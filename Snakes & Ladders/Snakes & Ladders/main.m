//
//  main.m
//  Snakes & Ladders
//
//  Created by Paul on 2017-09-09.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Player *player = [[Player alloc]init];
                
    NSLog(@"Welcome to Snakes and Ladders. Please type r to begin! --- to exit enter 0");
    int game = 0;
    while (game <= 100) {
        
        //set character to 255
        char inputchars [255];
        
        //limit input to max 255 characters fgets collect user's answer
        fgets(inputchars, 255, stdin);
        
        //convert char to string
        NSString* charToString = [NSString stringWithCString:inputchars encoding:NSUTF8StringEncoding];
        
        NSString* userAnswer = [charToString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
//        //convert string to integer
//        int answerInteger = [userAnswer intValue];
//        //user wants to END The game
//        if(answerInteger == 0){
//            break;
//        }
        
        if ([userAnswer isEqualToString:@"r"] || [userAnswer isEqualToString:@"roll"]){
           
        
    //when you set this to void _currentSquare can not equal to roll.
             [player roll];
            
            
        }
        
    }
        
        

        
    }
    return 0;
}
