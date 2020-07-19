#import "BMBMNSUserDefaultsNA.h"
@implementation BMBMNSUserDefaultsNA
+ (BOOL)HOrac_Channelterminalforkey:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
