#import "BMBMGPUImageClosingFilterSE.h"
@implementation BMBMGPUImageClosingFilterSE
+ (BOOL)OEinitbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)wRinitwithradiusbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)cAsetverticaltexelspacingbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)oPsethorizontaltexelspacingbm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
