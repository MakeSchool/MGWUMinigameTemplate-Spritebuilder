//
//  MGWUMinigame.h
//  Collusion
//
//  Created by Zachary Barryte on 6/6/14.
//  Copyright 2014 Apportable. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@class MGWUCharacter;

@interface MGWUMinigame : CCScene

@property (nonatomic,retain) MGWUCharacter *character;
@property (nonatomic,retain) NSString *instructions;

-(void)endMinigameWithScore:(uint)$score;

@end
