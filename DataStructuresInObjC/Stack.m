//
//  Stack.m
//  DataStructuresInObjC
//
//  Created by Wei-Lun Su on 8/15/15.
//  Copyright (c) 2015 allensu. All rights reserved.
//

#import "Stack.h"
#import "LLNode.h"

@interface Stack ()
@property (nonatomic, strong) LLNode *topNode;
@end

@implementation Stack

-(void)pushWithKey:(NSNumber *)key{
    if (!self.topNode) {
        self.topNode = [[LLNode alloc]initWithKey:key];
        return;
    }
    LLNode *childNode = [[LLNode alloc]initWithKey:key];
    childNode.nextNode = self.topNode;
    self.topNode = childNode;
}

-(NSNumber *)pop{
    
    if (!self.topNode) {
        return nil;
    }
    LLNode *nodeToPop = self.topNode;
    self.topNode = nodeToPop.nextNode;
    return nodeToPop.key;
}

-(NSNumber *)peek{
    
    if (self.topNode.key != nil) {
        return self.topNode.key;
    }
    else {
        return nil;
    }
}

-(BOOL)isEmpty{
    if (self.topNode.key != nil) {
        return NO;
    }else {
        return YES;
    }
}

-(int)countStack{
    
    int count = 0;
    
    if (!self.topNode.key) {
        return 0;
    }
    
    LLNode *currentNode = self.topNode;
    
    while (currentNode != nil) {
        count++;
        currentNode = currentNode.nextNode;
    }
    
    return count;
}

@end
