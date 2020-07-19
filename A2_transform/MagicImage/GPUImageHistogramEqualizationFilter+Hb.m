#import "GPUImageHistogramEqualizationFilter+Hb.h"
@implementation GPUImageHistogramEqualizationFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)initWithHistogramTypeHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)setDownsamplingFactorHb:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
