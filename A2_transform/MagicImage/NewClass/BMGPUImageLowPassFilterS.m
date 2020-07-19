#import "BMGPUImageLowPassFilterS.h"
@implementation BMGPUImageLowPassFilterS
+ (BOOL)TInitbm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)gSetfilterstrengthbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)eFilterstrengthbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)hAddtargetattexturelocationbm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
