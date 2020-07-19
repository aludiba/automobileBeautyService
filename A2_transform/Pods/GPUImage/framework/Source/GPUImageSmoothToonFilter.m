#import "GPUImageSmoothToonFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageToonFilter.h"
@implementation GPUImageSmoothToonFilter
@synthesize threshold;
@synthesize blurRadiusInPixels;
@synthesize quantizationLevels;
@synthesize texelWidth;
@synthesize texelHeight;
- (id)init;
{
    if (!(self = [super init]))
    {
		return nil;
    }
    blurFilter = [[GPUImageGaussianBlurFilter alloc] init];
    [self addFilter:blurFilter];
    toonFilter = [[GPUImageToonFilter alloc] init];
    [self addFilter:toonFilter];
    [blurFilter addTarget:toonFilter];
    self.initialFilters = [NSArray arrayWithObject:blurFilter];
    self.terminalFilter = toonFilter;
    self.blurRadiusInPixels = 2.0;
    self.threshold = 0.2;
    self.quantizationLevels = 10.0;
    return self;
}
#pragma mark -
#pragma mark Accessors
- (void)setBlurRadiusInPixels:(CGFloat)newValue;
{
    blurFilter.blurRadiusInPixels = newValue;
}
- (CGFloat)blurRadiusInPixels;
{
    return blurFilter.blurRadiusInPixels;
}
- (void)setTexelWidth:(CGFloat)newValue;
{
    toonFilter.texelWidth = newValue;
}
- (CGFloat)texelWidth;
{
    return toonFilter.texelWidth;
}
- (void)setTexelHeight:(CGFloat)newValue;
{
    toonFilter.texelHeight = newValue;
}
- (CGFloat)texelHeight;
{
    return toonFilter.texelHeight;
}
- (void)setThreshold:(CGFloat)newValue;
{
    toonFilter.threshold = newValue;
}
- (CGFloat)threshold;
{
    return toonFilter.threshold;
}
- (void)setQuantizationLevels:(CGFloat)newValue;
{
    toonFilter.quantizationLevels = newValue;
}
- (CGFloat)quantizationLevels;
{
    return toonFilter.quantizationLevels;
}
@end
