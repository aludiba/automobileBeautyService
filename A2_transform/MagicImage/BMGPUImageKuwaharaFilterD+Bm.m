#import "BMGPUImageKuwaharaFilterD+Bm.h"
@implementation BMGPUImageKuwaharaFilterD (Bm)
+ (BOOL)UinitBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)zSetradiusBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
