#import "UIActionSheet+RACSignalSupportBmBm.h"
@implementation UIActionSheet (RACSignalSupportBmBm)
+ (BOOL)rac_delegateProxyBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)rac_buttonClickedSignalBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
