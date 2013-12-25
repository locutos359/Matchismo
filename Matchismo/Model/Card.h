//
//  Card.h
//  Matchismo
//
//  Created by Matthew Richman on 12/19/13.
//  Copyright (c) 2013 Matthew Richman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatcher) BOOL matched;

- (int)match:(NSArray *)otherCards;


@end
