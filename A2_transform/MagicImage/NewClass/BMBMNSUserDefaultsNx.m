#import "BMBMNSUserDefaultsNx.h"
@implementation BMBMNSUserDefaultsNx
+ (BOOL)AOrac_Channelterminalforkeybm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
