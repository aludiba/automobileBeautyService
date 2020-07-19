#import "BMUICollectionReusableViewV+Bm.h"
@implementation BMUICollectionReusableViewV (Bm)
+ (BOOL)frac_prepareForReuseSignalBm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
