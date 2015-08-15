//
//  AVLTree.h
//  DataStructuresInObjC
//
//  Created by Wei-Lun Su on 8/15/15.
//  Copyright (c) 2015 allensu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AVLTree : NSObject
@property (nonatomic, assign) int height;
-(void)addNodeWithKey:(NSNumber *)key;
@end
