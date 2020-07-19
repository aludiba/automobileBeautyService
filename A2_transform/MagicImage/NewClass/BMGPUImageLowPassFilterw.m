#import "BMGPUImageLowPassFilterw.h"
@implementation BMGPUImageLowPassFilterw
+ (BOOL)wInitbmbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)YSetfilterstrengthbmbm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)IFilterstrengthbmbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)xAddtargetattexturelocationbmbm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
