//
//  Trie.h
//  DataStructuresInObjC
//
//  Created by Wei-Lun Su on 2015/8/16.
//  Copyright (c) 2015年 allensu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Trie : NSObject

-(NSArray *)findWordWithKeyword:(NSString *)keyword;
-(void)addWordWithKeyword:(NSString *)keyword;

@end
