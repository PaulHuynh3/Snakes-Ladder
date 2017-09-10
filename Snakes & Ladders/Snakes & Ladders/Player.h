//
//  Player.h
//  Snakes & Ladders
//
//  Created by Paul on 2017-09-09.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property NSInteger currentSquare;
@property NSDictionary* gameLogic;
@property NSString* output;
@property BOOL gameOver;

-(void)roll;

@end
