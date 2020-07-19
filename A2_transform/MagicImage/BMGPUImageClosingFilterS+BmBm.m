#import "BMGPUImageClosingFilterS+BmBm.h"
@implementation BMGPUImageClosingFilterS (BmBm)
+ (BOOL)einitBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)RInitwithradiusBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)ASetverticaltexelspacingBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)pSethorizontaltexelspacingBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
