How It Works
-----------
    #import "NSMutableArray+Multidimension.h"

    NSMutableArray *twoDimensionArray = [NSMutableArray initWithWidth:4 height:3];
    
    NSNumber *numObject = @50;
    
    NSLog(@"3,2 s object: %@", [twoDimensionArray valueForWidth:3 height:2]);

    // return null
    
    [twoDimensionArray setObject:numObject width:3 height:2];
    
    NSLog(@"3,2 s object: %@", [twoDimensionArray valueForWidth:3 height:2]);

    // return 50

    NSLog(@"10,10 s object: %@", [twoDimensionArray valueForWidth:10 height:10]);

    // *** Terminating app due to uncaught exception 'NSGenericException', 
    //     reason: 'Multidimensional Array: Out Of Bounds Exception'
