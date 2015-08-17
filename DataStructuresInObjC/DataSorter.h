//
//  DataSorter.h
//  DataStructuresInObjC
//
//  Created by Wei-Lun Su on 2015/8/16.
//  Copyright (c) 2015年 allensu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataSorter : NSObject

-(void)binarySearch:(NSArray *)unsortedArray;
-(NSArray *)insertionSort:(NSArray *)unsortedArray;
-(NSArray *)bubbleSort:(NSArray *)unsortedArray;
-(NSArray *)mergeSor:(NSArray *)unsortedArray;
-(NSArray *)quickSort:(NSArray *)unsortedArray;

@end
