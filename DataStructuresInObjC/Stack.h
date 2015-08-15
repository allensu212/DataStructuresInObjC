//
//  Stack.h
//  DataStructuresInObjC
//
//  Created by Wei-Lun Su on 8/15/15.
//  Copyright (c) 2015 allensu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stack : NSObject
@property (nonatomic, assign) int count;
-(NSNumber *)pop;
-(void)pushWithKey:(NSNumber *)key;
-(NSNumber *)peek;
-(BOOL)isEmpty;
-(int)countStack;
@end
