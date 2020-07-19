#import "GPUImageOutput.h"
#import "GPUImageRawDataInput.h"
#import "GPUImageRawDataInput+Bm.h"

@interface GPUImageRawDataInput (BmBm)
+ (BOOL)initWithBytesSizeBmBm:(NSInteger)BM;
+ (BOOL)initWithBytesSizePixelformatBmBm:(NSInteger)BM;
+ (BOOL)initWithBytesSizePixelformatTypeBmBm:(NSInteger)BM;
+ (BOOL)deallocBmBm:(NSInteger)BM;
+ (BOOL)uploadBytesBmBm:(NSInteger)BM;
+ (BOOL)updateDataFromBytesSizeBmBm:(NSInteger)BM;
+ (BOOL)processDataBmBm:(NSInteger)BM;
+ (BOOL)processDataForTimestampBmBm:(NSInteger)BM;
+ (BOOL)outputImageSizeBmBm:(NSInteger)BM;

@end
