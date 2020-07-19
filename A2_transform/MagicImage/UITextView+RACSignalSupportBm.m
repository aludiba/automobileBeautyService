#import "UITextView+RACSignalSupportBm.h"
@implementation UITextView (RACSignalSupportBm)
+ (BOOL)rac_delegateProxyBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)rac_textSignalBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
