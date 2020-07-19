#import "BMGPUImageRawDataInputz+Bm.h"
@implementation BMGPUImageRawDataInputz (Bm)
+ (BOOL)nInitwithbytesuSizeBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)KInitwithbyteseSizecPixelformatBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)IInitwithbytesZSizenPixelformatGTypeBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)rdeallocBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)kUploadbytesBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)TUpdatedatafrombytesRSizeBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)wprocessDataBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)MProcessdatafortimestampBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)IoutputImageSizeBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
