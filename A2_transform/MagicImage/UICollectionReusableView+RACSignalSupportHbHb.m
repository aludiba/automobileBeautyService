#import "UICollectionReusableView+RACSignalSupportHbHb.h"
@implementation UICollectionReusableView (RACSignalSupportHbHb)
+ (BOOL)rac_prepareForReuseSignalHbHb:(NSInteger)hb {
    return hb % 49 == 0;
}

@end
