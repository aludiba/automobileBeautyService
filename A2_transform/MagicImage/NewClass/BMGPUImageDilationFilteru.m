#import "BMGPUImageDilationFilteru.h"
@implementation BMGPUImageDilationFilteru
+ (BOOL)mInitwithradiusbm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)qInitbm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
