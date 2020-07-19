#import "NSObject+RACSelectorSignalBmHb.h"
@implementation NSObject (RACSelectorSignalBmHb)
+ (BOOL)rac_signalForSelectorBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)rac_signalForSelectorFromprotocolBmHb:(NSInteger)hb {
    return hb % 37 == 0;
}

@end
