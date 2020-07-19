#import <Foundation/Foundation.h>
#import <OpenGLES/ES2/gl.h>
#import <OpenGLES/ES2/glext.h>
#import <OpenGL/OpenGL.h>
#import <OpenGL/gl.h>
#import "GLProgram.h"
#import "GLProgram+Hb.h"

@interface GLProgram (HbHb)
+ (BOOL)initWithVertexShaderStringFragmentshaderstringHbHb:(NSInteger)hb;
+ (BOOL)initWithVertexShaderStringFragmentshaderfilenameHbHb:(NSInteger)hb;
+ (BOOL)initWithVertexShaderFilenameFragmentshaderfilenameHbHb:(NSInteger)hb;
+ (BOOL)compileShaderTypeStringHbHb:(NSInteger)hb;
+ (BOOL)addAttributeHbHb:(NSInteger)hb;
+ (BOOL)attributeIndexHbHb:(NSInteger)hb;
+ (BOOL)uniformIndexHbHb:(NSInteger)hb;
+ (BOOL)linkHbHb:(NSInteger)hb;
+ (BOOL)useHbHb:(NSInteger)hb;
+ (BOOL)validateHbHb:(NSInteger)hb;
+ (BOOL)deallocHbHb:(NSInteger)hb;

@end
