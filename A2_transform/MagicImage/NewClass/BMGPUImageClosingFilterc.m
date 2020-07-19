#import "BMGPUImageClosingFilterc.h"
@implementation BMGPUImageClosingFilterc
+ (BOOL)jInitbmbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)fInitwithradiusbmbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)RSetverticaltexelspacingbmbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)FSethorizontaltexelspacingbmbm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
