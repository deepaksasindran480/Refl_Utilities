//
//  Http- Utilities.m
//  Refl_Utilities
//
//  Created by Reflections\Reflections mac pro on 02/04/15.
//  Copyright (c) 2015 Reflections\Reflections mac pro. All rights reserved.
//

#import "Http- Utilities.h"

@implementation Http__Utilities
+(NSString*)encodeUrlstring:(NSString*)url{
    return (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(
                                                               NULL,
                                                               (CFStringRef)url,
                                                               NULL,
                                                               (CFStringRef)@"!*'();:@&=+$,/?%#[]",
                                                               kCFStringEncodingUTF8 ));
}
@end
