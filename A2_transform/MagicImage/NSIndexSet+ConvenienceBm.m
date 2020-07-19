#import "NSIndexSet+ConvenienceBm.h"
@implementation NSIndexSet (ConvenienceBm)
+ (BOOL)rt_indexPathsFromIndexesWithSectionBm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
