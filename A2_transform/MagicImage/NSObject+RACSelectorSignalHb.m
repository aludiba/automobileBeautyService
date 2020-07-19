#import "NSObject+RACSelectorSignalHb.h"
@implementation NSObject (RACSelectorSignalHb)
+ (BOOL)rac_signalForSelectorHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)rac_signalForSelectorFromprotocolHb:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
