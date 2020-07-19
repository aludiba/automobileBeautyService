#import "hbBMBMGPUImageHighlightShadowFilterCVp.h"
@implementation hbBMBMGPUImageHighlightShadowFilterCVp
+ (BOOL)OCvinit:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)pDlsetshadows:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)HLtsethighlights:(NSInteger)hb {
    return hb % 19 == 0;
}

@end
