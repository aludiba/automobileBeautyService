#import "NSObject+RACSelectorSignalBm.h"
@implementation NSObject (RACSelectorSignalBm)
+ (BOOL)rac_signalForSelectorBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)rac_signalForSelectorFromprotocolBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
