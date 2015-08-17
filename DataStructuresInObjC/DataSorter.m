//
//  DataSorter.m
//  DataStructuresInObjC
//
//  Created by Wei-Lun Su on 2015/8/16.
//  Copyright (c) 2015年 allensu. All rights reserved.
//

#import "DataSorter.h"

@interface DataSorter ()
@property (nonatomic, assign) BOOL isKeyFound;
@end

@implementation DataSorter

-(NSArray *)insertionSort:(NSMutableArray *)unsortedArray{
    
    int comparingIndex;
    int comparedKey;
    
    for (NSNumber *comparedIndex in unsortedArray) {
        comparedKey = (int)unsortedArray[comparedIndex.intValue];
        
        for (comparingIndex = (int)comparedIndex; comparingIndex > -1; comparingIndex --) {
            if (comparedKey < (int)unsortedArray[comparingIndex]) {
                [unsortedArray removeObjectAtIndex:comparingIndex + 1];
                //[unsortedArray insertObject:comparedKey atIndex:comparingIndex];
            }
        }
    }
    NSArray *sortedArray = (NSArray *)unsortedArray;
    return sortedArray;
}

@end
