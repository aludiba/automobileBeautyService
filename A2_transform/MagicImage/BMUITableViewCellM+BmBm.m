#import "BMUITableViewCellM+BmBm.h"
@implementation BMUITableViewCellM (BmBm)
+ (BOOL)Orac_prepareForReuseSignalBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
