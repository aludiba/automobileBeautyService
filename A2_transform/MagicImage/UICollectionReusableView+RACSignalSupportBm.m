#import "UICollectionReusableView+RACSignalSupportBm.h"
@implementation UICollectionReusableView (RACSignalSupportBm)
+ (BOOL)rac_prepareForReuseSignalBm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
