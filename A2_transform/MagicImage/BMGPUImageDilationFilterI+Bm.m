#import "BMGPUImageDilationFilterI+Bm.h"
@implementation BMGPUImageDilationFilterI (Bm)
+ (BOOL)RInitwithradiusBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)xinitBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
