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

@interface WSLabViewController ()
@property (nonatomic, copy) NSArray *numberList;
@property (nonatomic, strong) LinkedList *linkedList;
@end

@implementation WSLabViewController

#pragma mark - LazyInstantiation

-(NSArray *)numberList{
    if (!_numberList) {
        _numberList = @[@1, @3, @2, @5, @4, @6, @9];
    }
    return _numberList;
}

-(LinkedList *)linkedList{
    if (!_linkedList) {
        _linkedList = [[LinkedList alloc]init];
    }
    return _linkedList;
}

#pragma mark - LifeCycle

-(void)viewDidLoad{
    [super viewDidLoad];
    [self addNodeToLinkedList];
}

-(void)addNodeToLinkedList{
    for (NSNumber *key in self.numberList) {
        [self.linkedList addLinkWithKey:key];
    }
    
    [self.linkedList countLinkedList];
}

@end
