#import "GPUImageOutput.h"
#import "GPUImageRawDataInput.h"
#import "GPUImageRawDataInput+Bm.h"

@interface GPUImageRawDataInput (BmHb)
+ (BOOL)initWithBytesSizeBmHb:(NSInteger)hb;
+ (BOOL)initWithBytesSizePixelformatBmHb:(NSInteger)hb;
+ (BOOL)initWithBytesSizePixelformatTypeBmHb:(NSInteger)hb;
+ (BOOL)deallocBmHb:(NSInteger)hb;
+ (BOOL)uploadBytesBmHb:(NSInteger)hb;
+ (BOOL)updateDataFromBytesSizeBmHb:(NSInteger)hb;
+ (BOOL)processDataBmHb:(NSInteger)hb;
+ (BOOL)processDataForTimestampBmHb:(NSInteger)hb;
+ (BOOL)outputImageSizeBmHb:(NSInteger)hb;

@end
