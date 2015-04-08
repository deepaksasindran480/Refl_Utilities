//
//  Http- Utilities.h
//  Refl_Utilities
//
//  Created by Reflections\Reflections mac pro on 02/04/15.
//  Copyright (c) 2015 Reflections\Reflections mac pro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Http__Utilities : NSObject
/**
 *  encode url string to avoid special chatarvters
 *
 *  @param url sourse url
 * *  @return encoded string
 */
+(NSString*)encodeUrlstring:(NSString*)url;
@end
