//
//  Database query generator.m
//  Refl_Utilities
//
//  Created by Reflections\Reflections mac pro on 07/04/15.
//  Copyright (c) 2015 Reflections\Reflections mac pro. All rights reserved.
//

#import "Database query generator.h"

@implementation Database_query_generator
+ (NSString *)GetallMenuItems{
    return [Database_query_generator buildSelectQueryWithFields:nil forTable:@"Menu_List" where:nil];
}
#pragma mark Select query generator

+ (NSString *)buildSelectQueryWithFields:(NSArray *)fields forTable:(NSString *)tableName where:(NSString *)whereClause{
    
    if (tableName == nil) {
        [NSException raise:@"Invalid table name (nil)" format:@""];
        return nil;
    }
    
    NSMutableString *query = [NSMutableString stringWithString:@"SELECT "];
    if (fields == nil || !(fields.count > 0)) {
        [query appendString:@"* "];
    }
    else{
        [query appendString:[fields componentsJoinedByString:@","]];
    }
    
    [query appendString:[NSString stringWithFormat:@" FROM %@ ",tableName]];
    
    if (whereClause != nil && ![[NSString_Utilities trim:whereClause] isEqualToString:@""] ) {
        [query appendString:[NSString stringWithFormat:@"WHERE %@ ",whereClause]];
    }
    
    [query appendString:@";"];
    
    return query;
}
+ (NSString *)addNewColumn:(NSString *)tableName ColumnName:(NSString *)whereClause{
    
    if (tableName == nil) {
        [NSException raise:@"Invalid table name (nil)" format:@""];
        return nil;
    }
    
    NSMutableString *query = [NSMutableString stringWithString:@"SELECT "];
    if (fields == nil || !(fields.count > 0)) {
        [query appendString:@"* "];
    }
    else{
        [query appendString:[fields componentsJoinedByString:@","]];
    }
    
    [query appendString:[NSString stringWithFormat:@" FROM %@ ",tableName]];
    
    if (whereClause != nil && ![[NSString_Utilities trim:whereClause] isEqualToString:@""] ) {
        [query appendString:[NSString stringWithFormat:@"WHERE %@ ",whereClause]];
    }
    
    [query appendString:@";"];
    
    return query;
}
@end
