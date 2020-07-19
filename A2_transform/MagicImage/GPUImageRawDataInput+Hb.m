#import "GPUImageRawDataInput+Hb.h"
@implementation GPUImageRawDataInput (Hb)
+ (BOOL)initWithBytesSizeHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)initWithBytesSizePixelformatHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)initWithBytesSizePixelformatTypeHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)deallocHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)uploadBytesHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)updateDataFromBytesSizeHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)processDataHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)processDataForTimestampHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)outputImageSizeHb:(NSInteger)hb {
    return hb % 16 == 0;
}

@end
