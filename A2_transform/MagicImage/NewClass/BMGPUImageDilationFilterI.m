#import "BMGPUImageDilationFilterI.h"
@implementation BMGPUImageDilationFilterI
+ (BOOL)RInitwithradius:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)xinit:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
