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
    
    if (!self.topNode) {
        return nil;
    }
    QNode *queueItem = self.topNode;
    
    if (queueItem.nextNode != nil) {
        self.topNode = queueItem.nextNode;
    }else {
        self.topNode = [[QNode alloc]init];
    }
    return queueItem.key;
}

-(NSNumber *)peek{
    if (self.topNode != nil) {
        return self.topNode.key;
    }else {
        return nil;
    }
}

-(BOOL)isEmpty{
    if (self.topNode != nil) {
        return YES;
    }else {
        return NO;
    }
}

-(int)countQueue{
    if (!self.topNode) {
        return 0;
    }
    int count = 0;
    
    QNode *currentNode = self.topNode;
    
    while (currentNode != nil) {
        count ++;
        currentNode = currentNode.nextNode;
    }
    
    return count;
}

@end
