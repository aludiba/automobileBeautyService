#import "BMBMNSValueOL.h"
@implementation BMBMNSValueOL
+ (BOOL)mXrac_Description:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
