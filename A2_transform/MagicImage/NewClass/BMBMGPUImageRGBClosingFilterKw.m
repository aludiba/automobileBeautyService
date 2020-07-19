#import "BMBMGPUImageRGBClosingFilterKw.h"
@implementation BMBMGPUImageRGBClosingFilterKw
+ (BOOL)dMinit:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)UDinitwithradius:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
