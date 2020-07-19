#import "BMGPUImageRawDataInputo+BmBm.h"
@implementation BMGPUImageRawDataInputo (BmBm)
+ (BOOL)SInitwithbytesySizeBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)FInitwithbytesFSizeqPixelformatBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)PInitwithbytesgSizecPixelformatETypeBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)KdeallocBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)bUploadbytesBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)gUpdatedatafrombytescSizeBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)fprocessDataBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)uProcessdatafortimestampBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)DoutputImageSizeBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
