#import "UITextField+RACSignalSupportBm.h"
@implementation UITextField (RACSignalSupportBm)
+ (BOOL)rac_textSignalBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)rac_newTextChannelBm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
