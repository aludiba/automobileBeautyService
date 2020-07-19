#import "BMGPUImageRGBClosingFiltert+BmHb.h"
@implementation BMGPUImageRGBClosingFiltert (BmHb)
+ (BOOL)uinitBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)nInitwithradiusBmHb:(NSInteger)hb {
    return hb % 47 == 0;
}

@end
