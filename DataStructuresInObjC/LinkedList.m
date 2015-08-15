//
//  LinkedList.m
//  DataStructuresInObjC
//
//  Created by Wei-Lun Su on 8/15/15.
//  Copyright (c) 2015 allensu. All rights reserved.
//

#import "LinkedList.h"
#import "LLNode.h"

@interface LinkedList ()
@property (nonatomic, strong) LLNode *headNode;
@property (nonatomic, strong) LLNode *currentNode;
@end

@implementation LinkedList

#pragma mark - AddingLink

-(void)addLinkWithKey:(NSNumber *)key{
    
    if (self.headNode.key == nil) {
        self.headNode = [[LLNode alloc]initWithKey:key];
        self.currentNode = self.headNode;
        self.currentNode.key = self.headNode.key;
        return;
    }
    
    if (self.currentNode.nextNode == nil) {
        LLNode *nodeToAdd = [[LLNode alloc]init];
        nodeToAdd.key = key;
        self.currentNode.nextNode = nodeToAdd;
        self.currentNode = self.currentNode.nextNode;
    }else {
        self.currentNode = self.currentNode.nextNode;
    }
}

@end
