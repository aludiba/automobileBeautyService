#import "BMGPUImageKuwaharaFilterD+BmBm.h"
@implementation BMGPUImageKuwaharaFilterD (BmBm)
+ (BOOL)UinitBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)zSetradiusBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
