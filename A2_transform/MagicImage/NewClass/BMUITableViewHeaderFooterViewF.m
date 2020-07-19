#import "BMUITableViewHeaderFooterViewF.h"
@implementation BMUITableViewHeaderFooterViewF
+ (BOOL)irac_prepareForReuseSignal:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
