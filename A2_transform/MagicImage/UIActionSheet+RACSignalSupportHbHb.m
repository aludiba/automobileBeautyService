#import "UIActionSheet+RACSignalSupportHbHb.h"
@implementation UIActionSheet (RACSignalSupportHbHb)
+ (BOOL)rac_delegateProxyHbHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)rac_buttonClickedSignalHbHb:(NSInteger)hb {
    return hb % 6 == 0;
}

@end
