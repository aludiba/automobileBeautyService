#import "BMGPUImageClosingFilterS.h"
@implementation BMGPUImageClosingFilterS
+ (BOOL)einit:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)RInitwithradius:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)ASetverticaltexelspacing:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)pSethorizontaltexelspacing:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
