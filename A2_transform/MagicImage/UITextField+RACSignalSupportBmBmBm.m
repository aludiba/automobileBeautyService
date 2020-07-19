#import "UITextField+RACSignalSupportBmBmBm.h"
@implementation UITextField (RACSignalSupportBmBmBm)
+ (BOOL)rac_textSignalBmBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)rac_newTextChannelBmBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
