#import <Foundation/Foundation.h>
#import <OpenGLES/ES2/gl.h>
#import <OpenGLES/ES2/glext.h>
#import <OpenGL/OpenGL.h>
#import <OpenGL/gl.h>
#import "GLProgram.h"

@interface GLProgram (-Deletecomments)
+ (BOOL)initWithVertexShaderStringFragmentshaderstring-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithVertexShaderStringFragmentshaderfilename-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithVertexShaderFilenameFragmentshaderfilename-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)compileShaderTypeString-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)addAttribute-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)attributeIndex-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)uniformIndex-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)link-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)use-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)validate-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)dealloc-Deletecomments:(NSInteger)-deleteComments;

@end
