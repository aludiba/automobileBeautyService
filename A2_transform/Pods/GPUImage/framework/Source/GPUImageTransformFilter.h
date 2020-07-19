#import "GPUImageFilter.h"
@interface GPUImageTransformFilter : GPUImageFilter
{
    GLint transformMatrixUniform, orthographicMatrixUniform;
    GPUMatrix4x4 orthographicMatrix;
}
@property(readwrite, nonatomic) CGAffineTransform affineTransform;
@property(readwrite, nonatomic) CATransform3D transform3D;
@property(readwrite, nonatomic) BOOL ignoreAspectRatio;
@property(readwrite, nonatomic) BOOL anchorTopLeft;
@end
