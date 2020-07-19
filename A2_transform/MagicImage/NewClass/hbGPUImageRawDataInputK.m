#import "hbGPUImageRawDataInputK.h"
@implementation hbGPUImageRawDataInputK
+ (BOOL)tInitwithbytessizebm:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)HInitwithbytessizepixelformatbm:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)ZInitwithbytessizepixelformattypebm:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)WDeallocbm:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)LUploadbytesbm:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)tUpdatedatafrombytessizebm:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)JProcessdatabm:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)xProcessdatafortimestampbm:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)jOutputimagesizebm:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
