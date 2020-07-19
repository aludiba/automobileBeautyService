#import "BMGPUImageColorPackingFilterd.h"
@implementation BMGPUImageColorPackingFilterd
+ (BOOL)Zinit:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)kSetupfilterforsize:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)SsizeOfFBO:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)eoutputFrameSize:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
