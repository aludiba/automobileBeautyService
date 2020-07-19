#import "BMRACReturnSignalx.h"
@implementation BMRACReturnSignalx
+ (BOOL)LSetnamebm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)JNamebm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)CReturnbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)cSubscribebm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
