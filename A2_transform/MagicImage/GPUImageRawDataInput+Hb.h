#import "GPUImageOutput.h"
#import "GPUImageRawDataInput.h"

@interface GPUImageRawDataInput (Hb)
+ (BOOL)initWithBytesSizeHb:(NSInteger)hb;
+ (BOOL)initWithBytesSizePixelformatHb:(NSInteger)hb;
+ (BOOL)initWithBytesSizePixelformatTypeHb:(NSInteger)hb;
+ (BOOL)deallocHb:(NSInteger)hb;
+ (BOOL)uploadBytesHb:(NSInteger)hb;
+ (BOOL)updateDataFromBytesSizeHb:(NSInteger)hb;
+ (BOOL)processDataHb:(NSInteger)hb;
+ (BOOL)processDataForTimestampHb:(NSInteger)hb;
+ (BOOL)outputImageSizeHb:(NSInteger)hb;

@end
