#import "BMGPUImageDilationFilterY.h"
@implementation BMGPUImageDilationFilterY
+ (BOOL)PInitwithradiusbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)QInitbm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
