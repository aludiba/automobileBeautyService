#import "BMBMNSUserDefaultsPd.h"
@implementation BMBMNSUserDefaultsPd
+ (BOOL)fXrac_Channelterminalforkeybm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
