#import "BMBMRACDynamicSignalsz.h"
@implementation BMBMRACDynamicSignalsz
+ (BOOL)JAcreatesignal:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)PUsubscribe:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
