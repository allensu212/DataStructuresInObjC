//
//  LinkedList.m
//  DataStructuresInObjC
//
//  Created by Wei-Lun Su on 8/15/15.
//  Copyright (c) 2015 allensu. All rights reserved.
//

#import "LinkedList.h"
#import "LLNode.h"
#import "HashTable.h"

@interface LinkedList ()
@property (nonatomic, strong) LLNode *headNode;
@property (nonatomic, strong) LLNode *currentNode;
@end

@implementation LinkedList

-(instancetype)init{
    if (self = [super init]) {
        _count = 0;
    }
    return self;
}

-(void)deleteDuplicateNode:(LLNode *)headNode{
    if (!headNode) {
        return;
    }
    
    LLNode *currentNode = headNode;
    LLNode *nextNode = currentNode.nextNode;
    
    while (currentNode != nil) {
        if (currentNode.key == nextNode.key) {
            currentNode.nextNode = nextNode.nextNode;
            currentNode = currentNode.nextNode;
        }else {
            currentNode = currentNode.nextNode;
        }
    }
}

-(void)addLinkWithKey:(NSNumber *)key{
    
    if (self.headNode.key == nil) {
        self.headNode = [[LLNode alloc]initWithKey:key];
        self.count = 1;
        self.currentNode = self.headNode;
        self.currentNode.key = self.headNode.key;
        return;
    }
    
    if (self.currentNode.nextNode == nil) {
        LLNode *nodeToAdd = [[LLNode alloc]init];
        nodeToAdd.key = key;
        self.currentNode.nextNode = nodeToAdd;
        self.currentNode = self.currentNode.nextNode;
        self.count += 1;
    }else {
        self.currentNode = self.currentNode.nextNode;
    }
}

-(void)removeLinkAtIndex:(NSNumber *)index{
}

-(int)countLinkedList{
    if (self.headNode.key == nil) {
        return 0;
    }else {
        self.currentNode = self.headNode;
        int x = 1;
        
        while (self.currentNode.nextNode != nil) {
            self.currentNode = self.currentNode.nextNode;
            x++;
        }
        return x;
    }
}

@end
