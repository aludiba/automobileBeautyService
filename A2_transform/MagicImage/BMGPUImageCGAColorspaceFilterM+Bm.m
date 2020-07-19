#import "BMGPUImageCGAColorspaceFilterM+Bm.h"
@implementation BMGPUImageCGAColorspaceFilterM (Bm)
+ (BOOL)ginitBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
