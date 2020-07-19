#import "UITextView+RACSignalSupportBmBmBmHb.h"
@implementation UITextView (RACSignalSupportBmBmBmHb)
+ (BOOL)rac_delegateProxyBmBmBmHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)rac_textSignalBmBmBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}

@end
