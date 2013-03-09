//
//  JailBreakDetector.m
//  JailBreakDetector
//
//  Created by Di Wu on 3/9/13.
//  Copyright (c) 2013 Di Wu. All rights reserved.
//

#import "JailBreakDetector.h"

@implementation JailBreakDetector

+ (BOOL)isJailBreak
{
    BOOL cydia = NO;
    BOOL binBash = NO;
    NSString *filePath = @"/Applications/Cydia.app";
    if ([[NSFileManager defaultManager] fileExistsAtPath:filePath])
    {
        cydia = YES;
    }
    
    FILE * f = fopen("/bin/bash", "r");
    if (f != NULL)
    {
        binBash = YES;
    }
    fclose(f);
    
    if (cydia || binBash) {
        return YES;
    } else {
        return NO;
    }
}

@end
