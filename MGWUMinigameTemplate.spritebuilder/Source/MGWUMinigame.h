//
//  MGWUMinigame.h
//  Collusion
//
//  Created by Zachary Barryte on 6/6/14.
//  Copyright 2014 Apportable. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
<<<<<<< HEAD
#import "MGWUCharacter.h"
=======

@class MGWUCharacter;
>>>>>>> 744f1f3d1a402dd54fbb9a3b62402d39d1429b44

@interface MGWUMinigame : CCScene

@property (nonatomic,retain) MGWUCharacter *character;
<<<<<<< HEAD
@property (nonatomic, copy) NSString *instructions;
=======
@property (nonatomic,retain) NSString *instructions;
>>>>>>> 744f1f3d1a402dd54fbb9a3b62402d39d1429b44

-(void)endMinigameWithScore:(uint)$score;

@end
