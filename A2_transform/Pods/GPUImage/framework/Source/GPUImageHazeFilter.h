#import "GPUImageFilter.h"
@interface GPUImageHazeFilter : GPUImageFilter
{
    GLint distanceUniform;
	GLint slopeUniform;
}
@property(readwrite, nonatomic) CGFloat distance; 
@property(readwrite, nonatomic) CGFloat slope;
@end
