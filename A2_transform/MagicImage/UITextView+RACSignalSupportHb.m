#import "UITextView+RACSignalSupportHb.h"
@implementation UITextView (RACSignalSupportHb)
+ (BOOL)rac_delegateProxyHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)rac_textSignalHb:(NSInteger)hb {
    return hb % 45 == 0;
}

@end
