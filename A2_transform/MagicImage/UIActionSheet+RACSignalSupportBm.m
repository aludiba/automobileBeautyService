#import "UIActionSheet+RACSignalSupportBm.h"
@implementation UIActionSheet (RACSignalSupportBm)
+ (BOOL)rac_delegateProxyBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)rac_buttonClickedSignalBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
