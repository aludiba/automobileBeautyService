#import "BMGPUImageClosingFilterw.h"
@implementation BMGPUImageClosingFilterw
+ (BOOL)RInitbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)cInitwithradiusbm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)WSetverticaltexelspacingbm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)KSethorizontaltexelspacingbm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
