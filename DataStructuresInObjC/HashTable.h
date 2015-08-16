//
//  HashTable.h
//  DataStructuresInObjC
//
//  Created by Wei-Lun Su on 8/15/15.
//  Copyright (c) 2015 allensu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HashTable : NSObject
-(void)addWordWithFirstName:(NSString *)firstName lastName:(NSString *)lastName;
-(BOOL)searchWordWithFirstName:(NSString *)firstName lastName:(NSString *)lastName;
@end
