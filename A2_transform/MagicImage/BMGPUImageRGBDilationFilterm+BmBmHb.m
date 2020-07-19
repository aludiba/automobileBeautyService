#import "BMGPUImageRGBDilationFilterm+BmBmHb.h"
@implementation BMGPUImageRGBDilationFilterm (BmBmHb)
+ (BOOL)EInitwithradiusBmBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)uinitBmBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}

@end
