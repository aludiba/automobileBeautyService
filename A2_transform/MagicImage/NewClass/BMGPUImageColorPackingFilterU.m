#import "BMGPUImageColorPackingFilterU.h"
@implementation BMGPUImageColorPackingFilterU
+ (BOOL)yinit:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)xSetupfilterforsize:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)psizeOfFBO:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)koutputFrameSize:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
