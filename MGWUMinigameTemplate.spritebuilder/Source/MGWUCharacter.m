//
//  MGWUCharacter.m
//  MGWUMinigameTemplate
//
//  Created by Zachary Barryte on 6/10/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//
//  DO NOT MODIFY

#import "MGWUCharacter.h"

@implementation MGWUCharacter {
    CCSprite *_head_front;
    CCSprite *_head_back;
    CCSprite *_head_side;
    CCSprite *_head_top;
    CCSprite *_foot_iso_left;
    CCSprite *_foot_iso_right;
    CCSprite *_foot_front_left;
    CCSprite *_foot_front_right;
    CCSprite *_foot_back;
}

#pragma mark - Art File Management

-(void)setCharacterType:(tCharacterType)$characterType {
    _characterType = $characterType;
    CCSpriteFrameCache *$cache = [CCSpriteFrameCache sharedSpriteFrameCache];
    // head
    [_head_front setSpriteFrame:[$cache spriteFrameByName:[self fileNameForCharacterHeadForOrientation:kFront]]];
    [_head_back setSpriteFrame:[$cache spriteFrameByName:[self fileNameForCharacterHeadForOrientation:kBack]]];
    [_head_side setSpriteFrame:[$cache spriteFrameByName:[self fileNameForCharacterHeadForOrientation:kSide]]];
    [_head_top setSpriteFrame:[$cache spriteFrameByName:[self fileNameForCharacterHeadForOrientation:kTop]]];
    // foot
    [_foot_iso_left setSpriteFrame:[$cache spriteFrameByName:[self fileNameForCharacterFootForOrientation:kIso]]];
    [_foot_iso_right setSpriteFrame:[$cache spriteFrameByName:[self fileNameForCharacterFootForOrientation:kIso]]];
    [_foot_front_left setSpriteFrame:[$cache spriteFrameByName:[self fileNameForCharacterFootForOrientation:kFront]]];
    [_foot_front_right setSpriteFrame:[$cache spriteFrameByName:[self fileNameForCharacterFootForOrientation:kFront]]];
    [_foot_back setSpriteFrame:[$cache spriteFrameByName:[self fileNameForCharacterFootForOrientation:kBack]]];
}

-(NSString *)stringCharacter {
    return (_characterType == kCharacterRed ? @"red" :
            (_characterType == kCharacterGreen ? @"green" :
             (_characterType == kCharacterPink ? @"pink" :
              (_characterType == kCharacterTeal ? @"teal" :
               (_characterType == kCharacterBlue ? @"blue" : nil)))));
}

-(NSString *)stringOrientationForOrientation:(tCharacterOrientation)$characterOrientation {
    return ($characterOrientation == kBack ? @"back" :
            ($characterOrientation == kFront ? @"front" :
             ($characterOrientation == kSide ? @"side" :
              ($characterOrientation == kTop ? @"top" :
               ($characterOrientation == kIso ? @"iso" : nil)))));
}

-(NSString *)fileNameForCharacterHeadForOrientation:(tCharacterOrientation)$characterOrientation {
    return [NSString stringWithFormat:@"characters/%@_head_%@.png",[self stringCharacter],[self stringOrientationForOrientation:$characterOrientation]];
}
-(NSString *)fileNameForCharacterFootForOrientation:(tCharacterOrientation)$characterOrientation {
    return [NSString stringWithFormat:@"characters/%@_foot_%@.png",[self stringCharacter],[self stringOrientationForOrientation:$characterOrientation]];
}

@end
