//
//  NSMutableArray+Multidimension.h
//  MultidimensioinalArray
//
//  Created by laprasDrum on 12/10/05.
//  Copyright (c) 2012年 laprasDrum. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (Multidimension)

@property (nonatomic) int width;
@property (nonatomic) int height;

+ (id) initWithWidth:(int)width height:(int)height;
- (id) valueForWidth:(int)width height:(int)height;
- (void) setObject:(id)obj width:(int)width height:(int)height;

@end
