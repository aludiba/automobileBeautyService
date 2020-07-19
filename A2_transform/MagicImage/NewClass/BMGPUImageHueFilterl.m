#import "BMGPUImageHueFilterl.h"
@implementation BMGPUImageHueFilterl
+ (BOOL)tInitbm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)CSethuebm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
