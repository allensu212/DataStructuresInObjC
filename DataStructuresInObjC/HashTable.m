//
//  HashTable.m
//  DataStructuresInObjC
//
//  Created by Wei-Lun Su on 8/15/15.
//  Copyright (c) 2015 allensu. All rights reserved.
//

#import "HashTable.h"
#import "HashNode.h"

@interface HashTable ()
@property (nonatomic, strong) NSMutableArray *hashNodeBuckets;
@end

@implementation HashTable

#pragma mark - LazyInstantiation

-(NSArray *)hashNodeBuckets{
    if (!_hashNodeBuckets) {
        _hashNodeBuckets = [[NSMutableArray alloc]init];
    }
    return _hashNodeBuckets;
}

#pragma mark - HashFunction

-(int)createHashWithFullName:(NSString *)fullName{
    //custom hash algorithm here...
    return arc4random() % 10 + 1;
}

#pragma mark - AddingHashNode

-(void)addWordWithFirstName:(NSString *)firstName lastName:(NSString *)lastName{
    
    NSString *fullName = [NSString stringWithFormat:@"%@%@", firstName, lastName];
    int hashIndex = [self createHashWithFullName:fullName];

    HashNode *headNode = [[HashNode alloc]init];
    
    HashNode *childNode = [[HashNode alloc]init];
    childNode.lastName = lastName;
    childNode.firstName = firstName;
    
    if (!self.hashNodeBuckets[hashIndex]) {
        self.hashNodeBuckets[hashIndex] = childNode;
    }else {
        
        //collision occured...
        headNode = self.hashNodeBuckets[hashIndex];
        childNode.nextNode = headNode;
        headNode = childNode;
        self.hashNodeBuckets[hashIndex] = headNode;
    }
}

#pragma mark - SearchingHashNode

-(BOOL)searchWordWithFirstName:(NSString *)firstName lastName:(NSString *)lastName{
    return YES;
}

@end
