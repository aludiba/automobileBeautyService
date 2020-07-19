#import "UIActionSheet+RACSignalSupportHb.h"
@implementation UIActionSheet (RACSignalSupportHb)
+ (BOOL)rac_delegateProxyHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)rac_buttonClickedSignalHb:(NSInteger)hb {
    return hb % 17 == 0;
}

@end
