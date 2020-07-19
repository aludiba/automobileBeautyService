#import "BMGPUImageContrastFilterz+Bm.h"
@implementation BMGPUImageContrastFilterz (Bm)
+ (BOOL)ZinitBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)FSetcontrastBm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
