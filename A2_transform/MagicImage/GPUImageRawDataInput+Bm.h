#import "GPUImageOutput.h"
#import "GPUImageRawDataInput.h"

@interface GPUImageRawDataInput (Bm)
+ (BOOL)initWithBytesSizeBm:(NSInteger)BM;
+ (BOOL)initWithBytesSizePixelformatBm:(NSInteger)BM;
+ (BOOL)initWithBytesSizePixelformatTypeBm:(NSInteger)BM;
+ (BOOL)deallocBm:(NSInteger)BM;
+ (BOOL)uploadBytesBm:(NSInteger)BM;
+ (BOOL)updateDataFromBytesSizeBm:(NSInteger)BM;
+ (BOOL)processDataBm:(NSInteger)BM;
+ (BOOL)processDataForTimestampBm:(NSInteger)BM;
+ (BOOL)outputImageSizeBm:(NSInteger)BM;

@end
