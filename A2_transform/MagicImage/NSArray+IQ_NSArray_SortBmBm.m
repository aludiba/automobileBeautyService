#import "NSArray+IQ_NSArray_SortBmBm.h"
@implementation NSArray (IQ_NSArray_SortBmBm)
+ (BOOL)sortedArrayByTagBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)sortedArrayByPositionBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
