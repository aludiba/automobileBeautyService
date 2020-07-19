#import "GPUImageVideoCamera.h"
void stillImageDataReleaseCallback(void *releaseRefCon, const void *baseAddress);
void GPUImageCreateResizedSampleBuffer(CVPixelBufferRef cameraFrame, CGSize finalSize, CMSampleBufferRef *sampleBuffer);
@interface GPUImageStillCamera : GPUImageVideoCamera
@property CGFloat jpegCompressionQuality;
@property (readonly) NSDictionary *currentCaptureMetadata;
- (void)capturePhotoAsSampleBufferWithCompletionHandler:(void (^)(CMSampleBufferRef imageSampleBuffer, NSError *error))block;
- (void)capturePhotoAsImageProcessedUpToFilter:(GPUImageOutput<GPUImageInput> *)finalFilterInChain withCompletionHandler:(void (^)(UIImage *processedImage, NSError *error))block;
- (void)capturePhotoAsImageProcessedUpToFilter:(GPUImageOutput<GPUImageInput> *)finalFilterInChain withOrientation:(UIImageOrientation)orientation withCompletionHandler:(void (^)(UIImage *processedImage, NSError *error))block;
- (void)capturePhotoAsJPEGProcessedUpToFilter:(GPUImageOutput<GPUImageInput> *)finalFilterInChain withCompletionHandler:(void (^)(NSData *processedJPEG, NSError *error))block;
- (void)capturePhotoAsJPEGProcessedUpToFilter:(GPUImageOutput<GPUImageInput> *)finalFilterInChain withOrientation:(UIImageOrientation)orientation withCompletionHandler:(void (^)(NSData *processedJPEG, NSError *error))block;
- (void)capturePhotoAsPNGProcessedUpToFilter:(GPUImageOutput<GPUImageInput> *)finalFilterInChain withCompletionHandler:(void (^)(NSData *processedPNG, NSError *error))block;
- (void)capturePhotoAsPNGProcessedUpToFilter:(GPUImageOutput<GPUImageInput> *)finalFilterInChain withOrientation:(UIImageOrientation)orientation withCompletionHandler:(void (^)(NSData *processedPNG, NSError *error))block;
@end
