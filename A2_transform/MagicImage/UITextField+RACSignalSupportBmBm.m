#import "UITextField+RACSignalSupportBmBm.h"
@implementation UITextField (RACSignalSupportBmBm)
+ (BOOL)rac_textSignalBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)rac_newTextChannelBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
