#import "BKQMImageFilter.h"
#define kDefaultImageFilterAlpha    0.5
@interface BKQMImageFilter ()
@property (nonatomic, strong) NSMutableArray *textureUniforms;
@property (nonatomic, strong) BKQMFilterModel *filterModel;
@end
@implementation BKQMImageFilter
#pragma mark -
#pragma mark Initialization and teardown
- (instancetype)initWithFilterModel:(BKQMFilterModel *)model
{
    _filterModel = model;
    NSString *filter = [NSString stringWithContentsOfFile:model.fragmentShader encoding:NSUTF8StringEncoding error:nil];
    if (!(self = [super initWithFragmentShaderFromString:filter])) {
        return nil;
    }
    runSynchronouslyOnVideoProcessingQueue(^{
        [self bindQMTexture];
    });
    return self;
}
#pragma mark -
#pragma mark Accessors
- (void)bindQMTexture
{
    _textureUniforms = [NSMutableArray array];
    for (int i = 0; i < _filterModel.textureImages.count; i++) {
        NSString *uniformName = [NSString stringWithFormat:@"inputImageTexture_%d", (i + 1)];
        NSUInteger inputImageTextureID = [filterProgram uniformIndex:uniformName];
        [_textureUniforms addObject:@(inputImageTextureID)];
        NSString *imagePath = _filterModel.textureImages[i];
        UIImage *image = [[UIImage alloc] initWithContentsOfFile:imagePath];
        GPUImagePicture *picture = [[GPUImagePicture alloc] initWithImage:image];
        GPUImageFramebuffer *frameBuffer =  [picture framebufferForOutput];
        [frameBuffer lock];
        [frameBuffer activateFramebuffer];
        int startTextureIndex = 3;
        glActiveTexture(GL_TEXTURE0 + i + startTextureIndex);
        glBindTexture(GL_TEXTURE_2D, [frameBuffer texture]);
        glUniform1i([_textureUniforms[i] intValue], i + startTextureIndex);
        [frameBuffer unlock];
    }
    [self setFloat:kDefaultImageFilterAlpha forUniformName:@"alpha"];
}
- (void)setAlpha:(CGFloat)alpha
{
    [self setFloat:alpha forUniformName:@"alpha"];
}
@end
