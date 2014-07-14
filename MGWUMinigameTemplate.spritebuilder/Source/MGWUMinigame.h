//
//  MGWUMinigame.h
//  Collusion
//
//  Created by Zachary Barryte on 6/6/14.
//  Copyright 2014 Apportable. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "MGWUCharacter.h"

@interface MGWUMinigame : CCScene

@property (nonatomic,retain) MGWUCharacter *character;

-(void)endMinigameWithScore:(uint)$score;

@end
