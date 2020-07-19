#import "BMGPUImageSharpenFilterl.h"
@implementation BMGPUImageSharpenFilterl
+ (BOOL)YInitbmbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)gSetupfilterforsizebmbm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)zSetsharpnessbmbm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
