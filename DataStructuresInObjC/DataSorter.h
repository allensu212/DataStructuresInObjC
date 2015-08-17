//
//  DataSorter.h
//  DataStructuresInObjC
//
//  Created by Wei-Lun Su on 2015/8/16.
//  Copyright (c) 2015年 allensu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataSorter : NSObject

-(void)binarySearch:(NSMutableArray *)unsortedArray;
-(NSArray *)insertionSort:(NSMutableArray *)unsortedArray;
-(NSArray *)bubbleSort:(NSMutableArray *)unsortedArray;
-(NSArray *)mergeSor:(NSMutableArray *)unsortedArray;
-(NSArray *)quickSort:(NSMutableArray *)unsortedArray;

@end
