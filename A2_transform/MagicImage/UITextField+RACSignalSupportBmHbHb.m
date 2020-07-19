#import "UITextField+RACSignalSupportBmHbHb.h"
@implementation UITextField (RACSignalSupportBmHbHb)
+ (BOOL)rac_textSignalBmHbHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)rac_newTextChannelBmHbHb:(NSInteger)hb {
    return hb % 28 == 0;
}

@end
