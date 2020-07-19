#import <Foundation/Foundation.h>
#import <OpenGLES/ES2/gl.h>
#import <OpenGLES/ES2/glext.h>
#import <OpenGL/OpenGL.h>
#import <OpenGL/gl.h>
#import "GLProgram.h"

@interface GLProgram (Bm)
+ (BOOL)initWithVertexShaderStringFragmentshaderstringBm:(NSInteger)BM;
+ (BOOL)initWithVertexShaderStringFragmentshaderfilenameBm:(NSInteger)BM;
+ (BOOL)initWithVertexShaderFilenameFragmentshaderfilenameBm:(NSInteger)BM;
+ (BOOL)compileShaderTypeStringBm:(NSInteger)BM;
+ (BOOL)addAttributeBm:(NSInteger)BM;
+ (BOOL)attributeIndexBm:(NSInteger)BM;
+ (BOOL)uniformIndexBm:(NSInteger)BM;
+ (BOOL)linkBm:(NSInteger)BM;
+ (BOOL)useBm:(NSInteger)BM;
+ (BOOL)validateBm:(NSInteger)BM;
+ (BOOL)deallocBm:(NSInteger)BM;

@end
