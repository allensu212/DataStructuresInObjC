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

-(void)pop{
}

-(NSNumber *)peek{
    return self.topNode.key;
}

-(BOOL)isEmpty{
    return NO;
}

-(int)countStack{
    return 1;
}

@end
