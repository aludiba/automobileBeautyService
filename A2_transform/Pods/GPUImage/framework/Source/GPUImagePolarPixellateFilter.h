#import "GPUImageFilter.h"
@interface GPUImagePolarPixellateFilter : GPUImageFilter {
    GLint centerUniform, pixelSizeUniform;
}
@property(readwrite, nonatomic) CGPoint center;
@property(readwrite, nonatomic) CGSize pixelSize;
@end
