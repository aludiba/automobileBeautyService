#import "BMUITableViewCellM+Bm.h"
@implementation BMUITableViewCellM (Bm)
+ (BOOL)Orac_prepareForReuseSignalBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
