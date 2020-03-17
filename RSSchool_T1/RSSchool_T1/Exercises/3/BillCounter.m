#import "BillCounter.h"

@implementation BillCounter

// Complete the following fuction
- (NSString*)compareResultForBill:(NSArray<NSNumber*>*)bill notIncludingElementWithIndex:(NSInteger)index withGivenSum:(NSNumber*)sum {
    int long k = index;
  
    NSInteger mySum=[[bill valueForKeyPath:@"@sum.self"] integerValue];
    NSInteger value = [sum integerValue];
    NSInteger rmv = [[bill objectAtIndex:k] integerValue];
    
    int long x=(mySum - rmv)*(1/2);
    int long y=(value - x);
    NSString *result= [NSString stringWithFormat:@"%ld", (long)y];
    if (x==value) {
        return @"Bon Appetit";
        }
    else
        {
        return result;
        
        }
}

@end
