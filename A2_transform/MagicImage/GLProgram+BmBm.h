#import <Foundation/Foundation.h>
#import <OpenGLES/ES2/gl.h>
#import <OpenGLES/ES2/glext.h>
#import <OpenGL/OpenGL.h>
#import <OpenGL/gl.h>
#import "GLProgram.h"
#import "GLProgram+Bm.h"

@interface GLProgram (BmBm)
+ (BOOL)initWithVertexShaderStringFragmentshaderstringBmBm:(NSInteger)BM;
+ (BOOL)initWithVertexShaderStringFragmentshaderfilenameBmBm:(NSInteger)BM;
+ (BOOL)initWithVertexShaderFilenameFragmentshaderfilenameBmBm:(NSInteger)BM;
+ (BOOL)compileShaderTypeStringBmBm:(NSInteger)BM;
+ (BOOL)addAttributeBmBm:(NSInteger)BM;
+ (BOOL)attributeIndexBmBm:(NSInteger)BM;
+ (BOOL)uniformIndexBmBm:(NSInteger)BM;
+ (BOOL)linkBmBm:(NSInteger)BM;
+ (BOOL)useBmBm:(NSInteger)BM;
+ (BOOL)validateBmBm:(NSInteger)BM;
+ (BOOL)deallocBmBm:(NSInteger)BM;

@end
