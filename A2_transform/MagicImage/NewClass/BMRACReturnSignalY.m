#import "BMRACReturnSignalY.h"
@implementation BMRACReturnSignalY
+ (BOOL)qSetnamebmbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)rNamebmbm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)dReturnbmbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)pSubscribebmbm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
