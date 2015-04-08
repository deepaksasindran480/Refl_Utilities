//
//  Database query generator.h
//  Refl_Utilities
//
//  Created by Reflections\Reflections mac pro on 07/04/15.
//  Copyright (c) 2015 Reflections\Reflections mac pro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString-Utilities.h"
@interface Database_query_generator : NSObject
+ (NSString *)GetallMenuItems;
+ (NSString *)buildSelectQueryWithFields:(NSArray *)fields forTable:(NSString *)tableName where:(NSString *)whereClause;
@end
