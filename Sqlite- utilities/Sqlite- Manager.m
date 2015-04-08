//
//  Sqlite- Manager.m
//  Refl_Utilities
//
//  Created by Reflections\Reflections mac pro on 07/04/15.
//  Copyright (c) 2015 Reflections\Reflections mac pro. All rights reserved.
//

#import "Sqlite- Manager.h"
#import "Constants.h"
@implementation Sqlite__Manager
#pragma mark - initialize Methods
+ (Sqlite__Manager *)sharedManager
{
    static dispatch_once_t once;
    static id sharedInstance;
    dispatch_once(&once, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (id) init{
    self = [super init];
    if (self) {
        [Sqlite__Manager copyDatabaseIfNeeded];
        db = [FMDatabase databaseWithPath:SQLITE_DBPATH];
        
        
        NSLog(@"Database Path = %@",SQLITE_DBPATH);
        if (![db open])
            NSLog(@"Failed to open database!");
    }
    return self;
}

+ (void) copyDatabaseIfNeeded{
    NSFileManager *fm = [NSFileManager defaultManager];
    NSString *template_path = [[NSBundle mainBundle] pathForResource:SQLITE_DBNAME ofType:@""];
    
    if ([[[NSProcessInfo processInfo] arguments] indexOfObject:@"database_reset"] != NSNotFound) {
        [fm removeItemAtPath:SQLITE_DBPATH error:nil];
    }
    
    if (![fm fileExistsAtPath:SQLITE_DBPATH])
        [fm copyItemAtPath:template_path toPath:SQLITE_DBPATH error:nil];
}

#pragma mark - Method to get all features
- (NSArray*)getAllMenuItems{
    FMResultSet *resultSet = [db executeQuery:[Database_query_generator GetallMenuItems]];
   while ([resultSet next])
    NSLog(@"getAllMenuItems = %@",[resultSet stringForColumn:@"menu_title"]);
    return nil;
}
@end
