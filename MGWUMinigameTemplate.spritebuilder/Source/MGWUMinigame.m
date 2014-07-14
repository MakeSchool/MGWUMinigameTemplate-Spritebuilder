//
//  MGWUMinigame.m
//  Collusion
//
//  Created by Zachary Barryte on 6/6/14.
//  Copyright 2014 Apportable. All rights reserved.
//

#import "MGWUMinigame.h"

@implementation MGWUMinigame

#pragma mark - End Game

-(void)endMinigameWithScore:(uint)$score {
    [[CCDirector sharedDirector] popScene];
}

@end
