#import <Foundation/Foundation.h>
#import <OpenGLES/ES2/gl.h>
#import <OpenGLES/ES2/glext.h>
#import <OpenGL/OpenGL.h>
#import <OpenGL/gl.h>
#import "GLProgram.h"
#import "GLProgram+Bm.h"
#import "GLProgram+BmBm.h"

@interface GLProgram (BmBmBm)
+ (BOOL)initWithVertexShaderStringFragmentshaderstringBmBmBm:(NSInteger)BM;
+ (BOOL)initWithVertexShaderStringFragmentshaderfilenameBmBmBm:(NSInteger)BM;
+ (BOOL)initWithVertexShaderFilenameFragmentshaderfilenameBmBmBm:(NSInteger)BM;
+ (BOOL)compileShaderTypeStringBmBmBm:(NSInteger)BM;
+ (BOOL)addAttributeBmBmBm:(NSInteger)BM;
+ (BOOL)attributeIndexBmBmBm:(NSInteger)BM;
+ (BOOL)uniformIndexBmBmBm:(NSInteger)BM;
+ (BOOL)linkBmBmBm:(NSInteger)BM;
+ (BOOL)useBmBmBm:(NSInteger)BM;
+ (BOOL)validateBmBmBm:(NSInteger)BM;
+ (BOOL)deallocBmBmBm:(NSInteger)BM;

@end
