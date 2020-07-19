#import "BMGPUImageDilationFilterz.h"
@implementation BMGPUImageDilationFilterz
+ (BOOL)lInitwithradius:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)Finit:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
