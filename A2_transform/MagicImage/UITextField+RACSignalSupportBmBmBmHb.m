#import "UITextField+RACSignalSupportBmBmBmHb.h"
@implementation UITextField (RACSignalSupportBmBmBmHb)
+ (BOOL)rac_textSignalBmBmBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)rac_newTextChannelBmBmBmHb:(NSInteger)hb {
    return hb % 14 == 0;
}

@end
