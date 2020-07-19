#import "BMGPUImageRGBDilationFiltero.h"
@implementation BMGPUImageRGBDilationFiltero
+ (BOOL)gInitwithradius:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)Iinit:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
