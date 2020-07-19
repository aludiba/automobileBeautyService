#import "BMGPUImageSwirlFiltera.h"
@implementation BMGPUImageSwirlFiltera
+ (BOOL)eInitbm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)fSetinputrotationatindexbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)CSetradiusbm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)KSetanglebm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)sSetcenterbm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
