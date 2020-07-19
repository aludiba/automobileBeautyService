#import "BMGPUImageOpeningFiltern+Bm.h"
@implementation BMGPUImageOpeningFiltern (Bm)
+ (BOOL)vinitBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)CInitwithradiusBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)TSetverticaltexelspacingBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)qSethorizontaltexelspacingBm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
