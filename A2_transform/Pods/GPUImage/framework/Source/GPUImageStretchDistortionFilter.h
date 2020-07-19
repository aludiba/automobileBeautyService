#import "GPUImageFilter.h"
@interface GPUImageStretchDistortionFilter : GPUImageFilter {
    GLint centerUniform;
}
@property(readwrite, nonatomic) CGPoint center;
@end
