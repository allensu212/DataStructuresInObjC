//
//  Queue.h
//  DataStructuresInObjC
//
//  Created by Wei-Lun Su on 8/15/15.
//  Copyright (c) 2015 allensu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Queue : NSObject
-(void)enQueueWithKey:(NSNumber *)key;
-(NSNumber *)deQueue;
@end
