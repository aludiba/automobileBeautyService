#import "BMGPUImageDilationFilterI+BmBm.h"
@implementation BMGPUImageDilationFilterI (BmBm)
+ (BOOL)RInitwithradiusBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)xinitBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
