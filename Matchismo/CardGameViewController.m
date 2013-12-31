//
//  ViewController.m
//  Matchismo
//
//  Created by Matthew Richman on 12/19/13.
//  Copyright (c) 2013 Matthew Richman. All rights reserved.
//

#import "CardGameViewController.h"

@interface CardGameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) NSUInteger flipCount;
@property (strong, nonatomic) PlayingCardDeck *gameDeck;
@property (strong, nonatomic) Card *currentCard;

@end

@implementation CardGameViewController


- (void)setFlipCount:(NSUInteger)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flipCount set to %d", self.flipCount);
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    if ([sender.currentTitle length])
    {
        [sender setBackgroundImage: [UIImage imageNamed:@"cardBack"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }
    else
    {
        if (!_gameDeck)
        {
            _gameDeck = [[PlayingCardDeck alloc] init];
        }
        
        [sender setBackgroundImage: [UIImage imageNamed:@"cardFront"]
                          forState:UIControlStateNormal];
        self.currentCard = [self.gameDeck drawRandomCard];
        [sender setTitle:self.currentCard.contents forState:UIControlStateNormal];
    }
    self.flipCount++;
}

@end
