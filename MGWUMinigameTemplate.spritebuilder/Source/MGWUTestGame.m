//
//  MGWUTestGame.m
//  Collusion
//
//  Created by Zachary Barryte on 6/6/14.
//  Copyright 2014 Apportable. All rights reserved.
//

#import "MGWUTestGame.h"
#import "MGWUMinigame.h"
<<<<<<< HEAD

=======
#import "MGWUCharacter.h"
#import "MGWUMinigameInstructions.h"
>>>>>>> 744f1f3d1a402dd54fbb9a3b62402d39d1429b44

@implementation MGWUTestGame

static NSString *const kMinigamesFolder = @"Published-iOS";

-(void)onEnter {
    [super onEnter];
    CCButton *$btnTest = [CCButton buttonWithTitle:@"[TEST MINIGAME]"];
    [self addChild:$btnTest];
    CGSize $size = [[CCDirector sharedDirector] viewSize];
<<<<<<< HEAD
    $btnTest.position = ccp($size.width/2,$size.height/2);
=======
    $btnTest.position = ccp($size.width/2,0.25*$size.height);
>>>>>>> 744f1f3d1a402dd54fbb9a3b62402d39d1429b44
    $btnTest.block = ^(id $sender) {
        NSString *$minigameFile;
        NSString *$resourcePath = [[NSBundle mainBundle] resourcePath];
        NSString *$minigamePath = [$resourcePath stringByAppendingPathComponent:kMinigamesFolder];
        NSError *$error;
        NSArray *$directoryContents = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:$minigamePath error:&$error];
        NSString *$prefix = @"minigame.";
        NSString *$suffix = @".ccbi";
        NSMutableArray *$minigameFiles = [NSMutableArray array];
        for (NSString *$file in $directoryContents) {
            if (![$file hasPrefix:$prefix] || ![$file hasSuffix:$suffix]) {continue;}
            [$minigameFiles addObject:$file];
        }
        for (NSString *$file in $minigameFiles) {
<<<<<<< HEAD
            if ($minigameFiles.count > 1 && [$file isEqualToString:[NSString stringWithFormat:@"%@%@%@%@",$prefix,@"UID",@"MyMinigame",$suffix]]) {continue;}
            $minigameFile = $file;
            break;
        }
        CCScene *$scene = [CCBReader loadAsScene:$minigameFile];
        MGWUMinigame *$minigame = (MGWUMinigame *)[$scene.children objectAtIndex:0];
        $minigame.character.characterType = (tCharacterType)(arc4random()%((uint)kCharacterMax));
=======
            if ($minigameFiles.count > 1 && [$file isEqualToString:[NSString stringWithFormat:@"%@%@%@",$prefix,@"MyMinigame",$suffix]]) {continue;}
            $minigameFile = $file;
            break;
        }
        MGWUMinigame *$minigame = (MGWUMinigame *)[CCBReader load:$minigameFile];
        $minigame.character.characterType = (tCharacterType)(arc4random()%((uint)kCharacterMax));
        CCScene *$scene = [MGWUMinigameInstructions sceneWithMinigame:$minigame];
>>>>>>> 744f1f3d1a402dd54fbb9a3b62402d39d1429b44
        [[CCDirector sharedDirector] pushScene:$scene];
    };
}

-(void)onExit {
    [self removeAllChildren];
    [super onExit];
}

@end
