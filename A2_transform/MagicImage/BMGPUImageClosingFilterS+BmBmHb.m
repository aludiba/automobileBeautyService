#import "BMGPUImageClosingFilterS+BmBmHb.h"
@implementation BMGPUImageClosingFilterS (BmBmHb)
+ (BOOL)einitBmBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)RInitwithradiusBmBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)ASetverticaltexelspacingBmBmHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)pSethorizontaltexelspacingBmBmHb:(NSInteger)hb {
    return hb % 18 == 0;
}

@end
