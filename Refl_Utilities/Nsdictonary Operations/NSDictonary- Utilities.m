//
//  NSDictonary- Utilities.m
//  Refl_Utilities
//
//  Created by Reflections\Reflections mac pro on 06/04/15.
//  Copyright (c) 2015 Reflections\Reflections mac pro. All rights reserved.
//

#import "NSDictonary- Utilities.h"

@implementation NSDictonary__Utilities
+ (NSDictionary *) dictionaryByReplacingNullsWithStrings:(NSDictionary*)dict
{
    const NSMutableDictionary *replaced = [NSMutableDictionary dictionaryWithDictionary: dict];
    const id nul = [NSNull null];
    const NSString *blank = @"";
    
    for (NSString *key in dict) {
        const id object = [dict objectForKey: key];
        if (object == nul) {
            [replaced setObject: blank forKey: key];
        }
        else if([object isKindOfClass:[NSString class]] &&  [object isEqualToString:@"<null>"]){
            [replaced setObject: blank forKey: key];
        }
        else if ([object isKindOfClass: [NSDictionary class]]) {
            [replaced setObject: [NSDictonary__Utilities dictionaryByReplacingNullsWithStrings:object] forKey: key];
        }
    }
    return [NSDictionary dictionaryWithDictionary:(NSDictionary *)replaced];
}
@end
