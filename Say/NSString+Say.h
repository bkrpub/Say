//
//  NSString+Say.h
//  Say
//
//  Created by Watanabe Toshinori on 2013/10/01.
//  Copyright (c) 2013 Watanabe Toshinori. All rights reserved.
//

#import <Foundation/Foundation.h>

extern void NSSay(NSString *format, ...) NS_FORMAT_FUNCTION(1,2);

@interface NSString (Say)

- (NSString *)say;

@end
