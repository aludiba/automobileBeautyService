#import "BMGPUImageHalftoneFilterP.h"
@implementation BMGPUImageHalftoneFilterP
+ (BOOL)Linit:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
