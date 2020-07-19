#import "GPUImageOutput.h"
@interface GPUImageUIElement : GPUImageOutput
- (id)initWithView:(UIView *)inputView;
- (id)initWithLayer:(CALayer *)inputLayer;
- (CGSize)layerSizeInPixels;
- (void)update;
- (void)updateUsingCurrentTime;
- (void)updateWithTimestamp:(CMTime)frameTime;
@end
