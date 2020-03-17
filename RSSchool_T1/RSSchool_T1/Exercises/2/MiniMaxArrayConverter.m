#import "MiniMaxArrayConverter.h"

@implementation MiniMaxArrayConverter

// Complete the convertFromArray function below.
- (NSArray<NSNumber*>*)convertFromArray:(NSArray<NSNumber*>*)array {
   NSArray *sortedArray = [[[array sortedArrayUsingSelector:@selector(compare:)] reverseObjectEnumerator] allObjects];
    NSInteger mySum=[[sortedArray valueForKeyPath:@"@sum.self"] integerValue];
    NSInteger totalInt = [sortedArray.firstObject integerValue];
    NSInteger totalInt2 = [sortedArray.lastObject integerValue];
    NSInteger a = mySum - totalInt;
    NSInteger b = mySum - totalInt2;
    
    NSLog(@"%li" " %li",a, b);
    return @[@(a), @(b)];
}

@end
