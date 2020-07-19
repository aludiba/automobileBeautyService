#import "BMBMRACDynamicSignalsp+Bm.h"
@implementation BMBMRACDynamicSignalsp (Bm)
+ (BOOL)JAcreatesignalBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)kUsubscribeBm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
