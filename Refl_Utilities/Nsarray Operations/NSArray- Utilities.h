//
//  NSArray- Utilities.h
//  Refl_Utilities
//
//  Created by Reflections\Reflections mac pro on 02/04/15.
//  Copyright (c) 2015 Reflections\Reflections mac pro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray__Utilities : NSObject
+ (NSArray *)urlEncodeContentsOfArray:(NSArray *)urlsArray;
/**
 * sort array alphabetically
 *
 *  @param source unsorted array
 *
 *  @return sorted array
 */
+ (NSArray *)sortArrayAlphabetically:(NSArray *)source;
/**
 *  return all values under a  specified key value from a dictionary( for ex: return array of all mobile no:from a set of address list)
 *
 *  @param source nsdictionary
 *  @param keyvalue the specified key
 *
 *  @return array of values
 */
+ (NSArray *)arrayofValues:(NSDictionary *)source key:(NSString*)keyvalue;
/**
 *  It return two keyvalues as single keyvalue pair (for ex: Name and id are two diiferent keyvalues, It will return as name:id )
 *
 *  @param source nsdictionary
 *  @param key1
 *  @param key2
 *
 *  @return return custom dictionary in the form of { "key1": "key2"}
 */
+ (NSDictionary *)arrayofSingleKeyValuePair:(NSDictionary *)source key:(NSString*)key1 value:(NSString*)key2;
/**
 *  concatenates each element of the array into a string, separating them by the specified symbol(,)
 *
 *  @param array input array
 *
 *  @return created string value
 */
+(NSString*)array_To_String:(NSArray*)array;

@end
