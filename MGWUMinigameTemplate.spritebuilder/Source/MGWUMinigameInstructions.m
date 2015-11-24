//
//  MGWUMinigameInstructions.m
//  MGWUMinigameTemplate
//
//  Created by Zachary Barryte on 7/14/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "MGWUMinigameInstructions.h"
#import "MGWUMinigame.h"

@implementation MGWUMinigameInstructions {
    MGWUMinigame *_minigame;
}

+(CCScene *)sceneWithMinigame:(MGWUMinigame *)$minigame {
    CCScene *$scene = [CCScene node];
    [$scene addChild:[[self alloc] initWithMinigame:$minigame]];
    return $scene;
}

-(id)initWithMinigame:(MGWUMinigame *)$minigame {
    if ((self = [super init])) {
        
        CGSize $screenSize = [[CCDirector sharedDirector] viewSize];
        CGSize $labelSize = CGSizeMake($screenSize.width*0.95f,$screenSize.height*0.95f);
        
        CCLabelTTF *$instructionsLabel = [CCLabelTTF labelWithString:$minigame.instructions fontName:@"Helvetica" fontSize:12 dimensions:$labelSize];
        [self addChild:$instructionsLabel];
        $instructionsLabel.positionType = CCPositionTypeNormalized;
        $instructionsLabel.position = ccp(0.5f,0.5f);
        $instructionsLabel.verticalAlignment = CCVerticalTextAlignmentCenter;
        $instructionsLabel.horizontalAlignment = CCTextAlignmentCenter;
        
        _minigame = $minigame;
        
        CCButton *$btnAdv = [CCButton buttonWithTitle:@"[BEGIN GAME]"];
        [self addChild:$btnAdv];
        $btnAdv.positionType = CCPositionTypeNormalized;
        $btnAdv.position = ccp(0.5f,0.25f);
        [$btnAdv setTarget:self selector:@selector(transitionToMinigame)];
    }
    return self;
}

-(void)transitionToMinigame {
    CCScene *$scene = [CCScene node];
    [$scene addChild:_minigame];
    [[CCDirector sharedDirector] pushScene:$scene];
}

@end
