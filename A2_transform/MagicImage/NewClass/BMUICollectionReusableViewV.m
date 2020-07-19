#import "BMUICollectionReusableViewV.h"
@implementation BMUICollectionReusableViewV
+ (BOOL)frac_prepareForReuseSignal:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
