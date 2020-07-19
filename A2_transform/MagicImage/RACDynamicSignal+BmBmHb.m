#import "RACDynamicSignal+BmBmHb.h"
@implementation RACDynamicSignal (BmBmHb)
+ (BOOL)createSignalBmBmHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)subscribeBmBmHb:(NSInteger)hb {
    return hb % 45 == 0;
}

@end
