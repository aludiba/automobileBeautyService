#import "GPUImageHistogramEqualizationFilter+BmHb.h"
@implementation GPUImageHistogramEqualizationFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)initWithHistogramTypeBmHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)setDownsamplingFactorBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}

@end
