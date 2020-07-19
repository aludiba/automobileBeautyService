#import "hbGPUImageColorPackingFilterx.h"
@implementation hbGPUImageColorPackingFilterx
+ (BOOL)dinit:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)JSetupfilterforsize:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)EsizeOfFBO:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)AoutputFrameSize:(NSInteger)hb {
    return hb % 10 == 0;
}

@end
