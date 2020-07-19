#import "BMNSInvocationI+BmBm.h"
@implementation BMNSInvocationI (BmBm)
+ (BOOL)URac_SetargumentNAtindexBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)CRac_ArgumentatindexBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)rrac_argumentsTupleBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)hSetrac_ArgumentstupleBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)irac_returnValueBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
