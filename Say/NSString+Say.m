//
//  NSString+Say.m
//  Say
//
//  Created by Watanabe Toshinori on 2013/10/01.
//  Copyright (c) 2013 Watanabe Toshinori. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>
#import "NSString+Say.h"

@implementation NSString (Say)

- (NSString *)say
{
    static AVSpeechSynthesizer *synthesizer = nil;
    if (!synthesizer) {
        synthesizer = [[AVSpeechSynthesizer alloc] init];
    }

    AVSpeechUtterance *utterance = [AVSpeechUtterance speechUtteranceWithString:self];
    [synthesizer speakUtterance:utterance];
    
    return self;
}

@end
