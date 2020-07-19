#import "BMGPUImageOpeningFilterX+BmBm.h"
@implementation BMGPUImageOpeningFilterX (BmBm)
+ (BOOL)FinitBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)tInitwithradiusBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)qSetverticaltexelspacingBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)pSethorizontaltexelspacingBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
