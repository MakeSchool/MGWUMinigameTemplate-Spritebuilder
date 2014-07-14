//
//  MGWUTestGame.m
//  Collusion
//
//  Created by Zachary Barryte on 6/6/14.
//  Copyright 2014 Apportable. All rights reserved.
//

#import "MGWUTestGame.h"
#import "MGWUMinigame.h"


@implementation MGWUTestGame

static NSString *const kMinigamesFolder = @"Published-iOS";

-(void)onEnter {
    [super onEnter];
    CCButton *$btnTest = [CCButton buttonWithTitle:@"[TEST MINIGAME]"];
    [self addChild:$btnTest];
    CGSize $size = [[CCDirector sharedDirector] viewSize];
    $btnTest.position = ccp($size.width/2,$size.height/2);
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
            if ($minigameFiles.count > 1 && [$file isEqualToString:[NSString stringWithFormat:@"%@%@%@%@",$prefix,@"UID",@"MyMinigame",$suffix]]) {continue;}
            $minigameFile = $file;
            break;
        }
        CCScene *$scene = [CCBReader loadAsScene:$minigameFile];
        MGWUMinigame *$minigame = (MGWUMinigame *)[$scene.children objectAtIndex:0];
        $minigame.character.characterType = (tCharacterType)(arc4random()%((uint)kCharacterMax));
        [[CCDirector sharedDirector] pushScene:$scene];
    };
}

-(void)onExit {
    [self removeAllChildren];
    [super onExit];
}

@end
