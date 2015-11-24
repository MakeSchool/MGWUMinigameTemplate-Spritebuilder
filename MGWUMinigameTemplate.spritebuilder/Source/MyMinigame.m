//
//  MGWUMinigameTemplate
//
//  Created by Zachary Barryte on 6/6/14.
//  Copyright 2014 Apportable. All rights reserved.
//

#import "MyMinigame.h"

@implementation MyMinigame

-(id)init {
    if ((self = [super init])) {
        // Initialize any arrays, dictionaries, etc in here
<<<<<<< HEAD
        self.instructions = @"Put your game instructions here!";
=======
        self.instructions = @"These are the game instructions :D";
>>>>>>> 744f1f3d1a402dd54fbb9a3b62402d39d1429b44
    }
    return self;
}

-(void)didLoadFromCCB {
    // Set up anything connected to Sprite Builder here
<<<<<<< HEAD
=======
    
    // We're calling a public method of the character that tells it to jump!
>>>>>>> 744f1f3d1a402dd54fbb9a3b62402d39d1429b44
    [self.hero jump];
}

-(void)onEnter {
    [super onEnter];
    // Create anything you'd like to draw here
}

-(void)update:(CCTime)delta {
    // Called each update cycle
    // n.b. Lag and other factors may cause it to be called more or less frequently on different devices or sessions
    // delta will tell you how much time has passed since the last cycle (in seconds)
}

-(void)endMinigame {
<<<<<<< HEAD
=======
    // Be sure you call this method when you end your minigame!
    // Of course you won't have a random score, but your score *must* be between 1 and 100 inclusive
>>>>>>> 744f1f3d1a402dd54fbb9a3b62402d39d1429b44
    [self endMinigameWithScore:arc4random()%100 + 1];
}

// DO NOT DELETE!
-(MyCharacter *)hero {
    return (MyCharacter *)self.character;
}
// DO NOT DELETE!

@end
