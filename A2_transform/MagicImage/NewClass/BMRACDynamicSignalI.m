#import "BMRACDynamicSignalI.h"
@implementation BMRACDynamicSignalI
+ (BOOL)bCreatesignal:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)ASubscribe:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
