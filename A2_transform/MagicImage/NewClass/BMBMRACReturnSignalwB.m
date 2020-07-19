#import "BMBMRACReturnSignalwB.h"
@implementation BMBMRACReturnSignalwB
+ (BOOL)cNsetnamebm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)uEnamebm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)XQreturnbm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)OZsubscribebm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
