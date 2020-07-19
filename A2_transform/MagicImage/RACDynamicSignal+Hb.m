#import "RACDynamicSignal+Hb.h"
@implementation RACDynamicSignal (Hb)
+ (BOOL)createSignalHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)subscribeHb:(NSInteger)hb {
    return hb % 36 == 0;
}

@end
