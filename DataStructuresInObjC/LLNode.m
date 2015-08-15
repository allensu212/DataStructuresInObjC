//
//  LLNode.m
//  DataStructuresInObjC
//
//  Created by Wei-Lun Su on 8/15/15.
//  Copyright (c) 2015 allensu. All rights reserved.
//

#import "LLNode.h"

@implementation LLNode

-(instancetype)initWithKey:(NSNumber *)key{
    if (self = [super init]) {
        _key = key;
    }
    return self;
}

@end
