#import "UICollectionReusableView+RACSignalSupportHb.h"
@implementation UICollectionReusableView (RACSignalSupportHb)
+ (BOOL)rac_prepareForReuseSignalHb:(NSInteger)hb {
    return hb % 9 == 0;
}

@end
