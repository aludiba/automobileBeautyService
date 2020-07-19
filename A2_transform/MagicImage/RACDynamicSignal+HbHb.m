#import "RACDynamicSignal+HbHb.h"
@implementation RACDynamicSignal (HbHb)
+ (BOOL)createSignalHbHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)subscribeHbHb:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
