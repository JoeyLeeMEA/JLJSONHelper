//
//  JLJSONHelper.m
//
//  Created by Joey L. on 4/17/15.
//  Copyright (c) 2015 Joey L. All rights reserved.
//
//  v1.0.0
//

#import "JLJSONHelper.h"

@implementation JLJSONHelper

+ (id)JSONObjectFromString:(NSString *)jsonString
{
    if(!jsonString) return nil;
    
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    id json = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:nil];
    return json;
}

+ (NSString *)stringFromJSONObject:(id)json
{
    return [JLJSONHelper stringFromJSONObject:json options:kNilOptions];
}

+ (NSString *)stringPrettyPrintedFromJSONObject:(id)json
{
    return [JLJSONHelper stringFromJSONObject:json options:NSJSONWritingPrettyPrinted];
}

+ (NSString *)stringFromJSONObject:(id)json options:(NSJSONWritingOptions)opt
{
    if(!json) return nil;
    
    NSData *data = [JLJSONHelper dataFromJSONObject:json options:opt];
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

+ (NSData *)dataFromJSONObject:(id)json options:(NSJSONWritingOptions)opt
{
    if(!json) return nil;
    return [NSJSONSerialization dataWithJSONObject:json options:opt error:nil];
}

@end
