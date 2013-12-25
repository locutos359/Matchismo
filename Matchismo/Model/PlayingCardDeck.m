//
//  PlayingCardDeck.m
//  Matchismo
//
//  Created by Matthew Richman on 12/19/13.
//  Copyright (c) 2013 Matthew Richman. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (instancetype) init
{
    self = [super init];
    
    if (self)
    {
        for (NSString *suit in [PlayingCard validSuits])
        {
            for (NSUInteger rank=1; rank < [PlayingCard maxRank]; rank++)
            {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.suit = suit;
                card.rank = rank;
            }
        }
    }
    
    return self;
}

@end
