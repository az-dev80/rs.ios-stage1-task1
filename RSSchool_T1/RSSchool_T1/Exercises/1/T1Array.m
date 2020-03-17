#import "T1Array.h"

@implementation T1Array

// Complete the following fuction
- (NSArray *)convertToHappy:(NSArray *)sadArray {
   NSMutableArray *myMutableArray = [sadArray mutableCopy];
    unsigned long n = [myMutableArray count];
    int i=1;
    while (i<n-1){
      
        NSInteger a = [[myMutableArray objectAtIndex:i] integerValue];
        NSInteger b = [[myMutableArray objectAtIndex:i-1] integerValue];
        NSInteger c = [[myMutableArray objectAtIndex:i+1] integerValue];
    if (a>b+c) {
        [myMutableArray removeObjectAtIndex:i];
        n=n-1;
        if (i>1) {i=i-1;} else i=1;
        }
    else
        i=i+1;}
    
    return myMutableArray;
}

@end
