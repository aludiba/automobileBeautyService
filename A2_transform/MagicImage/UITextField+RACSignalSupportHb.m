#import "UITextField+RACSignalSupportHb.h"
@implementation UITextField (RACSignalSupportHb)
+ (BOOL)rac_textSignalHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)rac_newTextChannelHb:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
