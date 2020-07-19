#import "hbGPUImageChromaKeyFilters.h"
@implementation hbGPUImageChromaKeyFilters
+ (BOOL)OInithbhb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)mSetcolortoreplaceredgreenbluehbhb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)MSetthresholdsensitivityhbhb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)lSetsmoothinghbhb:(NSInteger)hb {
    return hb % 39 == 0;
}

@end
