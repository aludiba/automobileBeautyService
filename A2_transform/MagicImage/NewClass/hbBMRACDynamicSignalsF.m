#import "hbBMRACDynamicSignalsF.h"
@implementation hbBMRACDynamicSignalsF
+ (BOOL)LAcreatesignalbmbm:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)EUsubscribebmbm:(NSInteger)hb {
    return hb % 4 == 0;
}

@end
