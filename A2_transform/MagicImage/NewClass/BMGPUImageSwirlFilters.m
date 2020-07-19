#import "BMGPUImageSwirlFilters.h"
@implementation BMGPUImageSwirlFilters
+ (BOOL)lInitbmbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)FSetinputrotationatindexbmbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)iSetradiusbmbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)ZSetanglebmbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)KSetcenterbmbm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
