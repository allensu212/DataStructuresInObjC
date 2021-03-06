//
//  QNode.h
//  DataStructuresInObjC
//
//  Created by Wei-Lun Su on 8/15/15.
//  Copyright (c) 2015 allensu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QNode : NSObject
@property (nonatomic, assign) NSNumber *key;
@property (nonatomic, strong) QNode *nextNode;
-(instancetype)initWithKey:(NSNumber *)key;
@end
