#import "UICollectionReusableView+RACSignalSupportBmBm.h"
@implementation UICollectionReusableView (RACSignalSupportBmBm)
+ (BOOL)rac_prepareForReuseSignalBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
