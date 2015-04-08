//
//  NSArray- Utilities.m
//  Refl_Utilities
//
//  Created by Reflections\Reflections mac pro on 02/04/15.
//  Copyright (c) 2015 Reflections\Reflections mac pro. All rights reserved.
//

#import "NSArray- Utilities.h"

@implementation NSArray__Utilities

+ (NSArray *)urlEncodeContentsOfArray:(NSArray *)urlsArray{
    NSMutableArray *result = [NSMutableArray new];
    if (urlsArray != nil) {
        for (NSString *url in urlsArray) {
            [result addObject:[url stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
        }
    }
    return result;
}

+ (NSArray *)sortArrayAlphabetically:(NSArray *)source
{
 
    return [source sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];;
}

+ (NSArray *)arrayofValues:(NSDictionary *)source key:(NSString*)keyvalue 
{
    
    return [source valueForKeyPath:keyvalue];
}

+ (NSDictionary *)arrayofSingleKeyValuePair:(NSDictionary *)source key:(NSString*)key1 value:(NSString*)key2

{
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    for (int i=0; i<source.count; i++) {
        
        [dict setObject:[source valueForKeyPath:key1][i] forKey:[source valueForKeyPath:key2][i]];
    }
    
    return dict;
}

+(NSString*)array_To_String:(NSArray*)array{
    
  return [array componentsJoinedByString:@","];
}
@end
