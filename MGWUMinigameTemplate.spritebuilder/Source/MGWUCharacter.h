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
    kCharacterPink,
    kCharacterBlue,
    kCharacterTeal,
    kCharacterMax
} tCharacterType;

typedef enum {
    kTop,
    kFront,
    kBack,
    kSide,
    kIso,
} tCharacterOrientation;

@interface MGWUCharacter : CCNode

@property (nonatomic,assign) tCharacterType characterType;

@end
