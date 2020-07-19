#import "BMGPUImageContrastFilterE+BmBm.h"
@implementation BMGPUImageContrastFilterE (BmBm)
+ (BOOL)binitBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)ESetcontrastBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
