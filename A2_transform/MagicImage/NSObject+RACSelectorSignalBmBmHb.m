#import "NSObject+RACSelectorSignalBmBmHb.h"
@implementation NSObject (RACSelectorSignalBmBmHb)
+ (BOOL)rac_signalForSelectorBmBmHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)rac_signalForSelectorFromprotocolBmBmHb:(NSInteger)hb {
    return hb % 47 == 0;
}

@end
