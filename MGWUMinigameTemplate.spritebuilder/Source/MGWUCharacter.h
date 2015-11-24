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
<<<<<<< HEAD
    kCharacterPurple,
    kCharacterBlue,
=======
    kCharacterPink,
    kCharacterBlue,
    kCharacterTeal,
>>>>>>> 744f1f3d1a402dd54fbb9a3b62402d39d1429b44
    kCharacterMax
} tCharacterType;

typedef enum {
    kTop,
    kFront,
    kBack,
    kSide,
    kIso,
} tCharacterOrientation;

<<<<<<< HEAD
static NSString *const kAnimIsoIdling = @"AnimIsoIdling";
static NSString *const kAnimIsoJump = @"AnimIsoJump";
static NSString *const kAnimIsoJumping = @"AnimIsoJumping";
static NSString *const kAnimIsoFalling = @"AnimIsoFalling";
static NSString *const kAnimIsoLand = @"AnimIsoLand";

=======
>>>>>>> 744f1f3d1a402dd54fbb9a3b62402d39d1429b44
@interface MGWUCharacter : CCNode

@property (nonatomic,assign) tCharacterType characterType;

@end
