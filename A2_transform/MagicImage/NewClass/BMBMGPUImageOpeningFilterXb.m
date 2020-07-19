#import "BMBMGPUImageOpeningFilterXb.h"
@implementation BMBMGPUImageOpeningFilterXb
+ (BOOL)MFinit:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)sTinitwithradius:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)ZQsetverticaltexelspacing:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)iPsethorizontaltexelspacing:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
