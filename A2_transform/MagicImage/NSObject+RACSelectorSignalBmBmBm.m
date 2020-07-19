#import "NSObject+RACSelectorSignalBmBmBm.h"
@implementation NSObject (RACSelectorSignalBmBmBm)
+ (BOOL)rac_signalForSelectorBmBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)rac_signalForSelectorFromprotocolBmBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
