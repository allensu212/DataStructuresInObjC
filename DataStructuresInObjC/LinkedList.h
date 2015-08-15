//
//  LinkedList.h
//  DataStructuresInObjC
//
//  Created by Wei-Lun Su on 8/15/15.
//  Copyright (c) 2015 allensu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LinkedList : NSObject
@property (nonatomic, assign) int count;
-(void)addLinkWithKey:(NSNumber *)key;
-(void)removeLinkAtIndex:(NSNumber *)index;
-(int)countLinkedList;
@end
