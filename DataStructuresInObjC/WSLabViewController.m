//
//  ViewController.m
//  DataStructuresInObjC
//
//  Created by Wei-Lun Su on 8/15/15.
//  Copyright (c) 2015 allensu. All rights reserved.
//

#import "WSLabViewController.h"
#import "LinkedList.h"
#import "LLNode.h"
#import "AVLTree.h"
#import "Queue.h"
#import "Stack.h"

@interface WSLabViewController ()
@property (nonatomic, copy) NSArray *numberList;
@property (nonatomic, strong) LinkedList *linkedList;
@property (nonatomic, strong) AVLTree *binarySearchTree;
@property (nonatomic, strong) Queue *queue;
@property (nonatomic, strong) Stack *stack;
@end

@implementation WSLabViewController

#pragma mark - LazyInstantiation

-(NSArray *)numberList{
    if (!_numberList) {
        _numberList = @[@1, @3, @2, @5, @4, @6, @7];
    }
    return _numberList;
}

-(LinkedList *)linkedList{
    if (!_linkedList) {
        _linkedList = [[LinkedList alloc]init];
    }
    return _linkedList;
}

-(AVLTree *)binarySearchTree{
    if (!_binarySearchTree) {
        _binarySearchTree = [[AVLTree alloc]init];
    }
    return _binarySearchTree;
}

-(Queue *)queue{
    if (!_queue) {
        _queue = [[Queue alloc]init];
    }
    return _queue;
}

-(Stack *)stack{
    if (!_stack) {
        _stack = [[Stack alloc]init];
    }
    return _stack;
}

#pragma mark - LifeCycle

-(void)viewDidLoad{
    [super viewDidLoad];
    [self addNodeToLinkedList];
    [self addNodeToAVLTree];
    [self enQueue];
    [self pushIntoStack];
}

#pragma mark - StackAndQueue

-(void)pushIntoStack{
    for (NSNumber *key in self.numberList) {
        [self.stack pushWithKey:key];
    }
    [self.stack pop];
}

-(void)enQueue{
    for (NSNumber *key in self.numberList) {
        [self.queue enQueueWithKey:key];
    }
}

#pragma mark - LinkedList

-(void)addNodeToLinkedList{
    for (NSNumber *key in self.numberList) {
        [self.linkedList addLinkWithKey:key];
    }
    [self.linkedList countLinkedList];
}

#pragma mark - AVLTree

-(void)addNodeToAVLTree{
    for (NSNumber *key in self.numberList) {
        [self.binarySearchTree addNodeWithKey:key];
    }
    
    [self.binarySearchTree isTreeBalanced];
}

@end
