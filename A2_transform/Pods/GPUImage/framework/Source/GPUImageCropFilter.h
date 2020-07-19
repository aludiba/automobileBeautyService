#import "GPUImageFilter.h"
@interface GPUImageCropFilter : GPUImageFilter
{
    GLfloat cropTextureCoordinates[8];
}
@property(readwrite, nonatomic) CGRect cropRegion;
- (id)initWithCropRegion:(CGRect)newCropRegion;
@end
