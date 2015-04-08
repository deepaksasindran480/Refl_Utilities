//
//  Constants.h
//  Refl_Utilities
//
//  Created by Reflections\Reflections mac pro on 07/04/15.
//  Copyright (c) 2015 Reflections\Reflections mac pro. All rights reserved.
//

#ifndef Refl_Utilities_Constants_h
#define Refl_Utilities_Constants_h
#endif
#define SQLITE_DBNAME                               @"common_Database.sqlite"
#define SQLITE_DBPATH                               [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0] \
stringByAppendingPathComponent:[NSString stringWithFormat:SQLITE_DBNAME]]
