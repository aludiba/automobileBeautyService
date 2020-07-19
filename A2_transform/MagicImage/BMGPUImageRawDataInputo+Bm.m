#import "BMGPUImageRawDataInputo+Bm.h"
@implementation BMGPUImageRawDataInputo (Bm)
+ (BOOL)SInitwithbytesySizeBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)FInitwithbytesFSizeqPixelformatBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)PInitwithbytesgSizecPixelformatETypeBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)KdeallocBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)bUploadbytesBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)gUpdatedatafrombytescSizeBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)fprocessDataBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)uProcessdatafortimestampBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)DoutputImageSizeBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
