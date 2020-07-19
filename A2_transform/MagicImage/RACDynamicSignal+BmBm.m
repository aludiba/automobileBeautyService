#import "RACDynamicSignal+BmBm.h"
@implementation RACDynamicSignal (BmBm)
+ (BOOL)createSignalBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)subscribeBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
