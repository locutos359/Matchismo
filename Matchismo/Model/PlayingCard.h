//
//  PlayingCard.h
//  Matchismo
//
//  Created by Matthew Richman on 12/19/13.
//  Copyright (c) 2013 Matthew Richman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+(NSArray *)validSuits;
+(NSUInteger)maxRank;




@end
