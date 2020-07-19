#import "RACDynamicSignal+BmBmBm.h"
@implementation RACDynamicSignal (BmBmBm)
+ (BOOL)createSignalBmBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)subscribeBmBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
