#import "BMUITableViewHeaderFooterViewA.h"
@implementation BMUITableViewHeaderFooterViewA
+ (BOOL)Urac_prepareForReuseSignal:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
