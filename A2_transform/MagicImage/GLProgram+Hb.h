#import <Foundation/Foundation.h>
#import <OpenGLES/ES2/gl.h>
#import <OpenGLES/ES2/glext.h>
#import <OpenGL/OpenGL.h>
#import <OpenGL/gl.h>
#import "GLProgram.h"

@interface GLProgram (Hb)
+ (BOOL)initWithVertexShaderStringFragmentshaderstringHb:(NSInteger)hb;
+ (BOOL)initWithVertexShaderStringFragmentshaderfilenameHb:(NSInteger)hb;
+ (BOOL)initWithVertexShaderFilenameFragmentshaderfilenameHb:(NSInteger)hb;
+ (BOOL)compileShaderTypeStringHb:(NSInteger)hb;
+ (BOOL)addAttributeHb:(NSInteger)hb;
+ (BOOL)attributeIndexHb:(NSInteger)hb;
+ (BOOL)uniformIndexHb:(NSInteger)hb;
+ (BOOL)linkHb:(NSInteger)hb;
+ (BOOL)useHb:(NSInteger)hb;
+ (BOOL)validateHb:(NSInteger)hb;
+ (BOOL)deallocHb:(NSInteger)hb;

@end
