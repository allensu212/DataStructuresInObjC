//
//  AVLTree.m
//  DataStructuresInObjC
//
//  Created by Wei-Lun Su on 8/15/15.
//  Copyright (c) 2015 allensu. All rights reserved.
//

#import "AVLTree.h"

@interface AVLTree ()
@property (nonatomic, assign) NSNumber *key;
@property (nonatomic, assign) int height;
@property (nonatomic, strong) AVLTree *leftTree;
@property (nonatomic, strong) AVLTree *rightTree;
@end

@implementation AVLTree

-(int)height{
    if (!_height) {
        return -1;
    }else {
        return _height;
    }
}

-(instancetype)init{
    if (self = [super init]) {
        _height = -1;
    }
    return self;
}

-(BOOL)isTreeBalanced{
    
    if (!self.key) {
        return NO;
    }
    
    if (abs((self.rightTree.height - self.leftTree.height)) <= 1) {
        return YES;
    }else {
        return NO;
    }
}

-(void)addNodeWithKey:(NSNumber *)key{
    if (!self.key) {
        self.key = key;
        self.height = 0;
        return;
    }
    
    if (self.key > key) {
        if (!self.leftTree) {
            AVLTree *leftChild = [[AVLTree alloc]init];
            leftChild.key = key;
            leftChild.height = 0;
            self.leftTree = leftChild;
        }else {
            [self.leftTree addNodeWithKey:key];
        }
    }
    
    if (self.key < key) {
        if (!self.rightTree) {
            AVLTree *rightChild = [[AVLTree alloc]init];
            rightChild.key = key;
            rightChild.height = 0;
            self.rightTree = rightChild;
        }else {
            [self.rightTree addNodeWithKey:key];
        }
    }
}

@end
