//
//  MGWUMinigameInstructions.h
//  MGWUMinigameTemplate
//
//  Created by Zachary Barryte on 7/14/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@class MGWUMinigame;

@interface MGWUMinigameInstructions : CCScene

+(CCScene *)sceneWithMinigame:(MGWUMinigame *)$minigame;

@end
