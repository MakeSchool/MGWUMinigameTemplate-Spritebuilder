//
//  MGWUMinigameTemplate
//
//  Created by Zachary Barryte on 6/11/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "MyCharacter.h"

<<<<<<< HEAD
typedef enum {
    kStateIdling,
    kStateJuming,
    kStateFalling,
    kStateLanding,
} tState;

@implementation MyCharacter {
    float _velYPrev;
    tState _state;
=======
@implementation MyCharacter {
    float _velYPrev; // this tracks the previous velocity, it's used for animation
    BOOL _isIdling; // these BOOLs track what animations have been triggered.  By default, they're set to NO
    BOOL _isJumping;
    BOOL _isFalling;
    BOOL _isLanding;
>>>>>>> 744f1f3d1a402dd54fbb9a3b62402d39d1429b44
}

-(id)init {
    if ((self = [super init])) {
        // Initialize any arrays, dictionaries, etc in here
<<<<<<< HEAD
=======
        
        // We initialize _isIdling to be YES, because we want the character to start idling
        // (Our animation code relies on this)
        _isIdling = YES;
        // by default, a BOOL's value is NO, so the other BOOLs are NO right now
>>>>>>> 744f1f3d1a402dd54fbb9a3b62402d39d1429b44
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
<<<<<<< HEAD
=======
    
    // This sample method is called every update to handle character animation
>>>>>>> 744f1f3d1a402dd54fbb9a3b62402d39d1429b44
    [self updateAnimations:delta];
}

-(void)updateAnimations:(CCTime)delta {
    // IDLE
<<<<<<< HEAD
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
    
=======
    // The animation should be idle if the character was and is stationary
    // The character may only start idling if he or she was not already idling or falling
    if (_velYPrev == 0 && self.physicsBody.velocity.y == 0 && !_isIdling && !_isFalling) {
        [self resetBools];
        _isIdling = YES;
        [self.animationManager runAnimationsForSequenceNamed:@"AnimIsoIdling"];
    }
    // JUMP
    // The animation should be jumping if the character wasn't moving up, but now is
    // The character may only start jumping if he or she was idling and isn't jumping
    else if (_velYPrev == 0 && self.physicsBody.velocity.y > 0 && _isIdling && !_isJumping) {
        [self resetBools];
        _isJumping = YES;
        [self.animationManager runAnimationsForSequenceNamed:@"AnimIsoJump"];
    }
    // FALLING
    // The animation should be falling if the character's moving down, but was moving up or stalled
    // The character may only start falling if he or she was jumping and isn't falling
    else if (_velYPrev >= 0 && self.physicsBody.velocity.y < 0 && _isJumping && !_isFalling) {
        [self resetBools];
        _isFalling = YES;
        [self.animationManager runAnimationsForSequenceNamed:@"AnimIsoFalling" tweenDuration:0.5f];
    }
    // LANDING
    // The animation sholud be landing if the character's stopped moving down (hit something)
    // The character may only start landing if he or she was falling and isn't landing
    else if (_velYPrev < 0 && self.physicsBody.velocity.y >= 0 && _isFalling && !_isLanding) {
        [self resetBools];
        _isLanding = YES;
        [self.animationManager runAnimationsForSequenceNamed:@"AnimIsoLand"];
    }
    
    // We track the previous velocity, since it's important to determining how the character is and was moving for animations
>>>>>>> 744f1f3d1a402dd54fbb9a3b62402d39d1429b44
    _velYPrev = self.physicsBody.velocity.y;
    
}

<<<<<<< HEAD
=======
// This method is called before setting one to YES, so that only one is ever YES at a time
-(void)resetBools {
    _isIdling = NO;
    _isJumping = NO;
    _isFalling = NO;
    _isLanding = NO;
}

// This method tells the character to jump by giving it an upward velocity.
// It's been added to a physics node in the main scene, like the penguins Peeved Penguins, so it will fall automatically!
>>>>>>> 744f1f3d1a402dd54fbb9a3b62402d39d1429b44
-(void)jump {
    self.physicsBody.velocity = ccp(0,122);
}

@end
