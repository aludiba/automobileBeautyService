#import "NSArray+IQ_NSArray_SortBm.h"
@implementation NSArray (IQ_NSArray_SortBm)
+ (BOOL)sortedArrayByTagBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)sortedArrayByPositionBm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
