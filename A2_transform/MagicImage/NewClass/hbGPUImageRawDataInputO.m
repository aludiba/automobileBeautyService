#import "hbGPUImageRawDataInputO.h"
@implementation hbGPUImageRawDataInputO
+ (BOOL)JInitwithbytesLSize:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)yInitwithbytesRSizeYPixelformat:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)CInitwithbytesKSizenPixelformatyType:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)Ldealloc:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)dUploadbytes:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)GUpdatedatafrombytesXSize:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)qprocessData:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)rProcessdatafortimestamp:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)houtputImageSize:(NSInteger)hb {
    return hb % 39 == 0;
}

@end
