//
//  Sqlite- Manager.h
//  Refl_Utilities
//
//  Created by Reflections\Reflections mac pro on 07/04/15.
//  Copyright (c) 2015 Reflections\Reflections mac pro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMDB.h"
#import "Database query generator.h"
@interface Sqlite__Manager : NSObject
{
    FMDatabase *db;
}
+ (Sqlite__Manager *)sharedManager;
- (NSArray*)getAllMenuItems;
@end
