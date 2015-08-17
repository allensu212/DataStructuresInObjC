//
//  Trie.m
//  DataStructuresInObjC
//
//  Created by Wei-Lun Su on 2015/8/16.
//  Copyright (c) 2015年 allensu. All rights reserved.
//

#import "Trie.h"
#import "TrieNode.h"

@interface Trie ()
@property (nonatomic, strong) TrieNode *rootNode;
@end

@implementation Trie

-(instancetype)init{
    if (self = [super init]) {
        _rootNode = [[TrieNode alloc]init];
    }
    return self;
}

-(void)addWordWithKeyword:(NSString *)keyword{
}

-(NSArray *)findWordWithKeyword:(NSString *)keyword{
    return nil;
}

@end
