#import "BMUITableViewHeaderFooterViewA+Bm.h"
@implementation BMUITableViewHeaderFooterViewA (Bm)
+ (BOOL)Urac_prepareForReuseSignalBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
