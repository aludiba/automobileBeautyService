#import "BMGPUImageDilationFilterz+Bm.h"
@implementation BMGPUImageDilationFilterz (Bm)
+ (BOOL)lInitwithradiusBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)FinitBm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
