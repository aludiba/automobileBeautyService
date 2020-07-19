#import "NSArray+IQ_NSArray_SortHbHb.h"
@implementation NSArray (IQ_NSArray_SortHbHb)
+ (BOOL)sortedArrayByTagHbHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)sortedArrayByPositionHbHb:(NSInteger)hb {
    return hb % 8 == 0;
}

@end
