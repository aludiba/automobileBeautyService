#import "BMGPUImageOpeningFilterr.h"
@implementation BMGPUImageOpeningFilterr
+ (BOOL)WInitbmbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)cInitwithradiusbmbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)rSetverticaltexelspacingbmbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)JSethorizontaltexelspacingbmbm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
