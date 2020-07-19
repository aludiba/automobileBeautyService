#import "UITextView+RACSignalSupportBmBm.h"
@implementation UITextView (RACSignalSupportBmBm)
+ (BOOL)rac_delegateProxyBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)rac_textSignalBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
