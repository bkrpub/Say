//
//  NSString+Say.h
//  Say
//
//  Created by Watanabe Toshinori on 2013/10/01.
//  Copyright (c) 2013 Watanabe Toshinori. All rights reserved.
//

#import <Foundation/Foundation.h>

#define say(fmt, ...) [NSString say:fmt, ##__VA_ARGS__]

@interface NSString (Say)

+ (NSString *)say:(NSString *)format, ... NS_FORMAT_FUNCTION(1,2);

- (NSString *)say;

@end
