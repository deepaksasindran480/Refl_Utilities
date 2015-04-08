//
//  NSDictonary- Utilities.h
//  Refl_Utilities
//
//  Created by Reflections\Reflections mac pro on 06/04/15.
//  Copyright (c) 2015 Reflections\Reflections mac pro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictonary__Utilities : NSObject
/**
 *  Replace 'null','<null>' values with blank
 *
 *  @param dict sourse dictonary
 *
 *  @return new dictonary
 */
+ (NSDictionary *) dictionaryByReplacingNullsWithStrings:(NSDictionary*)dict;
@end
