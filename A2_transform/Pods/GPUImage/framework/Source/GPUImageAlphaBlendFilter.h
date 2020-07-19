#import "GPUImageTwoInputFilter.h"
@interface GPUImageAlphaBlendFilter : GPUImageTwoInputFilter
{
    GLint mixUniform;
}
@property(readwrite, nonatomic) CGFloat mix; 
@end
