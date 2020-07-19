#import "NSArray+IQ_NSArray_SortHb.h"
@implementation NSArray (IQ_NSArray_SortHb)
+ (BOOL)sortedArrayByTagHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)sortedArrayByPositionHb:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
