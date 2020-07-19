#import "BMGPUImageHighPassFilterI.h"
@implementation BMGPUImageHighPassFilterI
+ (BOOL)LInitbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)CSetfilterstrengthbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)dFilterstrengthbm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
