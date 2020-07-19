#import "BMGPUImageHighPassFilterj.h"
@implementation BMGPUImageHighPassFilterj
+ (BOOL)nInitbmbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)USetfilterstrengthbmbm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)DFilterstrengthbmbm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
