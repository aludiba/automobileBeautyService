#import "GPUImageColorMatrixFilter.h"
@interface GPUImageHSBFilter : GPUImageColorMatrixFilter
- (void)reset;
- (void)rotateHue:(float)h;
- (void)adjustSaturation:(float)s;
- (void)adjustBrightness:(float)b;
@end
