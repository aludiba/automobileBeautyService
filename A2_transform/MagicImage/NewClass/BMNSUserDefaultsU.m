#import "BMNSUserDefaultsU.h"
@implementation BMNSUserDefaultsU
+ (BOOL)gRac_Channelterminalforkeybm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
