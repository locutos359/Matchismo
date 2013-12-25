//
//  Deck.h
//  Matchismo
//
//  Created by Matthew Richman on 12/19/13.
//  Copyright (c) 2013 Matthew Richman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void) addCard:(Card *)card atTop:(BOOL)atTop;
- (void) addCard:(Card *)card;


- (Card *) drawRandomCard;

@end
