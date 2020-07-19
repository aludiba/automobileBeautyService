#import "UICollectionReusableView+RACSignalSupport-Deletecomments.h"
@implementation UICollectionReusableView (RACSignalSupport-Deletecomments)
+ (BOOL)rac_prepareForReuseSignal-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 10 == 0;
}

@end
