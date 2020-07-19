#import "BMBMGPUImageHistogramGeneratoryI.h"
@implementation BMBMGPUImageHistogramGeneratoryI
+ (BOOL)nMinit:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)yPsetbackgroundcolorredbgreengbluedalpha:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
