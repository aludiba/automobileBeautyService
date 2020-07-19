#import "NSArray+IQ_NSArray_SortBmBmBm.h"
@implementation NSArray (IQ_NSArray_SortBmBmBm)
+ (BOOL)sortedArrayByTagBmBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)sortedArrayByPositionBmBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
