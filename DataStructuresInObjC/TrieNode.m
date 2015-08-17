//
//  TrieNode.m
//  DataStructuresInObjC
//
//  Created by Wei-Lun Su on 2015/8/16.
//  Copyright (c) 2015年 allensu. All rights reserved.
//

#import "TrieNode.h"

@interface TrieNode ()
@property (nonatomic, strong) NSString *keyString;
@property (nonatomic, assign) int level;
@property (nonatomic, assign) BOOL isFinal;
@property (nonatomic, strong) NSArray *childNodes;
@end

@implementation TrieNode

-(instancetype)initWithKeyString:(NSString *)keyString{
    if (self = [super init]) {
        _keyString = keyString;
        _level = 0;
        _isFinal = NO;
    }
    return self;
}

@end
