#import "BMBMGPUImageOpeningFilterrb.h"
@implementation BMBMGPUImageOpeningFilterrb
+ (BOOL)KEinitbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)BMinitwithradiusbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)HZsetverticaltexelspacingbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)FBsethorizontaltexelspacingbm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
