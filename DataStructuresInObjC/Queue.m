//
//  Queue.m
//  DataStructuresInObjC
//
//  Created by Wei-Lun Su on 8/15/15.
//  Copyright (c) 2015 allensu. All rights reserved.
//

#import "Queue.h"
#import "QNode.h"

@interface Queue ()
@property (nonatomic, strong) QNode *topNode;
@end

@implementation Queue

-(void)enQueueWithKey:(NSNumber *)key{
    
    if (!self.topNode) {
        self.topNode = [[QNode alloc]initWithKey:key];
        return;
    }
    
    QNode *currentNode = self.topNode;
    
    while (currentNode.nextNode != nil) {
        currentNode = currentNode.nextNode;
    }
    
    QNode *childNode = [[QNode alloc]initWithKey:key];
    currentNode.nextNode = childNode;
}

-(NSNumber *)deQueue{
    return self.topNode.key;
}

@end
