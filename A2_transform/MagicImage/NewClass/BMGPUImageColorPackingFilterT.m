#import "BMGPUImageColorPackingFiltert.h"
@implementation BMGPUImageColorPackingFiltert
+ (BOOL)IInitbmbm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)USetupfilterforsizebmbm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)DSizeoffbobmbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)eOutputframesizebmbm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
