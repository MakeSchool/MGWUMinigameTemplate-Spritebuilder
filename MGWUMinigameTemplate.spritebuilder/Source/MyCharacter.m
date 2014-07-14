//
//  MGWUMinigameTemplate
//
//  Created by Zachary Barryte on 6/11/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "MyCharacter.h"

typedef enum {
    kStateIdling,
    kStateJuming,
    kStateFalling,
    kStateLanding,
} tState;

@implementation MyCharacter {
    float _velYPrev;
    tState _state;
}

-(id)init {
    if ((self = [super init])) {
        // Initialize any arrays, dictionaries, etc in here
    }
    return self;
}

-(void)didLoadFromCCB {
    // Set up anything connected to Sprite Builder here
}

-(void)onEnter {
    [super onEnter];
    // Create anything you'd like to draw here
}

-(void)update:(CCTime)delta {
    // Called each update cycle
    // n.b. Lag and other factors may cause it to be called more or less frequently on different devices or sessions
    // delta will tell you how much time has passed since the last cycle (in seconds)
    [self updateAnimations:delta];
}

-(void)updateAnimations:(CCTime)delta {
    // IDLE
    if (_velYPrev == 0 && self.physicsBody.velocity.y == 0 && _state != kStateIdling && _state != kStateFalling) {
        _state = kStateIdling;
        [self.animationManager runAnimationsForSequenceNamed:kAnimIsoIdling];
    }
    // JUMP
    else if (_velYPrev == 0 && self.physicsBody.velocity.y > 0 && _state == kStateIdling) {
        _state = kStateJuming;
        [self.animationManager runAnimationsForSequenceNamed:kAnimIsoJump];
    }
    // FALLING
    else if (_velYPrev >= 0 && self.physicsBody.velocity.y < 0 && _state == kStateJuming) {
        _state = kStateFalling;
        [self.animationManager runAnimationsForSequenceNamed:kAnimIsoFalling tweenDuration:0.5f];
    }
    // LANDING
    else if (_velYPrev < 0 && self.physicsBody.velocity.y >= 0 && _state == kStateFalling) {
        _state = kStateLanding;
        [self.animationManager runAnimationsForSequenceNamed:kAnimIsoLand];
    }
    
    _velYPrev = self.physicsBody.velocity.y;
    
}

-(void)jump {
    self.physicsBody.velocity = ccp(0,122);
}

@end
