//
//  MGWUTestGame.m
//  Collusion
//
//  Created by Zachary Barryte on 6/6/14.
//  Copyright 2014 Apportable. All rights reserved.
//

#import "MGWUTestGame.h"
#import "MGWUMinigame.h"
#import "MGWUCharacter.h"
#import "MGWUMinigameInstructions.h"

@implementation MGWUTestGame

static NSString *const kMinigamesFolder = @"Published-iOS";

-(void)onEnter {
    [super onEnter];
    CCButton *$btnTest = [CCButton buttonWithTitle:@"[TEST MINIGAME]"];
    [self addChild:$btnTest];
    CGSize $size = [[CCDirector sharedDirector] viewSize];
    $btnTest.position = ccp($size.width/2,0.25*$size.height);
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
            if ($minigameFiles.count > 1 && [$file isEqualToString:[NSString stringWithFormat:@"%@%@%@",$prefix,@"MyMinigame",$suffix]]) {continue;}
            $minigameFile = $file;
            break;
        }
        MGWUMinigame *$minigame = (MGWUMinigame *)[CCBReader load:$minigameFile];
        $minigame.character.characterType = (tCharacterType)(arc4random()%((uint)kCharacterMax));
        CCScene *$scene = [MGWUMinigameInstructions sceneWithMinigame:$minigame];
        [[CCDirector sharedDirector] pushScene:$scene];
    };
}

-(void)onExit {
    [self removeAllChildren];
    [super onExit];
}

@end
