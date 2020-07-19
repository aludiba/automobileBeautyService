#import "UITextField+RACSignalSupportBmHb.h"
@implementation UITextField (RACSignalSupportBmHb)
+ (BOOL)rac_textSignalBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)rac_newTextChannelBmHb:(NSInteger)hb {
    return hb % 40 == 0;
}

@end
