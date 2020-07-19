#import "NSObject+RACSelectorSignalBmBm.h"
@implementation NSObject (RACSelectorSignalBmBm)
+ (BOOL)rac_signalForSelectorBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)rac_signalForSelectorFromprotocolBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
