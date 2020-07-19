#import "BMBMRACReturnSignalwu.h"
@implementation BMBMRACReturnSignalwu
+ (BOOL)hNsetnamebmbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)NEnamebmbm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)dQreturnbmbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)aZsubscribebmbm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
