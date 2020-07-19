#import "BMUITableViewHeaderFooterViewF+Bm.h"
@implementation BMUITableViewHeaderFooterViewF (Bm)
+ (BOOL)irac_prepareForReuseSignalBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
