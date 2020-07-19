#import "GPUImageMotionDetector.h"
#if TARGET_IPHONE_SIMULATOR || TARGET_OS_IPHONE
NSString *const kGPUImageMotionComparisonFragmentShaderString = SHADER_STRING
(
 varying highp vec2 textureCoordinate;
 varying highp vec2 textureCoordinate2;
 uniform sampler2D inputImageTexture;
 uniform sampler2D inputImageTexture2;
 uniform highp float intensity;
 void main()
 {
     lowp vec3 currentImageColor = texture2D(inputImageTexture, textureCoordinate).rgb;
     lowp vec3 lowPassImageColor = texture2D(inputImageTexture2, textureCoordinate2).rgb;
     mediump float colorDistance = distance(currentImageColor, lowPassImageColor); 
     lowp float movementThreshold = step(0.2, colorDistance);
     gl_FragColor = movementThreshold * vec4(textureCoordinate2.x, textureCoordinate2.y, 1.0, 1.0);
 }
);
#else
NSString *const kGPUImageMotionComparisonFragmentShaderString = SHADER_STRING
(
 varying vec2 textureCoordinate;
 varying vec2 textureCoordinate2;
 uniform sampler2D inputImageTexture;
 uniform sampler2D inputImageTexture2;
 uniform float intensity;
 void main()
 {
     vec3 currentImageColor = texture2D(inputImageTexture, textureCoordinate).rgb;
     vec3 lowPassImageColor = texture2D(inputImageTexture2, textureCoordinate2).rgb;
     float colorDistance = distance(currentImageColor, lowPassImageColor); 
     float movementThreshold = step(0.2, colorDistance);
     gl_FragColor = movementThreshold * vec4(textureCoordinate2.x, textureCoordinate2.y, 1.0, 1.0);
 }
);
#endif
@implementation GPUImageMotionDetector
@synthesize lowPassFilterStrength, motionDetectionBlock;
#pragma mark -
#pragma mark Initialization and teardown
- (id)init;
{
    if (!(self = [super init]))
    {
		return nil;
    }
    lowPassFilter = [[GPUImageLowPassFilter alloc] init];
    [self addFilter:lowPassFilter];
    frameComparisonFilter = [[GPUImageTwoInputFilter alloc] initWithFragmentShaderFromString:kGPUImageMotionComparisonFragmentShaderString];
    [self addFilter:frameComparisonFilter];
    [lowPassFilter addTarget:frameComparisonFilter atTextureLocation:1];
    averageColor = [[GPUImageAverageColor alloc] init];
    __unsafe_unretained GPUImageMotionDetector *weakSelf = self;
    [averageColor setColorAverageProcessingFinishedBlock:^(CGFloat redComponent, CGFloat greenComponent, CGFloat blueComponent, CGFloat alphaComponent, CMTime frameTime) {
        if (weakSelf.motionDetectionBlock != NULL)
        {
            weakSelf.motionDetectionBlock(CGPointMake(redComponent / alphaComponent, greenComponent / alphaComponent), alphaComponent, frameTime);
        }
    }];
    [frameComparisonFilter addTarget:averageColor];
    self.initialFilters = [NSArray arrayWithObjects:lowPassFilter, frameComparisonFilter, nil];
    self.terminalFilter = frameComparisonFilter;
    self.lowPassFilterStrength = 0.5;
    return self;
}
#pragma mark -
#pragma mark Accessors
- (void)setLowPassFilterStrength:(CGFloat)newValue;
{
    lowPassFilter.filterStrength = newValue;
}
- (CGFloat)lowPassFilterStrength;
{
    return lowPassFilter.filterStrength;
}
@end
