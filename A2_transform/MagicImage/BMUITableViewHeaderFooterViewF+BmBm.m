#import "BMUITableViewHeaderFooterViewF+BmBm.h"
@implementation BMUITableViewHeaderFooterViewF (BmBm)
+ (BOOL)irac_prepareForReuseSignalBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
