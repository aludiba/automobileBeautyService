#import "BMBMRACDynamicSignalsp.h"
@implementation BMBMRACDynamicSignalsp
+ (BOOL)JAcreatesignal:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)kUsubscribe:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
