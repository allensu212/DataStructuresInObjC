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
@property (nonatomic, strong) AVLTree *leftTree;
@property (nonatomic, strong) AVLTree *rightTree;
@end

@implementation AVLTree

-(instancetype)init{
    if (self = [super init]) {
        _height = -1;
    }
    return self;
}

@end
