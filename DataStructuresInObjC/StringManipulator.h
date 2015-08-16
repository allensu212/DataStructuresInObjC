//
//  StringManipulator.h
//  DataStructuresInObjC
//
//  Created by Wei-Lun Su on 8/16/15.
//  Copyright (c) 2015 allensu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StringManipulator : NSObject

-(BOOL)isUniqueCharacter:(NSString *)testedString;
-(void)reverseString:(NSString *)testedString;
-(void)removeDuplicateCharactersInString:(NSString *)testedString;
-(void)replaceSpacesInString:(NSString *)testedString;

@end
