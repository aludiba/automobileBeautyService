#import "UITextView+RACSignalSupportBmBmBm.h"
@implementation UITextView (RACSignalSupportBmBmBm)
+ (BOOL)rac_delegateProxyBmBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)rac_textSignalBmBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
