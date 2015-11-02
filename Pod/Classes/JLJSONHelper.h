//
//  JLJSONHelper.h
//
//  Created by Joey L. on 4/17/15.
//  Copyright (c) 2015 Joey L. All rights reserved.
//
//  v1.0.0
//  https://github.com/buhikon/JLJSONHelper
//

#import <Foundation/Foundation.h>

@interface JLJSONHelper : NSObject

/*!
 @abstract String to JSON Object
 */
+ (id)JSONObjectFromString:(NSString *)jsonString;

/*!
 @abstract JSON Object to String (without space)
 */
+ (NSString *)stringFromJSONObject:(id)json;

/*!
 @abstract JSON Object to String (Pretty printed string)
 */
+ (NSString *)stringPrettyPrintedFromJSONObject:(id)json;
/*!
 @abstract JSON Object to String (Pretty printed string)
 */
+ (NSString *)stringPrettyPrintedFromString:(NSString *)jsonString;

@end
