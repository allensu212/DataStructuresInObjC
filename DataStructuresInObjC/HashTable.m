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

-(NSMutableArray *)hashNodeBuckets{
    if (!_hashNodeBuckets) {
        _hashNodeBuckets = [[NSMutableArray alloc]init];
    }
    return _hashNodeBuckets;
}

#pragma mark - HashFunction

-(int)createHashWithFullName:(NSString *)fullName{
    //custom hash algorithm here...
    int hashIndex = (int)fullName.length;
    return hashIndex;
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
    
    NSString *fullName = [NSString stringWithFormat:@"%@%@", firstName, lastName];
    int hashIndex = [self createHashWithFullName:fullName];
    
    if (!self.hashNodeBuckets[hashIndex]) {
        NSLog(@"name not found in hash table..");
        return NO;
    }else {
        
        HashNode *currentNode = self.hashNodeBuckets[hashIndex];
        
        while (currentNode != nil) {
            
            NSString *hashName = [NSString stringWithFormat:@"%@%@", currentNode.firstName, currentNode.lastName];
            
            if ([hashName isEqualToString:fullName]) {
                NSLog(@"%@ found in hash table...", fullName);
                return YES;
            }
            NSLog(@"searching for word through chained list...");
            currentNode = currentNode.nextNode;
        }
    }
    NSLog(@"name not found in hash table..");
    return NO;
}

@end
