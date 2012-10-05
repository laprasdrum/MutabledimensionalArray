//
//  NSMutableArray+Multidimension.m
//  MultidimensioinalArray
//
//  Created by laprasDrum on 12/10/05.
//  Copyright (c) 2012年 laprasDrum. All rights reserved.
//

#import "NSMutableArray+Multidimension.h"

@implementation NSMutableArray (Multidimension)

@dynamic width;
@dynamic height;

+ (id) initWithWidth:(int)width height:(int)height
{
    NSMutableArray *columnArray = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < width; i++) {
        NSMutableArray *rowArray = [[NSMutableArray alloc] init];
        
        for (int j = 0; j < height; j++) {
            [rowArray addObject:[NSNull null]];
        }
        
        [columnArray addObject:rowArray];
    }
    
    return columnArray;
}

- (id) valueForWidth:(int)width height:(int)height
{
    if (width >= [self getWidth] || height >= [self getHeight]) {
        NSLog(@"have no value in array[%d, %d]", width, height);
        
        [[NSException exceptionWithName:NSGenericException
                                reason:@"Multidimensional Array: Out Of Bounds Exception"
                              userInfo:nil]
         raise];
    }
    
    NSMutableArray *rowArray = [self objectAtIndex:width];
    
    return [rowArray objectAtIndex:height];
}

- (void) setObject:(id)obj width:(int)width height:(int)height
{
    if (width >= [self getWidth] || height >= [self getHeight]) {
        NSLog(@"have no value in array[%d, %d]", width, height);
        
        [[NSException exceptionWithName:NSGenericException
                                 reason:@"Multidimensional Array: Out Of Bounds Exception"
                               userInfo:nil]
         raise];
    }
    
    NSMutableArray *rowArray = [self objectAtIndex:width];
    
    [rowArray replaceObjectAtIndex:height withObject:obj];
}

- (int) getWidth
{
    return [self count];
}

- (int) getHeight
{
    NSMutableArray *rowArray = [self objectAtIndex:0];
    return [rowArray count];
}


@end
