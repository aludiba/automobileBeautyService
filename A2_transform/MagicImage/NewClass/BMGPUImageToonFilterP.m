#import "BMGPUImageToonFilterP.h"
@implementation BMGPUImageToonFilterP
+ (BOOL)Xinit:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)CSetthreshold:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)gSetquantizationlevels:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
