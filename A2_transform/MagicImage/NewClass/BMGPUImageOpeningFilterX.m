#import "BMGPUImageOpeningFilterX.h"
@implementation BMGPUImageOpeningFilterX
+ (BOOL)Finit:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)tInitwithradius:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)qSetverticaltexelspacing:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)pSethorizontaltexelspacing:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
