#import "GPUImageRawDataInput+BmBm.h"
@implementation GPUImageRawDataInput (BmBm)
+ (BOOL)initWithBytesSizeBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)initWithBytesSizePixelformatBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)initWithBytesSizePixelformatTypeBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)deallocBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)uploadBytesBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)updateDataFromBytesSizeBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)processDataBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)processDataForTimestampBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)outputImageSizeBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
