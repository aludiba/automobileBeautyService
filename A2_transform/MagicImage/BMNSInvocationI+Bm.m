#import "BMNSInvocationI+Bm.h"
@implementation BMNSInvocationI (Bm)
+ (BOOL)URac_SetargumentNAtindexBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)CRac_ArgumentatindexBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)rrac_argumentsTupleBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)hSetrac_ArgumentstupleBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)irac_returnValueBm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
