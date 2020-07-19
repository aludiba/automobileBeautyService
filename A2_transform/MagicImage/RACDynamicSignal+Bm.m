#import "RACDynamicSignal+Bm.h"
@implementation RACDynamicSignal (Bm)
+ (BOOL)createSignalBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)subscribeBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
