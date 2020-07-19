#import "hbGPUImageColorPackingFilterg.h"
@implementation hbGPUImageColorPackingFilterg
+ (BOOL)sinit:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)eSetupfilterforsize:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)OsizeOfFBO:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)BoutputFrameSize:(NSInteger)hb {
    return hb % 10 == 0;
}

@end
