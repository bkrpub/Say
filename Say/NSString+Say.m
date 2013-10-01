//
//  NSString+Say.m
//  Say
//
//  Created by Watanabe Toshinori on 2013/10/01.
//  Copyright (c) 2013 Watanabe Toshinori. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>
#import "NSString+Say.h"

void NSSay(NSString *format, ...)
{
    va_list args;
    va_start(args, format);
    NSString *string = [[NSString alloc] initWithFormat:format arguments:args];
    va_end(args);
    
    [string say];
}

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

