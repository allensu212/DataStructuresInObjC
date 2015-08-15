//
//  LLNode.h
//  DataStructuresInObjC
//
//  Created by Wei-Lun Su on 8/15/15.
//  Copyright (c) 2015 allensu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LLNode : NSObject

@property (nonatomic, assign) NSNumber *key;
@property (nonatomic, strong) LLNode *previousNode;
@property (nonatomic, strong) LLNode *nextNode;

-(instancetype)initWithKey:(NSNumber *)key;

@end
