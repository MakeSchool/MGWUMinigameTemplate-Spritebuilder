//
//  MGWUCharacter.h
//  MGWUMinigameTemplate
//
//  Created by Zachary Barryte on 6/10/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCNode.h"

typedef enum {
    kCharacterRed,
    kCharacterGreen,
    kCharacterPurple,
    kCharacterBlue,
    kCharacterMax
} tCharacterType;

typedef enum {
    kTop,
    kFront,
    kBack,
    kSide,
    kIso,
} tCharacterOrientation;

static NSString *const kAnimIsoIdling = @"AnimIsoIdling";
static NSString *const kAnimIsoJump = @"AnimIsoJump";
static NSString *const kAnimIsoJumping = @"AnimIsoJumping";
static NSString *const kAnimIsoFalling = @"AnimIsoFalling";
static NSString *const kAnimIsoLand = @"AnimIsoLand";

@interface MGWUCharacter : CCNode

@property (nonatomic,assign) tCharacterType characterType;

@end
