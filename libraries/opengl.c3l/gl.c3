module opengl::gl @if(opengl::version() >= 10);
import opengl;

typedef Void = void;
typedef Enum = uint;
typedef Float = float;
typedef Int = int;
typedef Sizei = int;
typedef Bitfield = uint;
typedef Double = double;
typedef Uint = uint;
typedef Boolean = char;
typedef Ubyte = char;

const DEPTH_BUFFER_BIT        = 0x00000100;
const STENCIL_BUFFER_BIT      = 0x00000400;
const COLOR_BUFFER_BIT        = 0x00004000;
const FALSE                   = 0;
const TRUE                    = 1;
const POINTS                  = 0x0000;
const LINES                   = 0x0001;
const LINE_LOOP               = 0x0002;
const LINE_STRIP              = 0x0003;
const TRIANGLES               = 0x0004;
const TRIANGLE_STRIP          = 0x0005;
const TRIANGLE_FAN            = 0x0006;
const QUADS                   = 0x0007;
const NEVER                   = 0x0200;
const LESS                    = 0x0201;
const EQUAL                   = 0x0202;
const LEQUAL                  = 0x0203;
const GREATER                 = 0x0204;
const NOTEQUAL                = 0x0205;
const GEQUAL                  = 0x0206;
const ALWAYS                  = 0x0207;
const ZERO                    = 0;
const ONE                     = 1;
const SRC_COLOR               = 0x0300;
const ONE_MINUS_SRC_COLOR     = 0x0301;
const SRC_ALPHA               = 0x0302;
const ONE_MINUS_SRC_ALPHA     = 0x0303;
const DST_ALPHA               = 0x0304;
const ONE_MINUS_DST_ALPHA     = 0x0305;
const DST_COLOR               = 0x0306;
const ONE_MINUS_DST_COLOR     = 0x0307;
const SRC_ALPHA_SATURATE      = 0x0308;
const NONE                    = 0;
const FRONT_LEFT              = 0x0400;
const FRONT_RIGHT             = 0x0401;
const BACK_LEFT               = 0x0402;
const BACK_RIGHT              = 0x0403;
const FRONT                   = 0x0404;
const BACK                    = 0x0405;
const LEFT                    = 0x0406;
const RIGHT                   = 0x0407;
const FRONT_AND_BACK          = 0x0408;
const NO_ERROR                = 0;
const INVALID_ENUM            = 0x0500;
const INVALID_VALUE           = 0x0501;
const INVALID_OPERATION       = 0x0502;
const OUT_OF_MEMORY           = 0x0505;
const CW                      = 0x0900;
const CCW                     = 0x0901;
const POINT_SIZE              = 0x0B11;
const POINT_SIZE_RANGE        = 0x0B12;
const POINT_SIZE_GRANULARITY  = 0x0B13;
const LINE_SMOOTH             = 0x0B20;
const LINE_WIDTH              = 0x0B21;
const LINE_WIDTH_RANGE        = 0x0B22;
const LINE_WIDTH_GRANULARITY  = 0x0B23;
const POLYGON_MODE            = 0x0B40;
const POLYGON_SMOOTH          = 0x0B41;
const CULL_FACE               = 0x0B44;
const CULL_FACE_MODE          = 0x0B45;
const FRONT_FACE              = 0x0B46;
const DEPTH_RANGE             = 0x0B70;
const DEPTH_TEST              = 0x0B71;
const DEPTH_WRITEMASK         = 0x0B72;
const DEPTH_CLEAR_VALUE       = 0x0B73;
const DEPTH_FUNC              = 0x0B74;
const STENCIL_TEST            = 0x0B90;
const STENCIL_CLEAR_VALUE     = 0x0B91;
const STENCIL_FUNC            = 0x0B92;
const STENCIL_VALUE_MASK      = 0x0B93;
const STENCIL_FAIL            = 0x0B94;
const STENCIL_PASS_DEPTH_FAIL = 0x0B95;
const STENCIL_PASS_DEPTH_PASS = 0x0B96;
const STENCIL_REF             = 0x0B97;
const STENCIL_WRITEMASK       = 0x0B98;
const VIEWPORT                = 0x0BA2;
const DITHER                  = 0x0BD0;
const BLEND_DST               = 0x0BE0;
const BLEND_SRC               = 0x0BE1;
const BLEND                   = 0x0BE2;
const LOGIC_OP_MODE           = 0x0BF0;
const DRAW_BUFFER             = 0x0C01;
const READ_BUFFER             = 0x0C02;
const SCISSOR_BOX             = 0x0C10;
const SCISSOR_TEST            = 0x0C11;
const COLOR_CLEAR_VALUE       = 0x0C22;
const COLOR_WRITEMASK         = 0x0C23;
const DOUBLEBUFFER            = 0x0C32;
const STEREO                  = 0x0C33;
const LINE_SMOOTH_HINT        = 0x0C52;
const POLYGON_SMOOTH_HINT     = 0x0C53;
const UNPACK_SWAP_BYTES       = 0x0CF0;
const UNPACK_LSB_FIRST        = 0x0CF1;
const UNPACK_ROW_LENGTH       = 0x0CF2;
const UNPACK_SKIP_ROWS        = 0x0CF3;
const UNPACK_SKIP_PIXELS      = 0x0CF4;
const UNPACK_ALIGNMENT        = 0x0CF5;
const PACK_SWAP_BYTES         = 0x0D00;
const PACK_LSB_FIRST          = 0x0D01;
const PACK_ROW_LENGTH         = 0x0D02;
const PACK_SKIP_ROWS          = 0x0D03;
const PACK_SKIP_PIXELS        = 0x0D04;
const PACK_ALIGNMENT          = 0x0D05;
const MAX_TEXTURE_SIZE        = 0x0D33;
const MAX_VIEWPORT_DIMS       = 0x0D3A;
const SUBPIXEL_BITS           = 0x0D50;
const TEXTURE_1D              = 0x0DE0;
const TEXTURE_2D              = 0x0DE1;
const TEXTURE_WIDTH           = 0x1000;
const TEXTURE_HEIGHT          = 0x1001;
const TEXTURE_BORDER_COLOR    = 0x1004;
const DONT_CARE               = 0x1100;
const FASTEST                 = 0x1101;
const NICEST                  = 0x1102;
const BYTE                    = 0x1400;
const UNSIGNED_BYTE           = 0x1401;
const SHORT                   = 0x1402;
const UNSIGNED_SHORT          = 0x1403;
const INT                     = 0x1404;
const UNSIGNED_INT            = 0x1405;
const FLOAT                   = 0x1406;
const STACK_OVERFLOW          = 0x0503;
const STACK_UNDERFLOW         = 0x0504;
const CLEAR                   = 0x1500;
const AND                     = 0x1501;
const AND_REVERSE             = 0x1502;
const COPY                    = 0x1503;
const AND_INVERTED            = 0x1504;
const NOOP                    = 0x1505;
const XOR                     = 0x1506;
const OR                      = 0x1507;
const NOR                     = 0x1508;
const EQUIV                   = 0x1509;
const INVERT                  = 0x150A;
const OR_REVERSE              = 0x150B;
const COPY_INVERTED           = 0x150C;
const OR_INVERTED             = 0x150D;
const NAND                    = 0x150E;
const SET                     = 0x150F;
const TEXTURE                 = 0x1702;
const COLOR                   = 0x1800;
const DEPTH                   = 0x1801;
const STENCIL                 = 0x1802;
const STENCIL_INDEX           = 0x1901;
const DEPTH_COMPONENT         = 0x1902;
const RED                     = 0x1903;
const GREEN                   = 0x1904;
const BLUE                    = 0x1905;
const ALPHA                   = 0x1906;
const RGB                     = 0x1907;
const RGBA                    = 0x1908;
const POINT                   = 0x1B00;
const LINE                    = 0x1B01;
const FILL                    = 0x1B02;
const KEEP                    = 0x1E00;
const REPLACE                 = 0x1E01;
const INCR                    = 0x1E02;
const DECR                    = 0x1E03;
const VENDOR                  = 0x1F00;
const RENDERER                = 0x1F01;
const VERSION                 = 0x1F02;
const EXTENSIONS              = 0x1F03;
const NEAREST                 = 0x2600;
const LINEAR                  = 0x2601;
const NEAREST_MIPMAP_NEAREST  = 0x2700;
const LINEAR_MIPMAP_NEAREST   = 0x2701;
const NEAREST_MIPMAP_LINEAR   = 0x2702;
const LINEAR_MIPMAP_LINEAR    = 0x2703;
const TEXTURE_MAG_FILTER      = 0x2800;
const TEXTURE_MIN_FILTER      = 0x2801;
const TEXTURE_WRAP_S          = 0x2802;
const TEXTURE_WRAP_T          = 0x2803;
const REPEAT                  = 0x2901;

alias PFNglCullFacePROC = fn void(Enum mode);
PFNglCullFacePROC cullFace = null;
alias PFNglFrontFacePROC = fn void(Enum mode);
PFNglFrontFacePROC frontFace = null;
alias PFNglHintPROC = fn void(Enum target, Enum mode);
PFNglHintPROC hint = null;
alias PFNglLineWidthPROC = fn void(Float width);
PFNglLineWidthPROC lineWidth = null;
alias PFNglPointSizePROC = fn void(Float size);
PFNglPointSizePROC pointSize = null;
alias PFNglPolygonModePROC = fn void(Enum face, Enum mode);
PFNglPolygonModePROC polygonMode = null;
alias PFNglScissorPROC = fn void(Int x, Int y, Sizei width, Sizei height);
PFNglScissorPROC scissor = null;
alias PFNglTexParameterfPROC = fn void(Enum target, Enum pname, Float param);
PFNglTexParameterfPROC texParameterf = null;
alias PFNglTexParameterfvPROC = fn void(Enum target, Enum pname, Float* params);
PFNglTexParameterfvPROC texParameterfv = null;
alias PFNglTexParameteriPROC = fn void(Enum target, Enum pname, Int param);
PFNglTexParameteriPROC texParameteri = null;
alias PFNglTexParameterivPROC = fn void(Enum target, Enum pname, Int* params);
PFNglTexParameterivPROC texParameteriv = null;
alias PFNglTexImage1dPROC = fn void(Enum target, Int level, Int internalformat, Sizei width, Int border, Enum format, Enum type, void* pixels);
PFNglTexImage1dPROC texImage1d = null;
alias PFNglTexImage2dPROC = fn void(Enum target, Int level, Int internalformat, Sizei width, Sizei height, Int border, Enum format, Enum type, void* pixels);
PFNglTexImage2dPROC texImage2d = null;
alias PFNglDrawbufferPROC = fn void(Enum buf);
PFNglDrawbufferPROC drawbuffer = null;
alias PFNglClearPROC = fn void(Bitfield mask);
PFNglClearPROC clear = null;
alias PFNglClearColorPROC = fn void(Float red, Float green, Float blue, Float alpha);
PFNglClearColorPROC clearColor = null;
alias PFNglClearStencilPROC = fn void(Int s);
PFNglClearStencilPROC clearStencil = null;
alias PFNglClearDepthPROC = fn void(Double depth);
PFNglClearDepthPROC clearDepth = null;
alias PFNglStencilMaskPROC = fn void(Uint mask);
PFNglStencilMaskPROC stencilMask = null;
alias PFNglColorMaskPROC = fn void(Boolean red, Boolean green, Boolean blue, Boolean alpha);
PFNglColorMaskPROC colorMask = null;
alias PFNglDepthMaskPROC = fn void(Boolean flag);
PFNglDepthMaskPROC depthMask = null;
alias PFNglDisablePROC = fn void(Enum cap);
PFNglDisablePROC disable = null;
alias PFNglEnablePROC = fn void(Enum cap);
PFNglEnablePROC enable = null;
alias PFNglFinishPROC = fn void();
PFNglFinishPROC finish = null;
alias PFNglFlushPROC = fn void();
PFNglFlushPROC flush = null;
alias PFNglBlendFuncPROC = fn void(Enum sfactor, Enum dfactor);
PFNglBlendFuncPROC blendFunc = null;
alias PFNglLogicOpPROC = fn void(Enum opcode);
PFNglLogicOpPROC logicOp = null;
alias PFNglStencilFuncPROC = fn void(Enum func, Int ref, Uint mask);
PFNglStencilFuncPROC stencilFunc = null;
alias PFNglStencilOpPROC = fn void(Enum fail, Enum zfail, Enum zpass);
PFNglStencilOpPROC stencilOp = null;
alias PFNglDepthFuncPROC = fn void(Enum func);
PFNglDepthFuncPROC depthFunc = null;
alias PFNglPixelStorefPROC = fn void(Enum pname, Float param);
PFNglPixelStorefPROC pixelStoref = null;
alias PFNglPixelStoreiPROC = fn void(Enum pname, Int param);
PFNglPixelStoreiPROC pixelStorei = null;
alias PFNglReadBufferPROC = fn void(Enum src);
PFNglReadBufferPROC readBuffer = null;
alias PFNglReadPixelsPROC = fn void(Int x, Int y, Sizei width, Sizei height, Enum format, Enum type, void* pixels);
PFNglReadPixelsPROC readPixels = null;
alias PFNglGetBooleanvPROC = fn void(Enum pname, Boolean* data);
PFNglGetBooleanvPROC getBooleanv = null;
alias PFNglGetDoublevPROC = fn void(Enum pname, Double* data);
PFNglGetDoublevPROC getDoublev = null;
alias PFNglGetErrorPROC = fn Enum();
PFNglGetErrorPROC getError = null;
alias PFNglGetFloatvPROC = fn void(Enum pname, Float* data);
PFNglGetFloatvPROC getFloatv = null;
alias PFNglGetIntegervPROC = fn void(Enum pname, Int* data);
PFNglGetIntegervPROC getIntegerv = null;
alias PFNglGetStringPROC = fn Ubyte*(Enum name);
PFNglGetStringPROC getString = null;
alias PFNglGetTexImagePROC = fn void(Enum target, Int level, Enum format, Enum type, void* pixels);
PFNglGetTexImagePROC getTexImage = null;
alias PFNglGetTexParameterfvPROC = fn void(Enum target, Enum pname, Float* params);
PFNglGetTexParameterfvPROC getTexParameterfv = null;
alias PFNglGetTexParameterivPROC = fn void(Enum target, Enum pname, Int* params);
PFNglGetTexParameterivPROC getTexParameteriv = null;
alias PFNglGetTexLevelParameterfvPROC = fn void(Enum target, Int level, Enum pname, Float* params);
PFNglGetTexLevelParameterfvPROC getTexLevelParameterfv = null;
alias PFNglGetTexLevelParameterivPROC = fn void(Enum target, Int level, Enum pname, Int* params);
PFNglGetTexLevelParameterivPROC getTexLevelParameteriv = null;
alias PFNglIsEnabledPROC = fn Boolean(Enum cap);
PFNglIsEnabledPROC isEnabled = null;
alias PFNglDepthRangePROC = fn void(Double n, Double f);
PFNglDepthRangePROC depthRange = null;
alias PFNglViewportPROC = fn void(Int x, Int y, Sizei width, Sizei height);
PFNglViewportPROC viewport = null;


fn void load_gl_1_0(LoadFn load)
{
    cullFace = load("glCullFace");
    frontFace = load("glFrontFace");
    hint = load("glHint");
    lineWidth = load("glLineWidth");
    pointSize = load("glPointSize");
    polygonMode = load("glPolygonMode");
    scissor = load("glScissor");
    texParameterf = load("glTexParameterf");
    texParameterfv = load("glTexParameterfv");
    texParameteri = load("glTexParameteri");
    texParameteriv = load("glTexParameteriv");
    texImage1d = load("glTexImage1d");
    texImage2d = load("glTexImage2d");
    drawbuffer = load("glDrawbuffer");
    clear = load("glClear");
    clearColor = load("glClearColor");
    clearStencil = load("glClearStencil");
    clearDepth = load("glClearDepth");
    stencilMask = load("glStencilMask");
    colorMask = load("glColorMask");
    depthMask = load("glDepthMask");
    disable = load("glDisable");
    enable = load("glEnable");
    finish = load("glFinish");
    flush = load("glFlush");
    blendFunc = load("glBlendFunc");
    logicOp = load("glLogicOp");
    stencilFunc = load("glStencilFunc");
    stencilOp = load("glStencilOp");
    depthFunc = load("glDepthFunc");
    pixelStoref = load("glPixelStoref");
    pixelStorei = load("glPixelStorei");
    readBuffer = load("glReadBuffer");
    readPixels = load("glReadPixels");
    getBooleanv = load("glGetBooleanv");
    getDoublev = load("glGetDoublev");
    getError = load("glGetError");
    getFloatv = load("glGetFloatv");
    getIntegerv = load("glGetIntegerv");
    getString = load("glGetString");
    getTexImage = load("glGetTexImage");
    getTexParameterfv = load("glGetTexParameterfv");
    getTexParameteriv = load("glGetTexParameteriv");
    getTexLevelParameterfv = load("glGetTexLevelParameterfv");
    getTexLevelParameteriv = load("glGetTexLevelParameteriv");
    isEnabled = load("glIsEnabled");
    depthRange = load("glDepthRange");
    viewport = load("glViewport");
}

module opengl::gl @if(opengl::version() >= 11);
import opengl;

typedef Clampf = float;
typedef Clampd = double;

const COLOR_LOGIC_OP          = 0x0BF2;
const POLYGON_OFFSET_UNITS    = 0x2A00;
const POLYGON_OFFSET_POINT    = 0x2A01;
const POLYGON_OFFSET_LINE     = 0x2A02;
const POLYGON_OFFSET_FILL     = 0x8037;
const POLYGON_OFFSET_FACTOR   = 0x8038;
const TEXTURE_BINDING_1D      = 0x8068;
const TEXTURE_BINDING_2D      = 0x8069;
const TEXTURE_INTERNAL_FORMAT = 0x1003;
const TEXTURE_RED_SIZE        = 0x805C;
const TEXTURE_GREEN_SIZE      = 0x805D;
const TEXTURE_BLUE_SIZE       = 0x805E;
const TEXTURE_ALPHA_SIZE      = 0x805F;
const DOUBLE                  = 0x140A;
const PROXY_TEXTURE_1D        = 0x8063;
const PROXY_TEXTURE_2D        = 0x8064;
const R3_G3_B2                = 0x2A10;
const RGB4                    = 0x804F;
const RGB5                    = 0x8050;
const RGB8                    = 0x8051;
const RGB10                   = 0x8052;
const RGB12                   = 0x8053;
const RGB16                   = 0x8054;
const RGBA2                   = 0x8055;
const RGBA4                   = 0x8056;
const RGB5_A1                 = 0x8057;
const RGBA8                   = 0x8058;
const RGB10_A2                = 0x8059;
const RGBA12                  = 0x805A;
const RGBA16                  = 0x805B;
const VERTEX_ARRAY            = 0x8074;

alias PFNglDrawArraysPROC = fn void(Enum mode, Int first, Sizei count);
PFNglDrawArraysPROC drawArrays = null;
alias PFNglDrawElementsPROC = fn void(Enum mode, Sizei count, Enum type, void* indices);
PFNglDrawElementsPROC drawElements = null;
alias PFNglGetPointervPROC = fn void(Enum pname, void** params);
PFNglGetPointervPROC getPointerv = null;
alias PFNglPolygonOffsetPROC = fn void(Float factor, Float units);
PFNglPolygonOffsetPROC polygonOffset = null;
alias PFNglCopyTexImage1DPROC = fn void(Enum target, Int level, Enum internalformat, Int x, Int y, Sizei width, Int border);
PFNglCopyTexImage1DPROC copyTexImage1D = null;
alias PFNglCopyTexImage2DPROC = fn void(Enum target, Int level, Enum internalformat, Int x, Int y, Sizei width, Sizei height, Int border);
PFNglCopyTexImage2DPROC copyTexImage2D = null;
alias PFNglCopyTexSubImage1DPROC = fn void(Enum target, Int level, Int xoffset, Int x, Int y, Sizei width);
PFNglCopyTexSubImage1DPROC copyTexSubImage1D = null;
alias PFNglCopyTexSubImage2DPROC = fn void(Enum target, Int level, Int xoffset, Int yoffset, Int x, Int y, Sizei width, Sizei height);
PFNglCopyTexSubImage2DPROC copyTexSubImage2D = null;
alias PFNglTexSubImage1DPROC = fn void(Enum target, Int level, Int xoffset, Sizei width, Enum format, Enum type, void* pixels);
PFNglTexSubImage1DPROC texSubImage1D = null;
alias PFNglTexSubImage2DPROC = fn void(Enum target, Int level, Int xoffset, Int yoffset, Sizei width, Sizei height, Enum format, Enum type, void* pixels);
PFNglTexSubImage2DPROC texSubImage2D = null;
alias PFNglBindTexturePROC = fn void(Enum target, Uint texture);
PFNglBindTexturePROC bindTexture = null;
alias PFNglDeleteTexturesPROC = fn void(Sizei n, Uint* textures);
PFNglDeleteTexturesPROC deleteTextures = null;
alias PFNglGenTexturesPROC = fn void(Sizei n, Uint* textures);
PFNglGenTexturesPROC genTextures = null;
alias PFNglIsTexturePROC = fn Boolean(Uint texture);
PFNglIsTexturePROC isTexture = null;


fn void load_gl_1_1(LoadFn load)
{
    drawArrays = load("glDrawArrays");
    drawElements = load("glDrawElements");
    getPointerv = load("glGetPointerv");
    polygonOffset = load("glPolygonOffset");
    copyTexImage1D = load("glCopyTexImage1D");
    copyTexImage2D = load("glCopyTexImage2D");
    copyTexSubImage1D = load("glCopyTexSubImage1D");
    copyTexSubImage2D = load("glCopyTexSubImage2D");
    texSubImage1D = load("glTexSubImage1D");
    texSubImage2D = load("glTexSubImage2D");
    bindTexture = load("glBindTexture");
    deleteTextures = load("glDeleteTextures");
    genTextures = load("glGenTextures");
    isTexture = load("glIsTexture");
}

module opengl::gl @if(opengl::version() >= 12);
import opengl;

const UNSIGNED_BYTE_3_3_2           = 0x8032;
const UNSIGNED_SHORT_4_4_4_4        = 0x8033;
const UNSIGNED_SHORT_5_5_5_1        = 0x8034;
const UNSIGNED_INT_8_8_8_8          = 0x8035;
const UNSIGNED_INT_10_10_10_2       = 0x8036;
const TEXTURE_BINDING_3D            = 0x806A;
const PACK_SKIP_IMAGES              = 0x806B;
const PACK_IMAGE_HEIGHT             = 0x806C;
const UNPACK_SKIP_IMAGES            = 0x806D;
const UNPACK_IMAGE_HEIGHT           = 0x806E;
const TEXTURE_3D                    = 0x806F;
const PROXY_TEXTURE_3D              = 0x8070;
const TEXTURE_DEPTH                 = 0x8071;
const TEXTURE_WRAP_R                = 0x8072;
const MAX_3D_TEXTURE_SIZE           = 0x8073;
const UNSIGNED_BYTE_2_3_3_REV       = 0x8362;
const UNSIGNED_SHORT_5_6_5          = 0x8363;
const UNSIGNED_SHORT_5_6_5_REV      = 0x8364;
const UNSIGNED_SHORT_4_4_4_4_REV    = 0x8365;
const UNSIGNED_SHORT_1_5_5_5_REV    = 0x8366;
const UNSIGNED_INT_8_8_8_8_REV      = 0x8367;
const UNSIGNED_INT_2_10_10_10_REV   = 0x8368;
const BGR                           = 0x80E0;
const BGRA                          = 0x80E1;
const MAX_ELEMENTS_VERTICES         = 0x80E8;
const MAX_ELEMENTS_INDICES          = 0x80E9;
const CLAMP_TO_EDGE                 = 0x812F;
const TEXTURE_MIN_LOD               = 0x813A;
const TEXTURE_MAX_LOD               = 0x813B;
const TEXTURE_BASE_LEVEL            = 0x813C;
const TEXTURE_MAX_LEVEL             = 0x813D;
const SMOOTH_POINT_SIZE_RANGE       = 0x0B12;
const SMOOTH_POINT_SIZE_GRANULARITY = 0x0B13;
const SMOOTH_LINE_WIDTH_RANGE       = 0x0B22;
const SMOOTH_LINE_WIDTH_GRANULARITY = 0x0B23;
const ALIASED_LINE_WIDTH_RANGE      = 0x846E;

alias PFNglDrawRangeElementsPROC = fn void(Enum mode, Uint start, Uint end, Sizei count, Enum type, void* indices);
PFNglDrawRangeElementsPROC drawRangeElements = null;
alias PFNglTexImage3DPROC = fn void(Enum target, Int level, Int internalformat, Sizei width, Sizei height, Sizei depth, Int border, Enum format, Enum type, void* pixels);
PFNglTexImage3DPROC texImage3D = null;
alias PFNglTexSubImage3DPROC = fn void(Enum target, Int level, Int xoffset, Int yoffset, Int zoffset, Sizei width, Sizei height, Sizei depth, Enum format, Enum type, void* pixels);
PFNglTexSubImage3DPROC texSubImage3D = null;
alias PFNglCopyTexSubImage3DPROC = fn void(Enum target, Int level, Int xoffset, Int yoffset, Int zoffset, Int x, Int y, Sizei width, Sizei height);
PFNglCopyTexSubImage3DPROC copyTexSubImage3D = null;


fn void load_gl_1_2(LoadFn load)
{
    drawRangeElements = load("glDrawRangeElements");
    texImage3D = load("glTexImage3D");
    texSubImage3D = load("glTexSubImage3D");
    copyTexSubImage3D = load("glCopyTexSubImage3D");
}

module opengl::gl @if(opengl::version() >= 13);
import opengl;

const TEXTURE0                       = 0x84C0;
const TEXTURE1                       = 0x84C1;
const TEXTURE2                       = 0x84C2;
const TEXTURE3                       = 0x84C3;
const TEXTURE4                       = 0x84C4;
const TEXTURE5                       = 0x84C5;
const TEXTURE6                       = 0x84C6;
const TEXTURE7                       = 0x84C7;
const TEXTURE8                       = 0x84C8;
const TEXTURE9                       = 0x84C9;
const TEXTURE10                      = 0x84CA;
const TEXTURE11                      = 0x84CB;
const TEXTURE12                      = 0x84CC;
const TEXTURE13                      = 0x84CD;
const TEXTURE14                      = 0x84CE;
const TEXTURE15                      = 0x84CF;
const TEXTURE16                      = 0x84D0;
const TEXTURE17                      = 0x84D1;
const TEXTURE18                      = 0x84D2;
const TEXTURE19                      = 0x84D3;
const TEXTURE20                      = 0x84D4;
const TEXTURE21                      = 0x84D5;
const TEXTURE22                      = 0x84D6;
const TEXTURE23                      = 0x84D7;
const TEXTURE24                      = 0x84D8;
const TEXTURE25                      = 0x84D9;
const TEXTURE26                      = 0x84DA;
const TEXTURE27                      = 0x84DB;
const TEXTURE28                      = 0x84DC;
const TEXTURE29                      = 0x84DD;
const TEXTURE30                      = 0x84DE;
const TEXTURE31                      = 0x84DF;
const ACTIVE_TEXTURE                 = 0x84E0;
const MULTISAMPLE                    = 0x809D;
const SAMPLE_ALPHA_TO_COVERAGE       = 0x809E;
const SAMPLE_ALPHA_TO_ONE            = 0x809F;
const SAMPLE_COVERAGE                = 0x80A0;
const SAMPLE_BUFFERS                 = 0x80A8;
const SAMPLES                        = 0x80A9;
const SAMPLE_COVERAGE_VALUE          = 0x80AA;
const SAMPLE_COVERAGE_INVERT         = 0x80AB;
const TEXTURE_CUBE_MAP               = 0x8513;
const TEXTURE_BINDING_CUBE_MAP       = 0x8514;
const TEXTURE_CUBE_MAP_POSITIVE_X    = 0x8515;
const TEXTURE_CUBE_MAP_NEGATIVE_X    = 0x8516;
const TEXTURE_CUBE_MAP_POSITIVE_Y    = 0x8517;
const TEXTURE_CUBE_MAP_NEGATIVE_Y    = 0x8518;
const TEXTURE_CUBE_MAP_POSITIVE_Z    = 0x8519;
const TEXTURE_CUBE_MAP_NEGATIVE_Z    = 0x851A;
const PROXY_TEXTURE_CUBE_MAP         = 0x851B;
const MAX_CUBE_MAP_TEXTURE_SIZE      = 0x851C;
const COMPRESSED_RGB                 = 0x84ED;
const COMPRESSED_RGBA                = 0x84EE;
const TEXTURE_COMPRESSION_HINT       = 0x84EF;
const TEXTURE_COMPRESSED_IMAGE_SIZE  = 0x86A0;
const TEXTURE_COMPRESSED             = 0x86A1;
const NUM_COMPRESSED_TEXTURE_FORMATS = 0x86A2;
const COMPRESSED_TEXTURE_FORMATS     = 0x86A3;
const CLAMP_TO_BORDER                = 0x812D;

alias PFNglActiveTexturePROC = fn void(Enum texture);
PFNglActiveTexturePROC activeTexture = null;
alias PFNglSampleCoveragePROC = fn void(Float value, Boolean invert);
PFNglSampleCoveragePROC sampleCoverage = null;
alias PFNglCompressedTexImage3DPROC = fn void(Enum target, Int level, Enum internalformat, Sizei width, Sizei height, Sizei depth, Int border, Sizei imageSize, void* data);
PFNglCompressedTexImage3DPROC compressedTexImage3D = null;
alias PFNglCompressedteximage2DPROC = fn void(Enum target, Int level, Enum internalformat, Sizei width, Sizei height, Int border, Sizei imageSize, void* data);
PFNglCompressedteximage2DPROC compressedteximage2D = null;
alias PFNglCompressedteximage1DPROC = fn void(Enum target, Int level, Enum internalformat, Sizei width, Int border, Sizei imageSize, void* data);
PFNglCompressedteximage1DPROC compressedteximage1D = null;
alias PFNglCompressedTexSubImage3DPROC = fn void(Enum target, Int level, Int xoffset, Int yoffset, Int zoffset, Sizei width, Sizei height, Sizei depth, Enum format, Sizei imageSize, void* data);
PFNglCompressedTexSubImage3DPROC compressedTexSubImage3D = null;
alias PFNglCompressedTexSubImage2DPROC = fn void(Enum target, Int level, Int xoffset, Int yoffset, Sizei width, Sizei height, Enum format, Sizei imageSize, void* data);
PFNglCompressedTexSubImage2DPROC compressedTexSubImage2D = null;
alias PFNglCompressedTexSubImage1DPROC = fn void(Enum target, Int level, Int xoffset, Sizei width, Enum format, Sizei imageSize, void* data);
PFNglCompressedTexSubImage1DPROC compressedTexSubImage1D = null;
alias PFNglGetCompressedTexImagePROC = fn void(Enum target, Int level, void* img);
PFNglGetCompressedTexImagePROC getCompressedTexImage = null;


fn void load_gl_1_3(LoadFn load)
{
    activeTexture = load("glActiveTexture");
    sampleCoverage = load("glSampleCoverage");
    compressedTexImage3D = load("glCompressedTexImage3D");
    compressedteximage2D = load("glCompressedteximage2D");
    compressedteximage1D = load("glCompressedteximage1D");
    compressedTexSubImage3D = load("glCompressedTexSubImage3D");
    compressedTexSubImage2D = load("glCompressedTexSubImage2D");
    compressedTexSubImage1D = load("glCompressedTexSubImage1D");
    getCompressedTexImage = load("glGetCompressedTexImage");
}

module opengl::gl @if(opengl::version() >= 14);
import opengl;

const BLEND_DST_RGB             = 0x80C8;
const BLEND_SRC_RGB             = 0x80C9;
const BLEND_DST_ALPHA           = 0x80CA;
const BLEND_SRC_ALPHA           = 0x80CB;
const POINT_FADE_THRESHOLD_SIZE = 0x8128;
const DEPTH_COMPONENT16         = 0x81A5;
const DEPTH_COMPONENT24         = 0x81A6;
const DEPTH_COMPONENT32         = 0x81A7;
const MIRRORED_REPEAT           = 0x8370;
const MAX_TEXTURE_LOD_BIAS      = 0x84FD;
const TEXTURE_LOD_BIAS          = 0x8501;
const INCR_WRAP                 = 0x8507;
const DECR_WRAP                 = 0x8508;
const TEXTURE_DEPTH_SIZE        = 0x884A;
const TEXTURE_COMPARE_MODE      = 0x884C;
const TEXTURE_COMPARE_FUNC      = 0x884D;
const BLEND_COLOR               = 0x8005;
const BLEND_EQUATION            = 0x8009;
const ANT_COLOR                 = 0x8001;
const ONE_MINUS_ANT_COLOR       = 0x8002;
const ANT_ALPHA                 = 0x8003;
const ONE_MINUS_ANT_ALPHA       = 0x8004;
const FUNC_ADD                  = 0x8006;
const FUNC_REVERSE_SUBTRACT     = 0x800B;
const FUNC_SUBTRACT             = 0x800A;
const MIN                       = 0x8007;
const MAX                       = 0x8008;

alias PFNglBlendFuncSeparatePROC = fn void(Enum sfactorRGB, Enum dfactorRGB, Enum sfactorAlpha, Enum dfactorAlpha);
PFNglBlendFuncSeparatePROC blendFuncSeparate = null;
alias PFNglMultiDrawArraysPROC = fn void(Enum mode, Int* first, Sizei* count, Sizei drawcount);
PFNglMultiDrawArraysPROC multiDrawArrays = null;
alias PFNglMultiDrawElementsPROC = fn void(Enum mode, Sizei* count, Enum type, void* *indices, Sizei drawcount);
PFNglMultiDrawElementsPROC multiDrawElements = null;
alias PFNglPointParameterfPROC = fn void(Enum pname, Float param);
PFNglPointParameterfPROC pointParameterf = null;
alias PFNglPointParameterfvPROC = fn void(Enum pname, Float* params);
PFNglPointParameterfvPROC pointParameterfv = null;
alias PFNglPointParameteriPROC = fn void(Enum pname, Int param);
PFNglPointParameteriPROC pointParameteri = null;
alias PFNglPointParameterivPROC = fn void(Enum pname, Int* params);
PFNglPointParameterivPROC pointParameteriv = null;
alias PFNglBlendColorPROC = fn void(Float red, Float green, Float blue, Float alpha);
PFNglBlendColorPROC blendColor = null;
alias PFNglBlendEquationPROC = fn void(Enum mode);
PFNglBlendEquationPROC blendEquation = null;


fn void load_gl_1_4(LoadFn load)
{
    blendFuncSeparate = load("glBlendFuncSeparate");
    multiDrawArrays = load("glMultiDrawArrays");
    multiDrawElements = load("glMultiDrawElements");
    pointParameterf = load("glPointParameterf");
    pointParameterfv = load("glPointParameterfv");
    pointParameteri = load("glPointParameteri");
    pointParameteriv = load("glPointParameteriv");
    blendColor = load("glBlendColor");
    blendEquation = load("glBlendEquation");
}

module opengl::gl @if(opengl::version() >= 15);
import opengl;

alias Sizeiptr = isz*;
alias Intptr = usz*;

const BUFFER_SIZE                        = 0x8764;
const BUFFER_USAGE                       = 0x8765;
const QUERY_COUNTER_BITS                 = 0x8864;
const CURRENT_QUERY                      = 0x8865;
const QUERY_RESULT                       = 0x8866;
const QUERY_RESULT_AVAILABLE             = 0x8867;
const ARRAY_BUFFER                       = 0x8892;
const ELEMENT_ARRAY_BUFFER               = 0x8893;
const ARRAY_BUFFER_BINDING               = 0x8894;
const ELEMENT_ARRAY_BUFFER_BINDING       = 0x8895;
const VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 0x889F;
const READ_ONLY                          = 0x88B8;
const WRITE_ONLY                         = 0x88B9;
const READ_WRITE                         = 0x88BA;
const BUFFER_ACCESS                      = 0x88BB;
const BUFFER_MAPPED                      = 0x88BC;
const BUFFER_MAP_POINTER                 = 0x88BD;
const STREAM_DRAW                        = 0x88E0;
const STREAM_READ                        = 0x88E1;
const STREAM_COPY                        = 0x88E2;
const STATIC_DRAW                        = 0x88E4;
const STATIC_READ                        = 0x88E5;
const STATIC_COPY                        = 0x88E6;
const DYNAMIC_DRAW                       = 0x88E8;
const DYNAMIC_READ                       = 0x88E9;
const DYNAMIC_COPY                       = 0x88EA;
const SAMPLES_PASSED                     = 0x8914;
const SRC1_ALPHA                         = 0x8589;

alias PFNglGenQueriesPROC = fn void(Sizei n, Uint* ids);
PFNglGenQueriesPROC genQueries = null;
alias PFNglDeleteQueriesPROC = fn void(Sizei n, Uint* ids);
PFNglDeleteQueriesPROC deleteQueries = null;
alias PFNglIsQueryPROC = fn Boolean(Uint id);
PFNglIsQueryPROC isQuery = null;
alias PFNglBeginQueryPROC = fn void(Enum target, Uint id);
PFNglBeginQueryPROC beginQuery = null;
alias PFNglEndQueryPROC = fn void(Enum target);
PFNglEndQueryPROC endQuery = null;
alias PFNglGetQueryivPROC = fn void(Enum target, Enum pname, Int* params);
PFNglGetQueryivPROC getQueryiv = null;
alias PFNglGetQueryobjectivPROC = fn void(Uint id, Enum pname, Int* params);
PFNglGetQueryobjectivPROC getQueryobjectiv = null;
alias PFNglGetQueryobjectuivPROC = fn void(Uint id, Enum pname, Uint* params);
PFNglGetQueryobjectuivPROC getQueryobjectuiv = null;
alias PFNglBindBufferPROC = fn void(Enum target, Uint buffer);
PFNglBindBufferPROC bindBuffer = null;
alias PFNglDeleteBuffersPROC = fn void(Sizei n, Uint* buffers);
PFNglDeleteBuffersPROC deleteBuffers = null;
alias PFNglGenBuffersPROC = fn void(Sizei n, Uint* buffers);
PFNglGenBuffersPROC genBuffers = null;
alias PFNglIsBufferPROC = fn Boolean(Uint buffer);
PFNglIsBufferPROC isBuffer = null;
alias PFNglBufferDataPROC = fn void(Enum target, Sizeiptr size, void* data, Enum usage);
PFNglBufferDataPROC bufferData = null;
alias PFNglBufferSubDataPROC = fn void(Enum target, Intptr offset, Sizeiptr size, void* data);
PFNglBufferSubDataPROC bufferSubData = null;
alias PFNglGetBufferSubDataPROC = fn void(Enum target, Intptr offset, Sizeiptr size, void* data);
PFNglGetBufferSubDataPROC getBufferSubData = null;
alias PFNglMapBufferPROC = fn void*(Enum target, Enum access);
PFNglMapBufferPROC mapBuffer = null;
alias PFNglUnmapBufferPROC = fn Boolean(Enum target);
PFNglUnmapBufferPROC unmapBuffer = null;
alias PFNglGetBufferParameterivPROC = fn void(Enum target, Enum pname, Int* params);
PFNglGetBufferParameterivPROC getBufferParameteriv = null;
alias PFNglGetBufferPointervPROC = fn void(Enum target, Enum pname, void** params);
PFNglGetBufferPointervPROC getBufferPointerv = null;


fn void load_gl_1_5(LoadFn load)
{
    genQueries = load("glGenQueries");
    deleteQueries = load("glDeleteQueries");
    isQuery = load("glIsQuery");
    beginQuery = load("glBeginQuery");
    endQuery = load("glEndQuery");
    getQueryiv = load("glGetQueryiv");
    getQueryobjectiv = load("glGetQueryobjectiv");
    getQueryobjectuiv = load("glGetQueryobjectuiv");
    bindBuffer = load("glBindBuffer");
    deleteBuffers = load("glDeleteBuffers");
    genBuffers = load("glGenBuffers");
    isBuffer = load("glIsBuffer");
    bufferData = load("glBufferData");
    bufferSubData = load("glBufferSubData");
    getBufferSubData = load("glGetBufferSubData");
    mapBuffer = load("glMapBuffer");
    unmapBuffer = load("glUnmapBuffer");
    getBufferParameteriv = load("glGetBufferParameteriv");
    getBufferPointerv = load("glGetBufferPointerv");
}

module opengl::gl @if(opengl::version() >= 20);
import opengl;

alias Char = char;
alias Short = short;
alias Byte = char;
alias UShort = ushort;

const BLEND_EQUATION_RGB               = 0x8009;
const VERTEX_ATTRIB_ARRAY_ENABLED      = 0x8622;
const VERTEX_ATTRIB_ARRAY_SIZE         = 0x8623;
const VERTEX_ATTRIB_ARRAY_STRIDE       = 0x8624;
const VERTEX_ATTRIB_ARRAY_TYPE         = 0x8625;
const CURRENT_VERTEX_ATTRIB            = 0x8626;
const VERTEX_PROGRAM_POINT_SIZE        = 0x8642;
const VERTEX_ATTRIB_ARRAY_POINTER      = 0x8645;
const STENCIL_BACK_FUNC                = 0x8800;
const STENCIL_BACK_FAIL                = 0x8801;
const STENCIL_BACK_PASS_DEPTH_FAIL     = 0x8802;
const STENCIL_BACK_PASS_DEPTH_PASS     = 0x8803;
const MAX_DRAW_BUFFERS                 = 0x8824;
const DRAW_BUFFER0                     = 0x8825;
const DRAW_BUFFER1                     = 0x8826;
const DRAW_BUFFER2                     = 0x8827;
const DRAW_BUFFER3                     = 0x8828;
const DRAW_BUFFER4                     = 0x8829;
const DRAW_BUFFER5                     = 0x882A;
const DRAW_BUFFER6                     = 0x882B;
const DRAW_BUFFER7                     = 0x882C;
const DRAW_BUFFER8                     = 0x882D;
const DRAW_BUFFER9                     = 0x882E;
const DRAW_BUFFER10                    = 0x882F;
const DRAW_BUFFER11                    = 0x8830;
const DRAW_BUFFER12                    = 0x8831;
const DRAW_BUFFER13                    = 0x8832;
const DRAW_BUFFER14                    = 0x8833;
const DRAW_BUFFER15                    = 0x8834;
const BLEND_EQUATION_ALPHA             = 0x883D;
const MAX_VERTEX_ATTRIBS               = 0x8869;
const VERTEX_ATTRIB_ARRAY_NORMALIZED   = 0x886A;
const MAX_TEXTURE_IMAGE_UNITS          = 0x8872;
const FRAGMENT_SHADER                  = 0x8B30;
const VERTEX_SHADER                    = 0x8B31;
const MAX_FRAGMENT_UNIFORM_COMPONENTS  = 0x8B49;
const MAX_VERTEX_UNIFORM_COMPONENTS    = 0x8B4A;
const MAX_VARYING_FLOATS               = 0x8B4B;
const MAX_VERTEX_TEXTURE_IMAGE_UNITS   = 0x8B4C;
const MAX_COMBINED_TEXTURE_IMAGE_UNITS = 0x8B4D;
const SHADER_TYPE                      = 0x8B4F;
const FLOAT_VEC2                       = 0x8B50;
const FLOAT_VEC3                       = 0x8B51;
const FLOAT_VEC4                       = 0x8B52;
const INT_VEC2                         = 0x8B53;
const INT_VEC3                         = 0x8B54;
const INT_VEC4                         = 0x8B55;
const BOOL                             = 0x8B56;
const BOOL_VEC2                        = 0x8B57;
const BOOL_VEC3                        = 0x8B58;
const BOOL_VEC4                        = 0x8B59;
const FLOAT_MAT2                       = 0x8B5A;
const FLOAT_MAT3                       = 0x8B5B;
const FLOAT_MAT4                       = 0x8B5C;
const SAMPLER_1D                       = 0x8B5D;
const SAMPLER_2D                       = 0x8B5E;
const SAMPLER_3D                       = 0x8B5F;
const SAMPLER_CUBE                     = 0x8B60;
const SAMPLER_1D_SHADOW                = 0x8B61;
const SAMPLER_2D_SHADOW                = 0x8B62;
const DELETE_STATUS                    = 0x8B80;
const COMPILE_STATUS                   = 0x8B81;
const LINK_STATUS                      = 0x8B82;
const VALIDATE_STATUS                  = 0x8B83;
const INFO_LOG_LENGTH                  = 0x8B84;
const ATTACHED_SHADERS                 = 0x8B85;
const ACTIVE_UNIFORMS                  = 0x8B86;
const ACTIVE_UNIFORM_MAX_LENGTH        = 0x8B87;
const SHADER_SOURCE_LENGTH             = 0x8B88;
const ACTIVE_ATTRIBUTES                = 0x8B89;
const ACTIVE_ATTRIBUTE_MAX_LENGTH      = 0x8B8A;
const FRAGMENT_SHADER_DERIVATIVE_HINT  = 0x8B8B;
const SHADING_LANGUAGE_VERSION         = 0x8B8C;
const CURRENT_PROGRAM                  = 0x8B8D;
const POINT_SPRITE_COORD_ORIGIN        = 0x8CA0;
const LOWER_LEFT                       = 0x8CA1;
const UPPER_LEFT                       = 0x8CA2;
const STENCIL_BACK_REF                 = 0x8CA3;
const STENCIL_BACK_VALUE_MASK          = 0x8CA4;
const STENCIL_BACK_WRITEMASK           = 0x8CA5;

alias PFNglBlendEquationSeparatePROC = fn void(Enum modeRGB, Enum modeAlpha);
PFNglBlendEquationSeparatePROC blendEquationSeparate = null;
alias PFNglDrawBuffersPROC = fn void(Sizei n, Enum* bufs);
PFNglDrawBuffersPROC drawBuffers = null;
alias PFNglStencilOpSeparatePROC = fn void(Enum face, Enum sfail, Enum dpfail, Enum dppass);
PFNglStencilOpSeparatePROC stencilOpSeparate = null;
alias PFNglStencilFuncSeparatePROC = fn void(Enum face, Enum func, Int ref, Uint mask);
PFNglStencilFuncSeparatePROC stencilFuncSeparate = null;
alias PFNglStencilMaskSeparatePROC = fn void(Enum face, Uint mask);
PFNglStencilMaskSeparatePROC stencilMaskSeparate = null;
alias PFNglAttachShaderPROC = fn void(Uint program, Uint shader);
PFNglAttachShaderPROC attachShader = null;
alias PFNglBindAttribLocationPROC = fn void(Uint program, Uint index, ZString name);
PFNglBindAttribLocationPROC bindAttribLocation = null;
alias PFNglCompileShaderPROC = fn void(Uint shader);
PFNglCompileShaderPROC compileShader = null;
alias PFNglCreateProgramPROC = fn Uint();
PFNglCreateProgramPROC createProgram = null;
alias PFNglCreateShaderPROC = fn Uint(Enum type);
PFNglCreateShaderPROC createShader = null;
alias PFNglDeleteProgramPROC = fn void(Uint program);
PFNglDeleteProgramPROC deleteProgram = null;
alias PFNglDeleteShaderPROC = fn void(Uint shader);
PFNglDeleteShaderPROC deleteShader = null;
alias PFNglDetachShaderPROC = fn void(Uint program, Uint shader);
PFNglDetachShaderPROC detachShader = null;
alias PFNglDisableVertexAttribArrayPROC = fn void(Uint index);
PFNglDisableVertexAttribArrayPROC disableVertexAttribArray = null;
alias PFNglEnableVertexAttribArrayPROC = fn void(Uint index);
PFNglEnableVertexAttribArrayPROC enableVertexAttribArray = null;
alias PFNglGetActiveAttribPROC = fn void(Uint program, Uint index, Sizei bufSize, Sizei* length, Int* size, Enum* type, ZString name);
PFNglGetActiveAttribPROC getActiveAttrib = null;
alias PFNglGetActiveUniformPROC = fn void(Uint program, Uint index, Sizei bufSize, Sizei* length, Int* size, Enum* type, ZString name);
PFNglGetActiveUniformPROC getActiveUniform = null;
alias PFNglGetAttachedShadersPROC = fn void(Uint program, Sizei maxCount, Sizei* count, Uint* shaders);
PFNglGetAttachedShadersPROC getAttachedShaders = null;
alias PFNglGetAttribLocationPROC = fn Int(Uint program, ZString name);
PFNglGetAttribLocationPROC getAttribLocation = null;
alias PFNglGetProgramivPROC = fn void(Uint program, Enum pname, Int* params);
PFNglGetProgramivPROC getProgramiv = null;
alias PFNglGetProgramInfoLogPROC = fn void(Uint program, Sizei bufSize, Sizei* length, ZString infoLog);
PFNglGetProgramInfoLogPROC getProgramInfoLog = null;
alias PFNglGetShaderivPROC = fn void(Uint shader, Enum pname, Int* params);
PFNglGetShaderivPROC getShaderiv = null;
alias PFNglGetShaderInfoLogPROC = fn void(Uint shader, Sizei bufSize, Sizei* length, ZString infoLog);
PFNglGetShaderInfoLogPROC getShaderInfoLog = null;
alias PFNglGetShaderSourcePROC = fn void(Uint shader, Sizei bufSize, Sizei* length, ZString source);
PFNglGetShaderSourcePROC getShaderSource = null;
alias PFNglGetUniformLocationPROC = fn Int(Uint program, ZString name);
PFNglGetUniformLocationPROC getUniformLocation = null;
alias PFNglGetUniformfvPROC = fn void(Uint program, Int location, Float* params);
PFNglGetUniformfvPROC getUniformfv = null;
alias PFNglGetUniformivPROC = fn void(Uint program, Int location, Int* params);
PFNglGetUniformivPROC getUniformiv = null;
alias PFNglGetVertexAttribdvPROC = fn void(Uint index, Enum pname, Double* params);
PFNglGetVertexAttribdvPROC getVertexAttribdv = null;
alias PFNglGetVertexAttribfvPROC = fn void(Uint index, Enum pname, Float* params);
PFNglGetVertexAttribfvPROC getVertexAttribfv = null;
alias PFNglGetVertexAttribivPROC = fn void(Uint index, Enum pname, Int* params);
PFNglGetVertexAttribivPROC getVertexAttribiv = null;
alias PFNglGetVertexAttribPointervPROC = fn void(Uint index, Enum pname, void** pointer);
PFNglGetVertexAttribPointervPROC getVertexAttribPointerv = null;
alias PFNglIsProgramPROC = fn Boolean(Uint program);
PFNglIsProgramPROC isProgram = null;
alias PFNglIsShaderPROC = fn Boolean(Uint shader);
PFNglIsShaderPROC isShader = null;
alias PFNglLinkProgramPROC = fn void(Uint program);
PFNglLinkProgramPROC linkProgram = null;
alias PFNglShaderSourcePROC = fn void(Uint shader, Sizei count, ZString* string, Int* length);
PFNglShaderSourcePROC shaderSource = null;
alias PFNglUseProgramPROC = fn void(Uint program);
PFNglUseProgramPROC useProgram = null;
alias PFNglUniform1fPROC = fn void(Int location, Float v0);
PFNglUniform1fPROC uniform1f = null;
alias PFNglUniform2fPROC = fn void(Int location, Float v0, Float v1);
PFNglUniform2fPROC uniform2f = null;
alias PFNglUniform3fPROC = fn void(Int location, Float v0, Float v1, Float v2);
PFNglUniform3fPROC uniform3f = null;
alias PFNglUniform4fPROC = fn void(Int location, Float v0, Float v1, Float v2, Float v3);
PFNglUniform4fPROC uniform4f = null;
alias PFNglUniform1iPROC = fn void(Int location, Int v0);
PFNglUniform1iPROC uniform1i = null;
alias PFNglUniform2iPROC = fn void(Int location, Int v0, Int v1);
PFNglUniform2iPROC uniform2i = null;
alias PFNglUniform3iPROC = fn void(Int location, Int v0, Int v1, Int v2);
PFNglUniform3iPROC uniform3i = null;
alias PFNglUniform4iPROC = fn void(Int location, Int v0, Int v1, Int v2, Int v3);
PFNglUniform4iPROC uniform4i = null;
alias PFNglUniform1fvPROC = fn void(Int location, Sizei count, Float* value);
PFNglUniform1fvPROC uniform1fv = null;
alias PFNglUniform2fvPROC = fn void(Int location, Sizei count, Float* value);
PFNglUniform2fvPROC uniform2fv = null;
alias PFNglUniform3fvPROC = fn void(Int location, Sizei count, Float* value);
PFNglUniform3fvPROC uniform3fv = null;
alias PFNglUniform4fvPROC = fn void(Int location, Sizei count, Float* value);
PFNglUniform4fvPROC uniform4fv = null;
alias PFNglUniform1ivPROC = fn void(Int location, Sizei count, Int* value);
PFNglUniform1ivPROC uniform1iv = null;
alias PFNglUniform2ivPROC = fn void(Int location, Sizei count, Int* value);
PFNglUniform2ivPROC uniform2iv = null;
alias PFNglUniform3ivPROC = fn void(Int location, Sizei count, Int* value);
PFNglUniform3ivPROC uniform3iv = null;
alias PFNglUniform4ivPROC = fn void(Int location, Sizei count, Int* value);
PFNglUniform4ivPROC uniform4iv = null;
alias PFNglUniformMatrix2fvPROC = fn void(Int location, Sizei count, Boolean transpose, Float* value);
PFNglUniformMatrix2fvPROC uniformMatrix2fv = null;
alias PFNglUniformMatrix3fvPROC = fn void(Int location, Sizei count, Boolean transpose, Float* value);
PFNglUniformMatrix3fvPROC uniformMatrix3fv = null;
alias PFNglUniformMatrix4fvPROC = fn void(Int location, Sizei count, Boolean transpose, Float* value);
PFNglUniformMatrix4fvPROC uniformMatrix4fv = null;
alias PFNglValidateProgramPROC = fn void(Uint program);
PFNglValidateProgramPROC validateProgram = null;
alias PFNglVertexAttrib1dPROC = fn void(Uint index, Double x);
PFNglVertexAttrib1dPROC vertexAttrib1d = null;
alias PFNglVertexAttrib1dvPROC = fn void(Uint index, Double* v);
PFNglVertexAttrib1dvPROC vertexAttrib1dv = null;
alias PFNglVertexAttrib1fPROC = fn void(Uint index, Float x);
PFNglVertexAttrib1fPROC vertexAttrib1f = null;
alias PFNglVertexAttrib1fvPROC = fn void(Uint index, Float* v);
PFNglVertexAttrib1fvPROC vertexAttrib1fv = null;
alias PFNglVertexAttrib1sPROC = fn void(Uint index, Short x);
PFNglVertexAttrib1sPROC vertexAttrib1s = null;
alias PFNglVertexAttrib1svPROC = fn void(Uint index, Short* v);
PFNglVertexAttrib1svPROC vertexAttrib1sv = null;
alias PFNglVertexAttrib2dPROC = fn void(Uint index, Double x, Double y);
PFNglVertexAttrib2dPROC vertexAttrib2d = null;
alias PFNglVertexAttrib2dvPROC = fn void(Uint index, Double* v);
PFNglVertexAttrib2dvPROC vertexAttrib2dv = null;
alias PFNglVertexAttrib2fPROC = fn void(Uint index, Float x, Float y);
PFNglVertexAttrib2fPROC vertexAttrib2f = null;
alias PFNglVertexAttrib2fvPROC = fn void(Uint index, Float* v);
PFNglVertexAttrib2fvPROC vertexAttrib2fv = null;
alias PFNglVertexAttrib2sPROC = fn void(Uint index, Short x, Short y);
PFNglVertexAttrib2sPROC vertexAttrib2s = null;
alias PFNglVertexAttrib2svPROC = fn void(Uint index, Short* v);
PFNglVertexAttrib2svPROC vertexAttrib2sv = null;
alias PFNglVertexAttrib3dPROC = fn void(Uint index, Double x, Double y, Double z);
PFNglVertexAttrib3dPROC vertexAttrib3d = null;
alias PFNglVertexAttrib3dvPROC = fn void(Uint index, Double* v);
PFNglVertexAttrib3dvPROC vertexAttrib3dv = null;
alias PFNglVertexAttrib3fPROC = fn void(Uint index, Float x, Float y, Float z);
PFNglVertexAttrib3fPROC vertexAttrib3f = null;
alias PFNglVertexAttrib3fvPROC = fn void(Uint index, Float* v);
PFNglVertexAttrib3fvPROC vertexAttrib3fv = null;
alias PFNglVertexAttrib3sPROC = fn void(Uint index, Short x, Short y, Short z);
PFNglVertexAttrib3sPROC vertexAttrib3s = null;
alias PFNglVertexAttrib3svPROC = fn void(Uint index, Short* v);
PFNglVertexAttrib3svPROC vertexAttrib3sv = null;
alias PFNglVertexAttrib4nbvPROC = fn void(Uint index, Byte* v);
PFNglVertexAttrib4nbvPROC vertexAttrib4nbv = null;
alias PFNglVertexAttrib4nivPROC = fn void(Uint index, Int* v);
PFNglVertexAttrib4nivPROC vertexAttrib4niv = null;
alias PFNglVertexAttrib4nsvPROC = fn void(Uint index, Short* v);
PFNglVertexAttrib4nsvPROC vertexAttrib4nsv = null;
alias PFNglVertexAttrib4nubPROC = fn void(Uint index, Ubyte x, Ubyte y, Ubyte z, Ubyte w);
PFNglVertexAttrib4nubPROC vertexAttrib4nub = null;
alias PFNglVertexAttrib4nubvPROC = fn void(Uint index, Ubyte* v);
PFNglVertexAttrib4nubvPROC vertexAttrib4nubv = null;
alias PFNglVertexAttrib4nuivPROC = fn void(Uint index, Uint* v);
PFNglVertexAttrib4nuivPROC vertexAttrib4nuiv = null;
alias PFNglVertexAttrib4nusvPROC = fn void(Uint index, UShort* v);
PFNglVertexAttrib4nusvPROC vertexAttrib4nusv = null;
alias PFNglVertexAttrib4bvPROC = fn void(Uint index, Byte* v);
PFNglVertexAttrib4bvPROC vertexAttrib4bv = null;
alias PFNglVertexAttrib4dPROC = fn void(Uint index, Double x, Double y, Double z, Double w);
PFNglVertexAttrib4dPROC vertexAttrib4d = null;
alias PFNglVertexAttrib4dvPROC = fn void(Uint index, Double* v);
PFNglVertexAttrib4dvPROC vertexAttrib4dv = null;
alias PFNglVertexAttrib4fPROC = fn void(Uint index, Float x, Float y, Float z, Float w);
PFNglVertexAttrib4fPROC vertexAttrib4f = null;
alias PFNglVertexAttrib4fvPROC = fn void(Uint index, Float* v);
PFNglVertexAttrib4fvPROC vertexAttrib4fv = null;
alias PFNglVertexAttrib4ivPROC = fn void(Uint index, Int* v);
PFNglVertexAttrib4ivPROC vertexAttrib4iv = null;
alias PFNglVertexAttrib4sPROC = fn void(Uint index, Short x, Short y, Short z, Short w);
PFNglVertexAttrib4sPROC vertexAttrib4s = null;
alias PFNglVertexAttrib4svPROC = fn void(Uint index, Short* v);
PFNglVertexAttrib4svPROC vertexAttrib4sv = null;
alias PFNglVertexAttrib4ubvPROC = fn void(Uint index, Ubyte* v);
PFNglVertexAttrib4ubvPROC vertexAttrib4ubv = null;
alias PFNglVertexAttrib4uivPROC = fn void(Uint index, Uint* v);
PFNglVertexAttrib4uivPROC vertexAttrib4uiv = null;
alias PFNglVertexAttrib4usvPROC = fn void(Uint index, UShort* v);
PFNglVertexAttrib4usvPROC vertexAttrib4usv = null;
alias PFNglVertexAttribPointerPROC = fn void(Uint index, Int size, Enum type, Boolean normalized, Sizei stride, void* pointer);
PFNglVertexAttribPointerPROC vertexAttribPointer = null;


fn void load_gl_2_0(LoadFn load)
{
    blendEquationSeparate = load("glBlendEquationSeparate");
    drawBuffers = load("glDrawBuffers");
    stencilOpSeparate = load("glStencilOpSeparate");
    stencilFuncSeparate = load("glStencilFuncSeparate");
    stencilMaskSeparate = load("glStencilMaskSeparate");
    attachShader = load("glAttachShader");
    bindAttribLocation = load("glBindAttribLocation");
    compileShader = load("glCompileShader");
    createProgram = load("glCreateProgram");
    createShader = load("glCreateShader");
    deleteProgram = load("glDeleteProgram");
    deleteShader = load("glDeleteShader");
    detachShader = load("glDetachShader");
    disableVertexAttribArray = load("glDisableVertexAttribArray");
    enableVertexAttribArray = load("glEnableVertexAttribArray");
    getActiveAttrib = load("glGetActiveAttrib");
    getActiveUniform = load("glGetActiveUniform");
    getAttachedShaders = load("glGetAttachedShaders");
    getAttribLocation = load("glGetAttribLocation");
    getProgramiv = load("glGetProgramiv");
    getProgramInfoLog = load("glGetProgramInfoLog");
    getShaderiv = load("glGetShaderiv");
    getShaderInfoLog = load("glGetShaderInfoLog");
    getShaderSource = load("glGetShaderSource");
    getUniformLocation = load("glGetUniformLocation");
    getUniformfv = load("glGetUniformfv");
    getUniformiv = load("glGetUniformiv");
    getVertexAttribdv = load("glGetVertexAttribdv");
    getVertexAttribfv = load("glGetVertexAttribfv");
    getVertexAttribiv = load("glGetVertexAttribiv");
    getVertexAttribPointerv = load("glGetVertexAttribPointerv");
    isProgram = load("glIsProgram");
    isShader = load("glIsShader");
    linkProgram = load("glLinkProgram");
    shaderSource = load("glShaderSource");
    useProgram = load("glUseProgram");
    uniform1f = load("glUniform1f");
    uniform2f = load("glUniform2f");
    uniform3f = load("glUniform3f");
    uniform4f = load("glUniform4f");
    uniform1i = load("glUniform1i");
    uniform2i = load("glUniform2i");
    uniform3i = load("glUniform3i");
    uniform4i = load("glUniform4i");
    uniform1fv = load("glUniform1fv");
    uniform2fv = load("glUniform2fv");
    uniform3fv = load("glUniform3fv");
    uniform4fv = load("glUniform4fv");
    uniform1iv = load("glUniform1iv");
    uniform2iv = load("glUniform2iv");
    uniform3iv = load("glUniform3iv");
    uniform4iv = load("glUniform4iv");
    uniformMatrix2fv = load("glUniformMatrix2fv");
    uniformMatrix3fv = load("glUniformMatrix3fv");
    uniformMatrix4fv = load("glUniformMatrix4fv");
    validateProgram = load("glValidateProgram");
    vertexAttrib1d = load("glVertexAttrib1d");
    vertexAttrib1dv = load("glVertexAttrib1dv");
    vertexAttrib1f = load("glVertexAttrib1f");
    vertexAttrib1fv = load("glVertexAttrib1fv");
    vertexAttrib1s = load("glVertexAttrib1s");
    vertexAttrib1sv = load("glVertexAttrib1sv");
    vertexAttrib2d = load("glVertexAttrib2d");
    vertexAttrib2dv = load("glVertexAttrib2dv");
    vertexAttrib2f = load("glVertexAttrib2f");
    vertexAttrib2fv = load("glVertexAttrib2fv");
    vertexAttrib2s = load("glVertexAttrib2s");
    vertexAttrib2sv = load("glVertexAttrib2sv");
    vertexAttrib3d = load("glVertexAttrib3d");
    vertexAttrib3dv = load("glVertexAttrib3dv");
    vertexAttrib3f = load("glVertexAttrib3f");
    vertexAttrib3fv = load("glVertexAttrib3fv");
    vertexAttrib3s = load("glVertexAttrib3s");
    vertexAttrib3sv = load("glVertexAttrib3sv");
    vertexAttrib4nbv = load("glVertexAttrib4nbv");
    vertexAttrib4niv = load("glVertexAttrib4niv");
    vertexAttrib4nsv = load("glVertexAttrib4nsv");
    vertexAttrib4nub = load("glVertexAttrib4nub");
    vertexAttrib4nubv = load("glVertexAttrib4nubv");
    vertexAttrib4nuiv = load("glVertexAttrib4nuiv");
    vertexAttrib4nusv = load("glVertexAttrib4nusv");
    vertexAttrib4bv = load("glVertexAttrib4bv");
    vertexAttrib4d = load("glVertexAttrib4d");
    vertexAttrib4dv = load("glVertexAttrib4dv");
    vertexAttrib4f = load("glVertexAttrib4f");
    vertexAttrib4fv = load("glVertexAttrib4fv");
    vertexAttrib4iv = load("glVertexAttrib4iv");
    vertexAttrib4s = load("glVertexAttrib4s");
    vertexAttrib4sv = load("glVertexAttrib4sv");
    vertexAttrib4ubv = load("glVertexAttrib4ubv");
    vertexAttrib4uiv = load("glVertexAttrib4uiv");
    vertexAttrib4usv = load("glVertexAttrib4usv");
    vertexAttribPointer = load("glVertexAttribPointer");
}

module opengl::gl @if(opengl::version() >= 21);
import opengl;

const PIXEL_PACK_BUFFER           = 0x88EB;
const PIXEL_UNPACK_BUFFER         = 0x88EC;
const PIXEL_PACK_BUFFER_BINDING   = 0x88ED;
const PIXEL_UNPACK_BUFFER_BINDING = 0x88EF;
const FLOAT_MAT2X3                = 0x8B65;
const FLOAT_MAT2X4                = 0x8B66;
const FLOAT_MAT3X2                = 0x8B67;
const FLOAT_MAT3X4                = 0x8B68;
const FLOAT_MAT4X2                = 0x8B69;
const FLOAT_MAT4X3                = 0x8B6A;
const SRGB                        = 0x8C40;
const SRGB8                       = 0x8C41;
const SRGB_ALPHA                  = 0x8C42;
const SRGB8_ALPHA8                = 0x8C43;
const COMPRESSED_SRGB             = 0x8C48;
const COMPRESSED_SRGB_ALPHA       = 0x8C49;

alias PFNglUniformMatrix2x3fvPROC = fn void (Int location, Sizei count, Boolean transpose, Float* value);
PFNglUniformMatrix2x3fvPROC uniformMatrix2x3fv = null;
alias PFNglUniformMatrix3x2fvPROC = fn void (Int location, Sizei count, Boolean transpose, Float* value);
PFNglUniformMatrix3x2fvPROC uniformMatrix3x2fv = null;
alias PFNglUniformMatrix2x4fvPROC = fn void (Int location, Sizei count, Boolean transpose, Float* value);
PFNglUniformMatrix2x4fvPROC uniformMatrix2x4fv = null;
alias PFNglUniformMatrix4x2fvPROC = fn void (Int location, Sizei count, Boolean transpose, Float* value);
PFNglUniformMatrix4x2fvPROC uniformMatrix4x2fv = null;
alias PFNglUniformMatrix3x4fvPROC = fn void (Int location, Sizei count, Boolean transpose, Float* value);
PFNglUniformMatrix3x4fvPROC uniformMatrix3x4fv = null;
alias PFNglUniformMatrix4x3fvPROC = fn void (Int location, Sizei count, Boolean transpose, Float* value);
PFNglUniformMatrix4x3fvPROC uniformMatrix4x3fv = null;


fn void load_gl_2_1(LoadFn load)
{
    uniformMatrix2x3fv = load("glUniformMatrix2x3fv");
    uniformMatrix3x2fv = load("glUniformMatrix3x2fv");
    uniformMatrix2x4fv = load("glUniformMatrix2x4fv");
    uniformMatrix4x2fv = load("glUniformMatrix4x2fv");
    uniformMatrix3x4fv = load("glUniformMatrix3x4fv");
    uniformMatrix4x3fv = load("glUniformMatrix4x3fv");
}

module opengl::gl @if(opengl::version() >= 30);
import opengl;

alias Half = ushort;

const COMPARE_REF_TO_TEXTURE                        = 0x884E;
const CLIP_DISTANCE0                                = 0x3000;
const CLIP_DISTANCE1                                = 0x3001;
const CLIP_DISTANCE2                                = 0x3002;
const CLIP_DISTANCE3                                = 0x3003;
const CLIP_DISTANCE4                                = 0x3004;
const CLIP_DISTANCE5                                = 0x3005;
const CLIP_DISTANCE6                                = 0x3006;
const CLIP_DISTANCE7                                = 0x3007;
const MAX_CLIP_DISTANCES                            = 0x0D32;
const MAJOR_VERSION                                 = 0x821B;
const MINOR_VERSION                                 = 0x821C;
const NUM_EXTENSIONS                                = 0x821D;
const CONTEXT_FLAGS                                 = 0x821E;
const COMPRESSED_RED                                = 0x8225;
const COMPRESSED_RG                                 = 0x8226;
const CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT           = 0x00000001;
const RGBA32F                                       = 0x8814;
const RGB32F                                        = 0x8815;
const RGBA16F                                       = 0x881A;
const RGB16F                                        = 0x881B;
const VERTEX_ATTRIB_ARRAY_INTEGER                   = 0x88FD;
const MAX_ARRAY_TEXTURE_LAYERS                      = 0x88FF;
const MIN_PROGRAM_TEXEL_OFFSET                      = 0x8904;
const MAX_PROGRAM_TEXEL_OFFSET                      = 0x8905;
const CLAMP_READ_COLOR                              = 0x891C;
const FIXED_ONLY                                    = 0x891D;
const MAX_VARYING_COMPONENTS                        = 0x8B4B;
const TEXTURE_1D_ARRAY                              = 0x8C18;
const PROXY_TEXTURE_1D_ARRAY                        = 0x8C19;
const TEXTURE_2D_ARRAY                              = 0x8C1A;
const PROXY_TEXTURE_2D_ARRAY                        = 0x8C1B;
const TEXTURE_BINDING_1D_ARRAY                      = 0x8C1C;
const TEXTURE_BINDING_2D_ARRAY                      = 0x8C1D;
const R11F_G11F_B10F                                = 0x8C3A;
const UNSIGNED_INT_10F_11F_11F_REV                  = 0x8C3B;
const RGB9_E5                                       = 0x8C3D;
const UNSIGNED_INT_5_9_9_9_REV                      = 0x8C3E;
const TEXTURE_SHARED_SIZE                           = 0x8C3F;
const TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH         = 0x8C76;
const TRANSFORM_FEEDBACK_BUFFER_MODE                = 0x8C7F;
const MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS    = 0x8C80;
const TRANSFORM_FEEDBACK_VARYINGS                   = 0x8C83;
const TRANSFORM_FEEDBACK_BUFFER_START               = 0x8C84;
const TRANSFORM_FEEDBACK_BUFFER_SIZE                = 0x8C85;
const PRIMITIVES_GENERATED                          = 0x8C87;
const TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN         = 0x8C88;
const RASTERIZER_DISCARD                            = 0x8C89;
const MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS = 0x8C8A;
const MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS       = 0x8C8B;
const INTERLEAVED_ATTRIBS                           = 0x8C8C;
const SEPARATE_ATTRIBS                              = 0x8C8D;
const TRANSFORM_FEEDBACK_BUFFER                     = 0x8C8E;
const TRANSFORM_FEEDBACK_BUFFER_BINDING             = 0x8C8F;
const RGBA32UI                                      = 0x8D70;
const RGB32UI                                       = 0x8D71;
const RGBA16UI                                      = 0x8D76;
const RGB16UI                                       = 0x8D77;
const RGBA8UI                                       = 0x8D7C;
const RGB8UI                                        = 0x8D7D;
const RGBA32I                                       = 0x8D82;
const RGB32I                                        = 0x8D83;
const RGBA16I                                       = 0x8D88;
const RGB16I                                        = 0x8D89;
const RGBA8I                                        = 0x8D8E;
const RGB8I                                         = 0x8D8F;
const RED_INTEGER                                   = 0x8D94;
const GREEN_INTEGER                                 = 0x8D95;
const BLUE_INTEGER                                  = 0x8D96;
const RGB_INTEGER                                   = 0x8D98;
const RGBA_INTEGER                                  = 0x8D99;
const BGR_INTEGER                                   = 0x8D9A;
const BGRA_INTEGER                                  = 0x8D9B;
const SAMPLER_1D_ARRAY                              = 0x8DC0;
const SAMPLER_2D_ARRAY                              = 0x8DC1;
const SAMPLER_1D_ARRAY_SHADOW                       = 0x8DC3;
const SAMPLER_2D_ARRAY_SHADOW                       = 0x8DC4;
const SAMPLER_CUBE_SHADOW                           = 0x8DC5;
const UNSIGNED_INT_VEC2                             = 0x8DC6;
const UNSIGNED_INT_VEC3                             = 0x8DC7;
const UNSIGNED_INT_VEC4                             = 0x8DC8;
const INT_SAMPLER_1D                                = 0x8DC9;
const INT_SAMPLER_2D                                = 0x8DCA;
const INT_SAMPLER_3D                                = 0x8DCB;
const INT_SAMPLER_CUBE                              = 0x8DCC;
const INT_SAMPLER_1D_ARRAY                          = 0x8DCE;
const INT_SAMPLER_2D_ARRAY                          = 0x8DCF;
const UNSIGNED_INT_SAMPLER_1D                       = 0x8DD1;
const UNSIGNED_INT_SAMPLER_2D                       = 0x8DD2;
const UNSIGNED_INT_SAMPLER_3D                       = 0x8DD3;
const UNSIGNED_INT_SAMPLER_CUBE                     = 0x8DD4;
const UNSIGNED_INT_SAMPLER_1D_ARRAY                 = 0x8DD6;
const UNSIGNED_INT_SAMPLER_2D_ARRAY                 = 0x8DD7;
const QUERY_WAIT                                    = 0x8E13;
const QUERY_NO_WAIT                                 = 0x8E14;
const QUERY_BY_REGION_WAIT                          = 0x8E15;
const QUERY_BY_REGION_NO_WAIT                       = 0x8E16;
const BUFFER_ACCESS_FLAGS                           = 0x911F;
const BUFFER_MAP_LENGTH                             = 0x9120;
const BUFFER_MAP_OFFSET                             = 0x9121;
const DEPTH_COMPONENT32F                            = 0x8CAC;
const DEPTH32F_STENCIL8                             = 0x8CAD;
const FLOAT_32_UNSIGNED_INT_24_8_REV                = 0x8DAD;
const INVALID_FRAMEBUFFER_OPERATION                 = 0x0506;
const FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING         = 0x8210;
const FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE         = 0x8211;
const FRAMEBUFFER_ATTACHMENT_RED_SIZE               = 0x8212;
const FRAMEBUFFER_ATTACHMENT_GREEN_SIZE             = 0x8213;
const FRAMEBUFFER_ATTACHMENT_BLUE_SIZE              = 0x8214;
const FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE             = 0x8215;
const FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE             = 0x8216;
const FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE           = 0x8217;
const FRAMEBUFFER_DEFAULT                           = 0x8218;
const FRAMEBUFFER_UNDEFINED                         = 0x8219;
const DEPTH_STENCIL_ATTACHMENT                      = 0x821A;
const MAX_RENDERBUFFER_SIZE                         = 0x84E8;
const DEPTH_STENCIL                                 = 0x84F9;
const UNSIGNED_INT_24_8                             = 0x84FA;
const DEPTH24_STENCIL8                              = 0x88F0;
const TEXTURE_STENCIL_SIZE                          = 0x88F1;
const TEXTURE_RED_TYPE                              = 0x8C10;
const TEXTURE_GREEN_TYPE                            = 0x8C11;
const TEXTURE_BLUE_TYPE                             = 0x8C12;
const TEXTURE_ALPHA_TYPE                            = 0x8C13;
const TEXTURE_DEPTH_TYPE                            = 0x8C16;
const UNSIGNED_NORMALIZED                           = 0x8C17;
const FRAMEBUFFER_BINDING                           = 0x8CA6;
const DRAW_FRAMEBUFFER_BINDING                      = 0x8CA6;
const RENDERBUFFER_BINDING                          = 0x8CA7;
const READ_FRAMEBUFFER                              = 0x8CA8;
const DRAW_FRAMEBUFFER                              = 0x8CA9;
const READ_FRAMEBUFFER_BINDING                      = 0x8CAA;
const RENDERBUFFER_SAMPLES                          = 0x8CAB;
const FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE            = 0x8CD0;
const FRAMEBUFFER_ATTACHMENT_OBJECT_NAME            = 0x8CD1;
const FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL          = 0x8CD2;
const FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE  = 0x8CD3;
const FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER          = 0x8CD4;
const FRAMEBUFFER_COMPLETE                          = 0x8CD5;
const FRAMEBUFFER_INCOMPLETE_ATTACHMENT             = 0x8CD6;
const FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT     = 0x8CD7;
const FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER            = 0x8CDB;
const FRAMEBUFFER_INCOMPLETE_READ_BUFFER            = 0x8CDC;
const FRAMEBUFFER_UNSUPPORTED                       = 0x8CDD;
const MAX_COLOR_ATTACHMENTS                         = 0x8CDF;
const COLOR_ATTACHMENT0                             = 0x8CE0;
const COLOR_ATTACHMENT1                             = 0x8CE1;
const COLOR_ATTACHMENT2                             = 0x8CE2;
const COLOR_ATTACHMENT3                             = 0x8CE3;
const COLOR_ATTACHMENT4                             = 0x8CE4;
const COLOR_ATTACHMENT5                             = 0x8CE5;
const COLOR_ATTACHMENT6                             = 0x8CE6;
const COLOR_ATTACHMENT7                             = 0x8CE7;
const COLOR_ATTACHMENT8                             = 0x8CE8;
const COLOR_ATTACHMENT9                             = 0x8CE9;
const COLOR_ATTACHMENT10                            = 0x8CEA;
const COLOR_ATTACHMENT11                            = 0x8CEB;
const COLOR_ATTACHMENT12                            = 0x8CEC;
const COLOR_ATTACHMENT13                            = 0x8CED;
const COLOR_ATTACHMENT14                            = 0x8CEE;
const COLOR_ATTACHMENT15                            = 0x8CEF;
const COLOR_ATTACHMENT16                            = 0x8CF0;
const COLOR_ATTACHMENT17                            = 0x8CF1;
const COLOR_ATTACHMENT18                            = 0x8CF2;
const COLOR_ATTACHMENT19                            = 0x8CF3;
const COLOR_ATTACHMENT20                            = 0x8CF4;
const COLOR_ATTACHMENT21                            = 0x8CF5;
const COLOR_ATTACHMENT22                            = 0x8CF6;
const COLOR_ATTACHMENT23                            = 0x8CF7;
const COLOR_ATTACHMENT24                            = 0x8CF8;
const COLOR_ATTACHMENT25                            = 0x8CF9;
const COLOR_ATTACHMENT26                            = 0x8CFA;
const COLOR_ATTACHMENT27                            = 0x8CFB;
const COLOR_ATTACHMENT28                            = 0x8CFC;
const COLOR_ATTACHMENT29                            = 0x8CFD;
const COLOR_ATTACHMENT30                            = 0x8CFE;
const COLOR_ATTACHMENT31                            = 0x8CFF;
const DEPTH_ATTACHMENT                              = 0x8D00;
const STENCIL_ATTACHMENT                            = 0x8D20;
const FRAMEBUFFER                                   = 0x8D40;
const RENDERBUFFER                                  = 0x8D41;
const RENDERBUFFER_WIDTH                            = 0x8D42;
const RENDERBUFFER_HEIGHT                           = 0x8D43;
const RENDERBUFFER_INTERNAL_FORMAT                  = 0x8D44;
const STENCIL_INDEX1                                = 0x8D46;
const STENCIL_INDEX4                                = 0x8D47;
const STENCIL_INDEX8                                = 0x8D48;
const STENCIL_INDEX16                               = 0x8D49;
const RENDERBUFFER_RED_SIZE                         = 0x8D50;
const RENDERBUFFER_GREEN_SIZE                       = 0x8D51;
const RENDERBUFFER_BLUE_SIZE                        = 0x8D52;
const RENDERBUFFER_ALPHA_SIZE                       = 0x8D53;
const RENDERBUFFER_DEPTH_SIZE                       = 0x8D54;
const RENDERBUFFER_STENCIL_SIZE                     = 0x8D55;
const FRAMEBUFFER_INCOMPLETE_MULTISAMPLE            = 0x8D56;
const MAX_SAMPLES                                   = 0x8D57;
const FRAMEBUFFER_SRGB                              = 0x8DB9;
const HALF_FLOAT                                    = 0x140B;
const MAP_READ_BIT                                  = 0x0001;
const MAP_WRITE_BIT                                 = 0x0002;
const MAP_INVALIDATE_RANGE_BIT                      = 0x0004;
const MAP_INVALIDATE_BUFFER_BIT                     = 0x0008;
const MAP_FLUSH_EXPLICIT_BIT                        = 0x0010;
const MAP_UNSYNCHRONIZED_BIT                        = 0x0020;
const COMPRESSED_RED_RGTC1                          = 0x8DBB;
const COMPRESSED_SIGNED_RED_RGTC1                   = 0x8DBC;
const COMPRESSED_RG_RGTC2                           = 0x8DBD;
const COMPRESSED_SIGNED_RG_RGTC2                    = 0x8DBE;
const RG                                            = 0x8227;
const RG_INTEGER                                    = 0x8228;
const R8                                            = 0x8229;
const R16                                           = 0x822A;
const RG8                                           = 0x822B;
const RG16                                          = 0x822C;
const R16F                                          = 0x822D;
const R32F                                          = 0x822E;
const RG16F                                         = 0x822F;
const RG32F                                         = 0x8230;
const R8I                                           = 0x8231;
const R8UI                                          = 0x8232;
const R16I                                          = 0x8233;
const R16UI                                         = 0x8234;
const R32I                                          = 0x8235;
const R32UI                                         = 0x8236;
const RG8I                                          = 0x8237;
const RG8UI                                         = 0x8238;
const RG16I                                         = 0x8239;
const RG16UI                                        = 0x823A;
const RG32I                                         = 0x823B;
const RG32UI                                        = 0x823C;
const VERTEX_ARRAY_BINDING                          = 0x85B5;

alias PFNglColorMaskiPROC = fn void (Uint index, Boolean r, Boolean g, Boolean b, Boolean a);
PFNglColorMaskiPROC colorMaski = null;
alias PFNglGetBooleani_vPROC = fn void (Enum target, Uint index, Boolean* data);
PFNglGetBooleani_vPROC getBooleani_v = null;
alias PFNglGetIntegeri_vPROC = fn void (Enum target, Uint index, Int* data);
PFNglGetIntegeri_vPROC getIntegeri_v = null;
alias PFNglEnableiPROC = fn void (Enum target, Uint index);
PFNglEnableiPROC enablei = null;
alias PFNglDisableiPROC = fn void (Enum target, Uint index);
PFNglDisableiPROC disablei = null;
alias PFNglIsEnablediPROC = fn Boolean (Enum target, Uint index);
PFNglIsEnablediPROC isEnabledi = null;
alias PFNglBeginTransformFeedbackPROC = fn void (Enum primitiveMode);
PFNglBeginTransformFeedbackPROC beginTransformFeedback = null;
alias PFNglEndTransformFeedbackPROC = fn void ();
PFNglEndTransformFeedbackPROC endTransformFeedback = null;
alias PFNglBindBufferRangePROC = fn void (Enum target, Uint index, Uint buffer, Intptr offset, Sizeiptr size);
PFNglBindBufferRangePROC bindBufferRange = null;
alias PFNglBindBufferBasePROC = fn void (Enum target, Uint index, Uint buffer);
PFNglBindBufferBasePROC bindBufferBase = null;
alias PFNglTransformFeedbackVaryingsPROC = fn void (Uint program, Sizei count, ZString* varyings, Enum bufferMode);
PFNglTransformFeedbackVaryingsPROC transformFeedbackVaryings = null;
alias PFNglGetTransformFeedbackVaryingPROC = fn void (Uint program, Uint index, Sizei bufSize, Sizei* length, Sizei* size, Enum* type, ZString name);
PFNglGetTransformFeedbackVaryingPROC getTransformFeedbackVarying = null;
alias PFNglClampColorPROC = fn void (Enum target, Enum clamp);
PFNglClampColorPROC clampColor = null;
alias PFNglBeginConditionalRenderPROC = fn void (Uint id, Enum mode);
PFNglBeginConditionalRenderPROC beginConditionalRender = null;
alias PFNglEndConditionalRenderPROC = fn void ();
PFNglEndConditionalRenderPROC endConditionalRender = null;
alias PFNglVertexAttribIPointerPROC = fn void (Uint index, Int size, Enum type, Sizei stride, void* pointer);
PFNglVertexAttribIPointerPROC vertexAttribIPointer = null;
alias PFNglGetVertexAttribIivPROC = fn void (Uint index, Enum pname, Int* params);
PFNglGetVertexAttribIivPROC getVertexAttribIiv = null;
alias PFNglGetVertexAttribIuivPROC = fn void (Uint index, Enum pname, Uint* params);
PFNglGetVertexAttribIuivPROC getVertexAttribIuiv = null;
alias PFNglVertexAttribI1iPROC = fn void (Uint index, Int x);
PFNglVertexAttribI1iPROC vertexAttribI1i = null;
alias PFNglVertexAttribI2iPROC = fn void (Uint index, Int x, Int y);
PFNglVertexAttribI2iPROC vertexAttribI2i = null;
alias PFNglVertexAttribI3iPROC = fn void (Uint index, Int x, Int y, Int z);
PFNglVertexAttribI3iPROC vertexAttribI3i = null;
alias PFNglVertexAttribI4iPROC = fn void (Uint index, Int x, Int y, Int z, Int w);
PFNglVertexAttribI4iPROC vertexAttribI4i = null;
alias PFNglVertexAttribI1uiPROC = fn void (Uint index, Uint x);
PFNglVertexAttribI1uiPROC vertexAttribI1ui = null;
alias PFNglVertexAttribI2uiPROC = fn void (Uint index, Uint x, Uint y);
PFNglVertexAttribI2uiPROC vertexAttribI2ui = null;
alias PFNglVertexAttribI3uiPROC = fn void (Uint index, Uint x, Uint y, Uint z);
PFNglVertexAttribI3uiPROC vertexAttribI3ui = null;
alias PFNglVertexAttribI4uiPROC = fn void (Uint index, Uint x, Uint y, Uint z, Uint w);
PFNglVertexAttribI4uiPROC vertexAttribI4ui = null;
alias PFNglVertexAttribI1ivPROC = fn void (Uint index, Int* v);
PFNglVertexAttribI1ivPROC vertexAttribI1iv = null;
alias PFNglVertexAttribI2ivPROC = fn void (Uint index, Int* v);
PFNglVertexAttribI2ivPROC vertexAttribI2iv = null;
alias PFNglVertexAttribI3ivPROC = fn void (Uint index, Int* v);
PFNglVertexAttribI3ivPROC vertexAttribI3iv = null;
alias PFNglVertexAttribI4ivPROC = fn void (Uint index, Int* v);
PFNglVertexAttribI4ivPROC vertexAttribI4iv = null;
alias PFNglVertexAttribI1uivPROC = fn void (Uint index, Uint* v);
PFNglVertexAttribI1uivPROC vertexAttribI1uiv = null;
alias PFNglVertexAttribI2uivPROC = fn void (Uint index, Uint* v);
PFNglVertexAttribI2uivPROC vertexAttribI2uiv = null;
alias PFNglVertexAttribI3uivPROC = fn void (Uint index, Uint* v);
PFNglVertexAttribI3uivPROC vertexAttribI3uiv = null;
alias PFNglVertexAttribI4uivPROC = fn void (Uint index, Uint* v);
PFNglVertexAttribI4uivPROC vertexAttribI4uiv = null;
alias PFNglVertexAttribI4bvPROC = fn void (Uint index, Byte* v);
PFNglVertexAttribI4bvPROC vertexAttribI4bv = null;
alias PFNglVertexAttribI4svPROC = fn void (Uint index, Short* v);
PFNglVertexAttribI4svPROC vertexAttribI4sv = null;
alias PFNglVertexAttribI4ubvPROC = fn void (Uint index, Ubyte* v);
PFNglVertexAttribI4ubvPROC vertexAttribI4ubv = null;
alias PFNglVertexAttribI4usvPROC = fn void (Uint index, UShort* v);
PFNglVertexAttribI4usvPROC vertexAttribI4usv = null;
alias PFNglGetUniformuivPROC = fn void (Uint program, Int location, Uint* params);
PFNglGetUniformuivPROC getUniformuiv = null;
alias PFNglBindFragDataLocationPROC = fn void (Uint program, Uint color, ZString name);
PFNglBindFragDataLocationPROC bindFragDataLocation = null;
alias PFNglGetFragDataLocationPROC = fn Int (Uint program, ZString name);
PFNglGetFragDataLocationPROC getFragDataLocation = null;
alias PFNglUniform1uiPROC = fn void (Int location, Uint v0);
PFNglUniform1uiPROC uniform1ui = null;
alias PFNglUniform2uiPROC = fn void (Int location, Uint v0, Uint v1);
PFNglUniform2uiPROC uniform2ui = null;
alias PFNglUniform3uiPROC = fn void (Int location, Uint v0, Uint v1, Uint v2);
PFNglUniform3uiPROC uniform3ui = null;
alias PFNglUniform4uiPROC = fn void (Int location, Uint v0, Uint v1, Uint v2, Uint v3);
PFNglUniform4uiPROC uniform4ui = null;
alias PFNglUniform1uivPROC = fn void (Int location, Sizei count, Uint* value);
PFNglUniform1uivPROC uniform1uiv = null;
alias PFNglUniform2uivPROC = fn void (Int location, Sizei count, Uint* value);
PFNglUniform2uivPROC uniform2uiv = null;
alias PFNglUniform3uivPROC = fn void (Int location, Sizei count, Uint* value);
PFNglUniform3uivPROC uniform3uiv = null;
alias PFNglUniform4uivPROC = fn void (Int location, Sizei count, Uint* value);
PFNglUniform4uivPROC uniform4uiv = null;
alias PFNglTexParameterIivPROC = fn void (Enum target, Enum pname, Int* params);
PFNglTexParameterIivPROC texParameterIiv = null;
alias PFNglTexParameterIuivPROC = fn void (Enum target, Enum pname, Uint* params);
PFNglTexParameterIuivPROC texParameterIuiv = null;
alias PFNglGetTexParameterIivPROC = fn void (Enum target, Enum pname, Int* params);
PFNglGetTexParameterIivPROC getTexParameterIiv = null;
alias PFNglGetTexParameterIuivPROC = fn void (Enum target, Enum pname, Uint* params);
PFNglGetTexParameterIuivPROC getTexParameterIuiv = null;
alias PFNglClearBufferivPROC = fn void (Enum buffer, Int drawbuffer, Int* value);
PFNglClearBufferivPROC clearBufferiv = null;
alias PFNglClearBufferuivPROC = fn void (Enum buffer, Int drawbuffer, Uint* value);
PFNglClearBufferuivPROC clearBufferuiv = null;
alias PFNglClearBufferfvPROC = fn void (Enum buffer, Int drawbuffer, Float* value);
PFNglClearBufferfvPROC clearBufferfv = null;
alias PFNglClearBufferfiPROC = fn void (Enum buffer, Int drawbuffer, Float depth, Int stencil);
PFNglClearBufferfiPROC clearBufferfi = null;
alias PFNglGetStringiPROC = fn Ubyte*(Enum name, Uint index);
PFNglGetStringiPROC getStringi = null;
alias PFNglIsRenderbufferPROC = fn Boolean (Uint renderbuffer);
PFNglIsRenderbufferPROC isRenderbuffer = null;
alias PFNglBindRenderbufferPROC = fn void (Enum target, Uint renderbuffer);
PFNglBindRenderbufferPROC bindRenderbuffer = null;
alias PFNglDeleteRenderbuffersPROC = fn void (Sizei n, Uint* renderbuffers);
PFNglDeleteRenderbuffersPROC deleteRenderbuffers = null;
alias PFNglGenRenderbuffersPROC = fn void (Sizei n, Uint* renderbuffers);
PFNglGenRenderbuffersPROC genRenderbuffers = null;
alias PFNglRenderbufferStoragePROC = fn void (Enum target, Enum internalformat, Sizei width, Sizei height);
PFNglRenderbufferStoragePROC renderbufferStorage = null;
alias PFNglGetRenderbufferParameterivPROC = fn void (Enum target, Enum pname, Int* params);
PFNglGetRenderbufferParameterivPROC getRenderbufferParameteriv = null;
alias PFNglIsFramebufferPROC = fn Boolean (Uint framebuffer);
PFNglIsFramebufferPROC isFramebuffer = null;
alias PFNglBindFramebufferPROC = fn void (Enum target, Uint framebuffer);
PFNglBindFramebufferPROC bindFramebuffer = null;
alias PFNglDeleteFramebuffersPROC = fn void (Sizei n, Uint* framebuffers);
PFNglDeleteFramebuffersPROC deleteFramebuffers = null;
alias PFNglGenFramebuffersPROC = fn void (Sizei n, Uint* framebuffers);
PFNglGenFramebuffersPROC genFramebuffers = null;
alias PFNglCheckFramebufferStatusPROC = fn Enum (Enum target);
PFNglCheckFramebufferStatusPROC checkFramebufferStatus = null;
alias PFNglFramebufferTexture1DPROC = fn void (Enum target, Enum attachment, Enum textarget, Uint texture, Int level);
PFNglFramebufferTexture1DPROC framebufferTexture1D = null;
alias PFNglFramebufferTexture2DPROC = fn void (Enum target, Enum attachment, Enum textarget, Uint texture, Int level);
PFNglFramebufferTexture2DPROC framebufferTexture2D = null;
alias PFNglFramebufferTexture3DPROC = fn void (Enum target, Enum attachment, Enum textarget, Uint texture, Int level, Int zoffset);
PFNglFramebufferTexture3DPROC framebufferTexture3D = null;
alias PFNglFramebufferRenderbufferPROC = fn void (Enum target, Enum attachment, Enum renderbuffertarget, Uint renderbuffer);
PFNglFramebufferRenderbufferPROC framebufferRenderbuffer = null;
alias PFNglGetFramebufferAttachmentParameterivPROC = fn void (Enum target, Enum attachment, Enum pname, Int* params);
PFNglGetFramebufferAttachmentParameterivPROC getFramebufferAttachmentParameteriv = null;
alias PFNglGenerateMipmapPROC = fn void (Enum target);
PFNglGenerateMipmapPROC generateMipmap = null;
alias PFNglBlitFramebufferPROC = fn void (Int srcX0, Int srcY0, Int srcX1, Int srcY1, Int dstX0, Int dstY0, Int dstX1, Int dstY1, Bitfield mask, Enum filter);
PFNglBlitFramebufferPROC blitFramebuffer = null;
alias PFNglRenderbufferStorageMultisamplePROC = fn void (Enum target, Sizei samples, Enum internalformat, Sizei width, Sizei height);
PFNglRenderbufferStorageMultisamplePROC renderbufferStorageMultisample = null;
alias PFNglFramebufferTextureLayerPROC = fn void (Enum target, Enum attachment, Uint texture, Int level, Int layer);
PFNglFramebufferTextureLayerPROC framebufferTextureLayer = null;
alias PFNglMapBufferRangePROC  = fn void*(Enum target, Intptr offset, Sizeiptr length, Bitfield access);
PFNglMapBufferRangePROC  mapBufferRangeP = null;
alias PFNglFlushMappedBufferRangePROC = fn void (Enum target, Intptr offset, Sizeiptr length);
PFNglFlushMappedBufferRangePROC flushMappedBufferRange = null;
alias PFNglBindVertexArrayPROC = fn void (Uint array);
PFNglBindVertexArrayPROC bindVertexArray = null;
alias PFNglDeleteVertexArraysPROC = fn void (Sizei n, Uint* arrays);
PFNglDeleteVertexArraysPROC deleteVertexArrays = null;
alias PFNglGenVertexArraysPROC = fn void (Sizei n, Uint* arrays);
PFNglGenVertexArraysPROC genVertexArrays = null;
alias PFNglIsVertexArrayPROC = fn Boolean (Uint array);
PFNglIsVertexArrayPROC isVertexArray = null;


fn void load_gl_3_0(LoadFn load)
{
    colorMaski = load("glColorMaski");
    getBooleani_v = load("glGetBooleani_v");
    getIntegeri_v = load("glGetIntegeri_v");
    enablei = load("glEnablei");
    disablei = load("glDisablei");
    isEnabledi = load("glIsEnabledi");
    beginTransformFeedback = load("glBeginTransformFeedback");
    endTransformFeedback = load("glEndTransformFeedback");
    bindBufferRange = load("glBindBufferRange");
    bindBufferBase = load("glBindBufferBase");
    transformFeedbackVaryings = load("glTransformFeedbackVaryings");
    getTransformFeedbackVarying = load("glGetTransformFeedbackVarying");
    clampColor = load("glClampColor");
    beginConditionalRender = load("glBeginConditionalRender");
    endConditionalRender = load("glEndConditionalRender");
    vertexAttribIPointer = load("glVertexAttribIPointer");
    getVertexAttribIiv = load("glGetVertexAttribIiv");
    getVertexAttribIuiv = load("glGetVertexAttribIuiv");
    vertexAttribI1i = load("glVertexAttribI1i");
    vertexAttribI2i = load("glVertexAttribI2i");
    vertexAttribI3i = load("glVertexAttribI3i");
    vertexAttribI4i = load("glVertexAttribI4i");
    vertexAttribI1ui = load("glVertexAttribI1ui");
    vertexAttribI2ui = load("glVertexAttribI2ui");
    vertexAttribI3ui = load("glVertexAttribI3ui");
    vertexAttribI4ui = load("glVertexAttribI4ui");
    vertexAttribI1iv = load("glVertexAttribI1iv");
    vertexAttribI2iv = load("glVertexAttribI2iv");
    vertexAttribI3iv = load("glVertexAttribI3iv");
    vertexAttribI4iv = load("glVertexAttribI4iv");
    vertexAttribI1uiv = load("glVertexAttribI1uiv");
    vertexAttribI2uiv = load("glVertexAttribI2uiv");
    vertexAttribI3uiv = load("glVertexAttribI3uiv");
    vertexAttribI4uiv = load("glVertexAttribI4uiv");
    vertexAttribI4bv = load("glVertexAttribI4bv");
    vertexAttribI4sv = load("glVertexAttribI4sv");
    vertexAttribI4ubv = load("glVertexAttribI4ubv");
    vertexAttribI4usv = load("glVertexAttribI4usv");
    getUniformuiv = load("glGetUniformuiv");
    bindFragDataLocation = load("glBindFragDataLocation");
    getFragDataLocation = load("glGetFragDataLocation");
    uniform1ui = load("glUniform1ui");
    uniform2ui = load("glUniform2ui");
    uniform3ui = load("glUniform3ui");
    uniform4ui = load("glUniform4ui");
    uniform1uiv = load("glUniform1uiv");
    uniform2uiv = load("glUniform2uiv");
    uniform3uiv = load("glUniform3uiv");
    uniform4uiv = load("glUniform4uiv");
    texParameterIiv = load("glTexParameterIiv");
    texParameterIuiv = load("glTexParameterIuiv");
    getTexParameterIiv = load("glGetTexParameterIiv");
    getTexParameterIuiv = load("glGetTexParameterIuiv");
    clearBufferiv = load("glClearBufferiv");
    clearBufferuiv = load("glClearBufferuiv");
    clearBufferfv = load("glClearBufferfv");
    clearBufferfi = load("glClearBufferfi");
    getStringi = load("glGetStringi");
    isRenderbuffer = load("glIsRenderbuffer");
    bindRenderbuffer = load("glBindRenderbuffer");
    deleteRenderbuffers = load("glDeleteRenderbuffers");
    genRenderbuffers = load("glGenRenderbuffers");
    renderbufferStorage = load("glRenderbufferStorage");
    getRenderbufferParameteriv = load("glGetRenderbufferParameteriv");
    isFramebuffer = load("glIsFramebuffer");
    bindFramebuffer = load("glBindFramebuffer");
    deleteFramebuffers = load("glDeleteFramebuffers");
    genFramebuffers = load("glGenFramebuffers");
    checkFramebufferStatus = load("glCheckFramebufferStatus");
    framebufferTexture1D = load("glFramebufferTexture1D");
    framebufferTexture2D = load("glFramebufferTexture2D");
    framebufferTexture3D = load("glFramebufferTexture3D");
    framebufferRenderbuffer = load("glFramebufferRenderbuffer");
    getFramebufferAttachmentParameteriv = load("glGetFramebufferAttachmentParameteriv");
    generateMipmap = load("glGenerateMipmap");
    blitFramebuffer = load("glBlitFramebuffer");
    renderbufferStorageMultisample = load("glRenderbufferStorageMultisample");
    framebufferTextureLayer = load("glFramebufferTextureLayer");
    mapBufferRangeP = load("glMapBufferRangeP");
    flushMappedBufferRange = load("glFlushMappedBufferRange");
    bindVertexArray = load("glBindVertexArray");
    deleteVertexArrays = load("glDeleteVertexArrays");
    genVertexArrays = load("glGenVertexArrays");
    isVertexArray = load("glIsVertexArray");
}

module opengl::gl @if(opengl::version() >= 31);
import opengl;

const SAMPLER_2D_RECT                             = 0x8B63;
const SAMPLER_2D_RECT_SHADOW                      = 0x8B64;
const SAMPLER_BUFFER                              = 0x8DC2;
const INT_SAMPLER_2D_RECT                         = 0x8DCD;
const INT_SAMPLER_BUFFER                          = 0x8DD0;
const UNSIGNED_INT_SAMPLER_2D_RECT                = 0x8DD5;
const UNSIGNED_INT_SAMPLER_BUFFER                 = 0x8DD8;
const TEXTURE_BUFFER                              = 0x8C2A;
const MAX_TEXTURE_BUFFER_SIZE                     = 0x8C2B;
const TEXTURE_BINDING_BUFFER                      = 0x8C2C;
const TEXTURE_BUFFER_DATA_STORE_BINDING           = 0x8C2D;
const TEXTURE_RECTANGLE                           = 0x84F5;
const TEXTURE_BINDING_RECTANGLE                   = 0x84F6;
const PROXY_TEXTURE_RECTANGLE                     = 0x84F7;
const MAX_RECTANGLE_TEXTURE_SIZE                  = 0x84F8;
const R8_SNORM                                    = 0x8F94;
const RG8_SNORM                                   = 0x8F95;
const RGB8_SNORM                                  = 0x8F96;
const RGBA8_SNORM                                 = 0x8F97;
const R16_SNORM                                   = 0x8F98;
const RG16_SNORM                                  = 0x8F99;
const RGB16_SNORM                                 = 0x8F9A;
const RGBA16_SNORM                                = 0x8F9B;
const SIGNED_NORMALIZED                           = 0x8F9C;
const PRIMITIVE_RESTART                           = 0x8F9D;
const PRIMITIVE_RESTART_INDEX                     = 0x8F9E;
const COPY_READ_BUFFER                            = 0x8F36;
const COPY_WRITE_BUFFER                           = 0x8F37;
const UNIFORM_BUFFER                              = 0x8A11;
const UNIFORM_BUFFER_BINDING                      = 0x8A28;
const UNIFORM_BUFFER_START                        = 0x8A29;
const UNIFORM_BUFFER_SIZE                         = 0x8A2A;
const MAX_VERTEX_UNIFORM_BLOCKS                   = 0x8A2B;
const MAX_GEOMETRY_UNIFORM_BLOCKS                 = 0x8A2C;
const MAX_FRAGMENT_UNIFORM_BLOCKS                 = 0x8A2D;
const MAX_COMBINED_UNIFORM_BLOCKS                 = 0x8A2E;
const MAX_UNIFORM_BUFFER_BINDINGS                 = 0x8A2F;
const MAX_UNIFORM_BLOCK_SIZE                      = 0x8A30;
const MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS      = 0x8A31;
const MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS    = 0x8A32;
const MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS    = 0x8A33;
const UNIFORM_BUFFER_OFFSET_ALIGNMENT             = 0x8A34;
const ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH        = 0x8A35;
const ACTIVE_UNIFORM_BLOCKS                       = 0x8A36;
const UNIFORM_TYPE                                = 0x8A37;
const UNIFORM_SIZE                                = 0x8A38;
const UNIFORM_NAME_LENGTH                         = 0x8A39;
const UNIFORM_BLOCK_INDEX                         = 0x8A3A;
const UNIFORM_OFFSET                              = 0x8A3B;
const UNIFORM_ARRAY_STRIDE                        = 0x8A3C;
const UNIFORM_MATRIX_STRIDE                       = 0x8A3D;
const UNIFORM_IS_ROW_MAJOR                        = 0x8A3E;
const UNIFORM_BLOCK_BINDING                       = 0x8A3F;
const UNIFORM_BLOCK_DATA_SIZE                     = 0x8A40;
const UNIFORM_BLOCK_NAME_LENGTH                   = 0x8A41;
const UNIFORM_BLOCK_ACTIVE_UNIFORMS               = 0x8A42;
const UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES        = 0x8A43;
const UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER   = 0x8A44;
const UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER = 0x8A45;
const UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER = 0x8A46;
const INVALID_INDEX                               = 0xFFFFFFFFu;

alias PFNglDrawArraysInstancedPROC = fn void (Enum mode, Int first, Sizei count, Sizei instancecount);
PFNglDrawArraysInstancedPROC drawArraysInstanced = null;
alias PFNglDrawElementsInstancedPROC = fn void (Enum mode, Sizei count, Enum type, void* indices, Sizei instancecount);
PFNglDrawElementsInstancedPROC drawElementsInstanced = null;
alias PFNglTexBufferPROC = fn void (Enum target, Enum internalformat, Uint buffer);
PFNglTexBufferPROC texBuffer = null;
alias PFNglPrimitiveRestartIndexPROC = fn void (Uint index);
PFNglPrimitiveRestartIndexPROC primitiveRestartIndex = null;
alias PFNglCopyBufferSubDataPROC = fn void (Enum readTarget, Enum writeTarget, Intptr readOffset, Intptr writeOffset, Sizeiptr size);
PFNglCopyBufferSubDataPROC copyBufferSubData = null;
alias PFNglGetUniformIndicesPROC = fn void (Uint program, Sizei uniformCount, ZString* uniformNames, Uint* uniformIndices);
PFNglGetUniformIndicesPROC getUniformIndices = null;
alias PFNglGetActiveUniformsivPROC = fn void (Uint program, Sizei uniformCount, Uint* uniformIndices, Enum pname, Int* params);
PFNglGetActiveUniformsivPROC getActiveUniformsiv = null;
alias PFNglGetActiveUniformNamePROC = fn void (Uint program, Uint uniformIndex, Sizei bufSize, Sizei* length, ZString uniformName);
PFNglGetActiveUniformNamePROC getActiveUniformName = null;
alias PFNglGetUniformBlockIndexPROC = fn Uint (Uint program, ZString uniformBlockName);
PFNglGetUniformBlockIndexPROC getUniformBlockIndex = null;
alias PFNglGetActiveUniformBlockivPROC = fn void (Uint program, Uint uniformBlockIndex, Enum pname, Int* params);
PFNglGetActiveUniformBlockivPROC getActiveUniformBlockiv = null;
alias PFNglGetActiveUniformBlockNamePROC = fn void (Uint program, Uint uniformBlockIndex, Sizei bufSize, Sizei* length, ZString uniformBlockName);
PFNglGetActiveUniformBlockNamePROC getActiveUniformBlockName = null;
alias PFNglUniformBlockBindingPROC = fn void (Uint program, Uint uniformBlockIndex, Uint uniformBlockBinding);
PFNglUniformBlockBindingPROC uniformBlockBinding = null;


fn void load_gl_3_1(LoadFn load)
{
    drawArraysInstanced = load("glDrawArraysInstanced");
    drawElementsInstanced = load("glDrawElementsInstanced");
    texBuffer = load("glTexBuffer");
    primitiveRestartIndex = load("glPrimitiveRestartIndex");
    copyBufferSubData = load("glCopyBufferSubData");
    getUniformIndices = load("glGetUniformIndices");
    getActiveUniformsiv = load("glGetActiveUniformsiv");
    getActiveUniformName = load("glGetActiveUniformName");
    getUniformBlockIndex = load("glGetUniformBlockIndex");
    getActiveUniformBlockiv = load("glGetActiveUniformBlockiv");
    getActiveUniformBlockName = load("glGetActiveUniformBlockName");
    uniformBlockBinding = load("glUniformBlockBinding");
}

module opengl::gl @if(opengl::version() >= 32);
import opengl;

alias Sync = void*;
alias Uint64 = ulong;
alias Int64 = long;

const CONTEXT_CORE_PROFILE_BIT                  = 0x00000001;
const CONTEXT_COMPATIBILITY_PROFILE_BIT         = 0x00000002;
const LINES_ADJACENCY                           = 0x000A;
const LINE_STRIP_ADJACENCY                      = 0x000B;
const TRIANGLES_ADJACENCY                       = 0x000C;
const TRIANGLE_STRIP_ADJACENCY                  = 0x000D;
const PROGRAM_POINT_SIZE                        = 0x8642;
const MAX_GEOMETRY_TEXTURE_IMAGE_UNITS          = 0x8C29;
const FRAMEBUFFER_ATTACHMENT_LAYERED            = 0x8DA7;
const FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS      = 0x8DA8;
const GEOMETRY_SHADER                           = 0x8DD9;
const GEOMETRY_VERTICES_OUT                     = 0x8916;
const GEOMETRY_INPUT_TYPE                       = 0x8917;
const GEOMETRY_OUTPUT_TYPE                      = 0x8918;
const MAX_GEOMETRY_UNIFORM_COMPONENTS           = 0x8DDF;
const MAX_GEOMETRY_OUTPUT_VERTICES              = 0x8DE0;
const MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS      = 0x8DE1;
const MAX_VERTEX_OUTPUT_COMPONENTS              = 0x9122;
const MAX_GEOMETRY_INPUT_COMPONENTS             = 0x9123;
const MAX_GEOMETRY_OUTPUT_COMPONENTS            = 0x9124;
const MAX_FRAGMENT_INPUT_COMPONENTS             = 0x9125;
const CONTEXT_PROFILE_MASK                      = 0x9126;
const DEPTH_CLAMP                               = 0x864F;
const QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION  = 0x8E4C;
const FIRST_VERTEX_CONVENTION                   = 0x8E4D;
const LAST_VERTEX_CONVENTION                    = 0x8E4E;
const PROVOKING_VERTEX                          = 0x8E4F;
const TEXTURE_CUBE_MAP_SEAMLESS                 = 0x884F;
const MAX_SERVER_WAIT_TIMEOUT                   = 0x9111;
const OBJECT_TYPE                               = 0x9112;
const SYNC_CONDITION                            = 0x9113;
const SYNC_STATUS                               = 0x9114;
const SYNC_FLAGS                                = 0x9115;
const SYNC_FENCE                                = 0x9116;
const SYNC_GPU_COMMANDS_COMPLETE                = 0x9117;
const UNSIGNALED                                = 0x9118;
const SIGNALED                                  = 0x9119;
const ALREADY_SIGNALED                          = 0x911A;
const TIMEOUT_EXPIRED                           = 0x911B;
const CONDITION_SATISFIED                       = 0x911C;
const WAIT_FAILED                               = 0x911D;
const TIMEOUT_IGNORED                           = 0xFFFFFFFFFFFFFFFF;
const SYNC_FLUSH_COMMANDS_BIT                   = 0x00000001;
const SAMPLE_POSITION                           = 0x8E50;
const SAMPLE_MASK                               = 0x8E51;
const SAMPLE_MASK_VALUE                         = 0x8E52;
const MAX_SAMPLE_MASK_WORDS                     = 0x8E59;
const TEXTURE_2D_MULTISAMPLE                    = 0x9100;
const PROXY_TEXTURE_2D_MULTISAMPLE              = 0x9101;
const TEXTURE_2D_MULTISAMPLE_ARRAY              = 0x9102;
const PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY        = 0x9103;
const TEXTURE_BINDING_2D_MULTISAMPLE            = 0x9104;
const TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY      = 0x9105;
const TEXTURE_SAMPLES                           = 0x9106;
const TEXTURE_FIXED_SAMPLE_LOCATIONS            = 0x9107;
const SAMPLER_2D_MULTISAMPLE                    = 0x9108;
const INT_SAMPLER_2D_MULTISAMPLE                = 0x9109;
const UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE       = 0x910A;
const SAMPLER_2D_MULTISAMPLE_ARRAY              = 0x910B;
const INT_SAMPLER_2D_MULTISAMPLE_ARRAY          = 0x910C;
const UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = 0x910D;
const MAX_COLOR_TEXTURE_SAMPLES                 = 0x910E;
const MAX_DEPTH_TEXTURE_SAMPLES                 = 0x910F;
const MAX_INTEGER_SAMPLES                       = 0x9110;

alias PFNglDrawElementsBaseVertexPROC = fn void (Enum mode, Sizei count, Enum type, void* indices, Int basevertex);
PFNglDrawElementsBaseVertexPROC drawElementsBaseVertex = null;
alias PFNglDrawRangeElementsBaseVertexPROC = fn void (Enum mode, Uint start, Uint end, Sizei count, Enum type, void* indices, Int basevertex);
PFNglDrawRangeElementsBaseVertexPROC drawRangeElementsBaseVertex = null;
alias PFNglDrawElementsInstancedBaseVertexPROC = fn void (Enum mode, Sizei count, Enum type, void* indices, Sizei instancecount, Int basevertex);
PFNglDrawElementsInstancedBaseVertexPROC drawElementsInstancedBaseVertex = null;
alias PFNglMultiDrawElementsBaseVertexPROC = fn void (Enum mode, Sizei* count, Enum type, void* *indices, Sizei drawcount, Int* basevertex);
PFNglMultiDrawElementsBaseVertexPROC multiDrawElementsBaseVertex = null;
alias PFNglProvokingVertexPROC = fn void (Enum mode);
PFNglProvokingVertexPROC provokingVertex = null;
alias PFNglFenceSyncPROC = fn Sync (Enum condition, Bitfield flags);
PFNglFenceSyncPROC fenceSync = null;
alias PFNglIsSyncPROC = fn Boolean (Sync sync);
PFNglIsSyncPROC isSync = null;
alias PFNglDeleteSyncPROC = fn void (Sync sync);
PFNglDeleteSyncPROC deleteSync = null;
alias PFNglClientWaitSyncPROC = fn Enum (Sync sync, Bitfield flags, Uint64 timeout);
PFNglClientWaitSyncPROC clientWaitSync = null;
alias PFNglWaitSyncPROC = fn void (Sync sync, Bitfield flags, Uint64 timeout);
PFNglWaitSyncPROC waitSync = null;
alias PFNglGetInteger64vPROC = fn void (Enum pname, Int64* data);
PFNglGetInteger64vPROC getInteger64v = null;
alias PFNglGetSyncivPROC = fn void (Sync sync, Enum pname, Sizei count, Sizei* length, Int* values);
PFNglGetSyncivPROC getSynciv = null;
alias PFNglGetInteger64i_vPROC = fn void (Enum target, Uint index, Int64* data);
PFNglGetInteger64i_vPROC getInteger64i_v = null;
alias PFNglGetBufferParameteri64vPROC = fn void (Enum target, Enum pname, Int64* params);
PFNglGetBufferParameteri64vPROC getBufferParameteri64v = null;
alias PFNglFramebufferTexturePROC = fn void (Enum target, Enum attachment, Uint texture, Int level);
PFNglFramebufferTexturePROC framebufferTexture = null;
alias PFNglTexImage2DMultisamplePROC = fn void (Enum target, Sizei samples, Enum internalformat, Sizei width, Sizei height, Boolean fixedsamplelocations);
PFNglTexImage2DMultisamplePROC texImage2DMultisample = null;
alias PFNglTexImage3DMultisamplePROC = fn void (Enum target, Sizei samples, Enum internalformat, Sizei width, Sizei height, Sizei depth, Boolean fixedsamplelocations);
PFNglTexImage3DMultisamplePROC texImage3DMultisample = null;
alias PFNglGetMultisamplefvPROC = fn void (Enum pname, Uint index, Float* val);
PFNglGetMultisamplefvPROC getMultisamplefv = null;
alias PFNglSampleMaskiPROC = fn void (Uint maskNumber, Bitfield mask);
PFNglSampleMaskiPROC sampleMaski = null;


fn void load_gl_3_2(LoadFn load)
{
    drawElementsBaseVertex = load("glDrawElementsBaseVertex");
    drawRangeElementsBaseVertex = load("glDrawRangeElementsBaseVertex");
    drawElementsInstancedBaseVertex = load("glDrawElementsInstancedBaseVertex");
    multiDrawElementsBaseVertex = load("glMultiDrawElementsBaseVertex");
    provokingVertex = load("glProvokingVertex");
    fenceSync = load("glFenceSync");
    isSync = load("glIsSync");
    deleteSync = load("glDeleteSync");
    clientWaitSync = load("glClientWaitSync");
    waitSync = load("glWaitSync");
    getInteger64v = load("glGetInteger64v");
    getSynciv = load("glGetSynciv");
    getInteger64i_v = load("glGetInteger64i_v");
    getBufferParameteri64v = load("glGetBufferParameteri64v");
    framebufferTexture = load("glFramebufferTexture");
    texImage2DMultisample = load("glTexImage2DMultisample");
    texImage3DMultisample = load("glTexImage3DMultisample");
    getMultisamplefv = load("glGetMultisamplefv");
    sampleMaski = load("glSampleMaski");
}

module opengl::gl @if(opengl::version() >= 33);
import opengl;

const VERTEX_ATTRIB_ARRAY_DIVISOR  = 0x88FE;
const SRC1_COLOR                   = 0x88F9;
const ONE_MINUS_SRC1_COLOR         = 0x88FA;
const ONE_MINUS_SRC1_ALPHA         = 0x88FB;
const MAX_DUAL_SOURCE_DRAW_BUFFERS = 0x88FC;
const ANY_SAMPLES_PASSED           = 0x8C2F;
const SAMPLER_BINDING              = 0x8919;
const RGB10_A2UI                   = 0x906F;
const TEXTURE_SWIZZLE_R            = 0x8E42;
const TEXTURE_SWIZZLE_G            = 0x8E43;
const TEXTURE_SWIZZLE_B            = 0x8E44;
const TEXTURE_SWIZZLE_A            = 0x8E45;
const TEXTURE_SWIZZLE_RGBA         = 0x8E46;
const TIME_ELAPSED                 = 0x88BF;
const TIMESTAMP                    = 0x8E28;
const INT_2_10_10_10_REV           = 0x8D9F;

alias PFNglBindFragDataLocationIndexedPROC = fn void (Uint program, Uint colorNumber, Uint index, ZString name);
PFNglBindFragDataLocationIndexedPROC bindFragDataLocationIndexed = null;
alias PFNglGetFragDataIndexPROC = fn Int (Uint program, ZString name);
PFNglGetFragDataIndexPROC getFragDataIndex = null;
alias PFNglGenSamplersPROC = fn void (Sizei count, Uint* samplers);
PFNglGenSamplersPROC genSamplers = null;
alias PFNglDeleteSamplersPROC = fn void (Sizei count, Uint* samplers);
PFNglDeleteSamplersPROC deleteSamplers = null;
alias PFNglIsSamplerPROC = fn Boolean (Uint sampler);
PFNglIsSamplerPROC isSampler = null;
alias PFNglBindSamplerPROC = fn void (Uint unit, Uint sampler);
PFNglBindSamplerPROC bindSampler = null;
alias PFNglSamplerParameteriPROC = fn void (Uint sampler, Enum pname, Int param);
PFNglSamplerParameteriPROC samplerParameteri = null;
alias PFNglSamplerParameterivPROC = fn void (Uint sampler, Enum pname, Int* param);
PFNglSamplerParameterivPROC samplerParameteriv = null;
alias PFNglSamplerParameterfPROC = fn void (Uint sampler, Enum pname, Float param);
PFNglSamplerParameterfPROC samplerParameterf = null;
alias PFNglSamplerParameterfvPROC = fn void (Uint sampler, Enum pname, Float* param);
PFNglSamplerParameterfvPROC samplerParameterfv = null;
alias PFNglSamplerParameterIivPROC = fn void (Uint sampler, Enum pname, Int* param);
PFNglSamplerParameterIivPROC samplerParameterIiv = null;
alias PFNglSamplerParameterIuivPROC = fn void (Uint sampler, Enum pname, Uint* param);
PFNglSamplerParameterIuivPROC samplerParameterIuiv = null;
alias PFNglGetSamplerParameterivPROC = fn void (Uint sampler, Enum pname, Int* params);
PFNglGetSamplerParameterivPROC getSamplerParameteriv = null;
alias PFNglGetSamplerParameterIivPROC = fn void (Uint sampler, Enum pname, Int* params);
PFNglGetSamplerParameterIivPROC getSamplerParameterIiv = null;
alias PFNglGetSamplerParameterfvPROC = fn void (Uint sampler, Enum pname, Float* params);
PFNglGetSamplerParameterfvPROC getSamplerParameterfv = null;
alias PFNglGetSamplerParameterIuivPROC = fn void (Uint sampler, Enum pname, Uint* params);
PFNglGetSamplerParameterIuivPROC getSamplerParameterIuiv = null;
alias PFNglQueryCounterPROC = fn void (Uint id, Enum target);
PFNglQueryCounterPROC queryCounter = null;
alias PFNglGetQueryObjecti64vPROC = fn void (Uint id, Enum pname, Int64* params);
PFNglGetQueryObjecti64vPROC getQueryObjecti64v = null;
alias PFNglGetQueryObjectui64vPROC = fn void (Uint id, Enum pname, Uint64* params);
PFNglGetQueryObjectui64vPROC getQueryObjectui64v = null;
alias PFNglVertexAttribDivisorPROC = fn void (Uint index, Uint divisor);
PFNglVertexAttribDivisorPROC vertexAttribDivisor = null;
alias PFNglVertexAttribP1uiPROC = fn void (Uint index, Enum type, Boolean normalized, Uint value);
PFNglVertexAttribP1uiPROC vertexAttribP1ui = null;
alias PFNglVertexAttribP1uivPROC = fn void (Uint index, Enum type, Boolean normalized, Uint* value);
PFNglVertexAttribP1uivPROC vertexAttribP1uiv = null;
alias PFNglVertexAttribP2uiPROC = fn void (Uint index, Enum type, Boolean normalized, Uint value);
PFNglVertexAttribP2uiPROC vertexAttribP2ui = null;
alias PFNglVertexAttribP2uivPROC = fn void (Uint index, Enum type, Boolean normalized, Uint* value);
PFNglVertexAttribP2uivPROC vertexAttribP2uiv = null;
alias PFNglVertexAttribP3uiPROC = fn void (Uint index, Enum type, Boolean normalized, Uint value);
PFNglVertexAttribP3uiPROC vertexAttribP3ui = null;
alias PFNglVertexAttribP3uivPROC = fn void (Uint index, Enum type, Boolean normalized, Uint* value);
PFNglVertexAttribP3uivPROC vertexAttribP3uiv = null;
alias PFNglVertexAttribP4uiPROC = fn void (Uint index, Enum type, Boolean normalized, Uint value);
PFNglVertexAttribP4uiPROC vertexAttribP4ui = null;
alias PFNglVertexAttribP4uivPROC = fn void (Uint index, Enum type, Boolean normalized, Uint* value);
PFNglVertexAttribP4uivPROC vertexAttribP4uiv = null;


fn void load_gl_3_3(LoadFn load)
{
    bindFragDataLocationIndexed = load("glBindFragDataLocationIndexed");
    getFragDataIndex = load("glGetFragDataIndex");
    genSamplers = load("glGenSamplers");
    deleteSamplers = load("glDeleteSamplers");
    isSampler = load("glIsSampler");
    bindSampler = load("glBindSampler");
    samplerParameteri = load("glSamplerParameteri");
    samplerParameteriv = load("glSamplerParameteriv");
    samplerParameterf = load("glSamplerParameterf");
    samplerParameterfv = load("glSamplerParameterfv");
    samplerParameterIiv = load("glSamplerParameterIiv");
    samplerParameterIuiv = load("glSamplerParameterIuiv");
    getSamplerParameteriv = load("glGetSamplerParameteriv");
    getSamplerParameterIiv = load("glGetSamplerParameterIiv");
    getSamplerParameterfv = load("glGetSamplerParameterfv");
    getSamplerParameterIuiv = load("glGetSamplerParameterIuiv");
    queryCounter = load("glQueryCounter");
    getQueryObjecti64v = load("glGetQueryObjecti64v");
    getQueryObjectui64v = load("glGetQueryObjectui64v");
    vertexAttribDivisor = load("glVertexAttribDivisor");
    vertexAttribP1ui = load("glVertexAttribP1ui");
    vertexAttribP1uiv = load("glVertexAttribP1uiv");
    vertexAttribP2ui = load("glVertexAttribP2ui");
    vertexAttribP2uiv = load("glVertexAttribP2uiv");
    vertexAttribP3ui = load("glVertexAttribP3ui");
    vertexAttribP3uiv = load("glVertexAttribP3uiv");
    vertexAttribP4ui = load("glVertexAttribP4ui");
    vertexAttribP4uiv = load("glVertexAttribP4uiv");
}

module opengl::gl @if(opengl::version() >= 40);
import opengl;

const SAMPLE_SHADING                                     = 0x8C36;
const MIN_SAMPLE_SHADING_VALUE                           = 0x8C37;
const MIN_PROGRAM_TEXTURE_GATHER_OFFSET                  = 0x8E5E;
const MAX_PROGRAM_TEXTURE_GATHER_OFFSET                  = 0x8E5F;
const TEXTURE_CUBE_MAP_ARRAY                             = 0x9009;
const TEXTURE_BINDING_CUBE_MAP_ARRAY                     = 0x900A;
const PROXY_TEXTURE_CUBE_MAP_ARRAY                       = 0x900B;
const SAMPLER_CUBE_MAP_ARRAY                             = 0x900C;
const SAMPLER_CUBE_MAP_ARRAY_SHADOW                      = 0x900D;
const INT_SAMPLER_CUBE_MAP_ARRAY                         = 0x900E;
const UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY                = 0x900F;
const DRAW_INDIRECT_BUFFER                               = 0x8F3F;
const DRAW_INDIRECT_BUFFER_BINDING                       = 0x8F43;
const GEOMETRY_SHADER_INVOCATIONS                        = 0x887F;
const MAX_GEOMETRY_SHADER_INVOCATIONS                    = 0x8E5A;
const MIN_FRAGMENT_INTERPOLATION_OFFSET                  = 0x8E5B;
const MAX_FRAGMENT_INTERPOLATION_OFFSET                  = 0x8E5C;
const FRAGMENT_INTERPOLATION_OFFSET_BITS                 = 0x8E5D;
const MAX_VERTEX_STREAMS                                 = 0x8E71;
const DOUBLE_VEC2                                        = 0x8FFC;
const DOUBLE_VEC3                                        = 0x8FFD;
const DOUBLE_VEC4                                        = 0x8FFE;
const DOUBLE_MAT2                                        = 0x8F46;
const DOUBLE_MAT3                                        = 0x8F47;
const DOUBLE_MAT4                                        = 0x8F48;
const DOUBLE_MAT2X3                                      = 0x8F49;
const DOUBLE_MAT2X4                                      = 0x8F4A;
const DOUBLE_MAT3X2                                      = 0x8F4B;
const DOUBLE_MAT3X4                                      = 0x8F4C;
const DOUBLE_MAT4X2                                      = 0x8F4D;
const DOUBLE_MAT4X3                                      = 0x8F4E;
const ACTIVE_SUBROUTINES                                 = 0x8DE5;
const ACTIVE_SUBROUTINE_UNIFORMS                         = 0x8DE6;
const ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS                = 0x8E47;
const ACTIVE_SUBROUTINE_MAX_LENGTH                       = 0x8E48;
const ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH               = 0x8E49;
const MAX_SUBROUTINES                                    = 0x8DE7;
const MAX_SUBROUTINE_UNIFORM_LOCATIONS                   = 0x8DE8;
const NUM_COMPATIBLE_SUBROUTINES                         = 0x8E4A;
const COMPATIBLE_SUBROUTINES                             = 0x8E4B;
const PATCHES                                            = 0x000E;
const PATCH_VERTICES                                     = 0x8E72;
const PATCH_DEFAULT_INNER_LEVEL                          = 0x8E73;
const PATCH_DEFAULT_OUTER_LEVEL                          = 0x8E74;
const TESS_CONTROL_OUTPUT_VERTICES                       = 0x8E75;
const TESS_GEN_MODE                                      = 0x8E76;
const TESS_GEN_SPACING                                   = 0x8E77;
const TESS_GEN_VERTEX_ORDER                              = 0x8E78;
const TESS_GEN_POINT_MODE                                = 0x8E79;
const ISOLINES                                           = 0x8E7A;
const FRACTIONAL_ODD                                     = 0x8E7B;
const FRACTIONAL_EVEN                                    = 0x8E7C;
const MAX_PATCH_VERTICES                                 = 0x8E7D;
const MAX_TESS_GEN_LEVEL                                 = 0x8E7E;
const MAX_TESS_CONTROL_UNIFORM_COMPONENTS                = 0x8E7F;
const MAX_TESS_EVALUATION_UNIFORM_COMPONENTS             = 0x8E80;
const MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS               = 0x8E81;
const MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS            = 0x8E82;
const MAX_TESS_CONTROL_OUTPUT_COMPONENTS                 = 0x8E83;
const MAX_TESS_PATCH_COMPONENTS                          = 0x8E84;
const MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS           = 0x8E85;
const MAX_TESS_EVALUATION_OUTPUT_COMPONENTS              = 0x8E86;
const MAX_TESS_CONTROL_UNIFORM_BLOCKS                    = 0x8E89;
const MAX_TESS_EVALUATION_UNIFORM_BLOCKS                 = 0x8E8A;
const MAX_TESS_CONTROL_INPUT_COMPONENTS                  = 0x886C;
const MAX_TESS_EVALUATION_INPUT_COMPONENTS               = 0x886D;
const MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS       = 0x8E1E;
const MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS    = 0x8E1F;
const UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER    = 0x84F0;
const UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER = 0x84F1;
const TESS_EVALUATION_SHADER                             = 0x8E87;
const TESS_CONTROL_SHADER                                = 0x8E88;
const TRANSFORM_FEEDBACK                                 = 0x8E22;
const TRANSFORM_FEEDBACK_BUFFER_PAUSED                   = 0x8E23;
const TRANSFORM_FEEDBACK_BUFFER_ACTIVE                   = 0x8E24;
const TRANSFORM_FEEDBACK_BINDING                         = 0x8E25;
const MAX_TRANSFORM_FEEDBACK_BUFFERS                     = 0x8E70;

alias PFNglMinSampleShadingPROC = fn void (Float value);
PFNglMinSampleShadingPROC minSampleShading = null;
alias PFNglBlendEquationiPROC = fn void (Uint buf, Enum mode);
PFNglBlendEquationiPROC blendEquationi = null;
alias PFNglBlendEquationSeparateiPROC = fn void (Uint buf, Enum modeRGB, Enum modeAlpha);
PFNglBlendEquationSeparateiPROC blendEquationSeparatei = null;
alias PFNglBlendFunciPROC = fn void (Uint buf, Enum src, Enum dst);
PFNglBlendFunciPROC blendFunci = null;
alias PFNglBlendFuncSeparateiPROC = fn void (Uint buf, Enum srcRGB, Enum dstRGB, Enum srcAlpha, Enum dstAlpha);
PFNglBlendFuncSeparateiPROC blendFuncSeparatei = null;
alias PFNglDrawArraysIndirectPROC = fn void (Enum mode, void* indirect);
PFNglDrawArraysIndirectPROC drawArraysIndirect = null;
alias PFNglDrawElementsIndirectPROC = fn void (Enum mode, Enum type, void* indirect);
PFNglDrawElementsIndirectPROC drawElementsIndirect = null;
alias PFNglUniform1dPROC = fn void (Int location, Double x);
PFNglUniform1dPROC uniform1d = null;
alias PFNglUniform2dPROC = fn void (Int location, Double x, Double y);
PFNglUniform2dPROC uniform2d = null;
alias PFNglUniform3dPROC = fn void (Int location, Double x, Double y, Double z);
PFNglUniform3dPROC uniform3d = null;
alias PFNglUniform4dPROC = fn void (Int location, Double x, Double y, Double z, Double w);
PFNglUniform4dPROC uniform4d = null;
alias PFNglUniform1dvPROC = fn void (Int location, Sizei count, Double* value);
PFNglUniform1dvPROC uniform1dv = null;
alias PFNglUniform2dvPROC = fn void (Int location, Sizei count, Double* value);
PFNglUniform2dvPROC uniform2dv = null;
alias PFNglUniform3dvPROC = fn void (Int location, Sizei count, Double* value);
PFNglUniform3dvPROC uniform3dv = null;
alias PFNglUniform4dvPROC = fn void (Int location, Sizei count, Double* value);
PFNglUniform4dvPROC uniform4dv = null;
alias PFNglUniformMatrix2dvPROC = fn void (Int location, Sizei count, Boolean transpose, Double* value);
PFNglUniformMatrix2dvPROC uniformMatrix2dv = null;
alias PFNglUniformMatrix3dvPROC = fn void (Int location, Sizei count, Boolean transpose, Double* value);
PFNglUniformMatrix3dvPROC uniformMatrix3dv = null;
alias PFNglUniformMatrix4dvPROC = fn void (Int location, Sizei count, Boolean transpose, Double* value);
PFNglUniformMatrix4dvPROC uniformMatrix4dv = null;
alias PFNglUniformMatrix2x3dvPROC = fn void (Int location, Sizei count, Boolean transpose, Double* value);
PFNglUniformMatrix2x3dvPROC uniformMatrix2x3dv = null;
alias PFNglUniformMatrix2x4dvPROC = fn void (Int location, Sizei count, Boolean transpose, Double* value);
PFNglUniformMatrix2x4dvPROC uniformMatrix2x4dv = null;
alias PFNglUniformMatrix3x2dvPROC = fn void (Int location, Sizei count, Boolean transpose, Double* value);
PFNglUniformMatrix3x2dvPROC uniformMatrix3x2dv = null;
alias PFNglUniformMatrix3x4dvPROC = fn void (Int location, Sizei count, Boolean transpose, Double* value);
PFNglUniformMatrix3x4dvPROC uniformMatrix3x4dv = null;
alias PFNglUniformMatrix4x2dvPROC = fn void (Int location, Sizei count, Boolean transpose, Double* value);
PFNglUniformMatrix4x2dvPROC uniformMatrix4x2dv = null;
alias PFNglUniformMatrix4x3dvPROC = fn void (Int location, Sizei count, Boolean transpose, Double* value);
PFNglUniformMatrix4x3dvPROC uniformMatrix4x3dv = null;
alias PFNglGetUniformdvPROC = fn void (Uint program, Int location, Double* params);
PFNglGetUniformdvPROC getUniformdv = null;
alias PFNglGetSubroutineUniformLocationPROC = fn Int (Uint program, Enum shadertype, ZString name);
PFNglGetSubroutineUniformLocationPROC getSubroutineUniformLocation = null;
alias PFNglGetSubroutineIndexPROC = fn Uint (Uint program, Enum shadertype, ZString name);
PFNglGetSubroutineIndexPROC getSubroutineIndex = null;
alias PFNglGetActiveSubroutineUniformivPROC = fn void (Uint program, Enum shadertype, Uint index, Enum pname, Int* values);
PFNglGetActiveSubroutineUniformivPROC getActiveSubroutineUniformiv = null;
alias PFNglGetActiveSubroutineUniformNamePROC = fn void (Uint program, Enum shadertype, Uint index, Sizei bufSize, Sizei* length, ZString name);
PFNglGetActiveSubroutineUniformNamePROC getActiveSubroutineUniformName = null;
alias PFNglGetActiveSubroutineNamePROC = fn void (Uint program, Enum shadertype, Uint index, Sizei bufSize, Sizei* length, ZString name);
PFNglGetActiveSubroutineNamePROC getActiveSubroutineName = null;
alias PFNglUniformSubroutinesuivPROC = fn void (Enum shadertype, Sizei count, Uint* indices);
PFNglUniformSubroutinesuivPROC uniformSubroutinesuiv = null;
alias PFNglGetUniformSubroutineuivPROC = fn void (Enum shadertype, Int location, Uint* params);
PFNglGetUniformSubroutineuivPROC getUniformSubroutineuiv = null;
alias PFNglGetProgramStageivPROC = fn void (Uint program, Enum shadertype, Enum pname, Int* values);
PFNglGetProgramStageivPROC getProgramStageiv = null;
alias PFNglPatchParameteriPROC = fn void (Enum pname, Int value);
PFNglPatchParameteriPROC patchParameteri = null;
alias PFNglPatchParameterfvPROC = fn void (Enum pname, Float* values);
PFNglPatchParameterfvPROC patchParameterfv = null;
alias PFNglBindTransformFeedbackPROC = fn void (Enum target, Uint id);
PFNglBindTransformFeedbackPROC bindTransformFeedback = null;
alias PFNglDeleteTransformFeedbacksPROC = fn void (Sizei n, Uint* ids);
PFNglDeleteTransformFeedbacksPROC deleteTransformFeedbacks = null;
alias PFNglGenTransformFeedbacksPROC = fn void (Sizei n, Uint* ids);
PFNglGenTransformFeedbacksPROC genTransformFeedbacks = null;
alias PFNglIsTransformFeedbackPROC = fn Boolean (Uint id);
PFNglIsTransformFeedbackPROC isTransformFeedback = null;
alias PFNglPauseTransformFeedbackPROC = fn void ();
PFNglPauseTransformFeedbackPROC pauseTransformFeedback = null;
alias PFNglResumeTransformFeedbackPROC = fn void ();
PFNglResumeTransformFeedbackPROC resumeTransformFeedback = null;
alias PFNglDrawTransformFeedbackPROC = fn void (Enum mode, Uint id);
PFNglDrawTransformFeedbackPROC drawTransformFeedback = null;
alias PFNglDrawTransformFeedbackStreamPROC = fn void (Enum mode, Uint id, Uint stream);
PFNglDrawTransformFeedbackStreamPROC drawTransformFeedbackStream = null;
alias PFNglBeginQueryIndexedPROC = fn void (Enum target, Uint index, Uint id);
PFNglBeginQueryIndexedPROC beginQueryIndexed = null;
alias PFNglEndQueryIndexedPROC = fn void (Enum target, Uint index);
PFNglEndQueryIndexedPROC endQueryIndexed = null;
alias PFNglGetQueryIndexedivPROC = fn void (Enum target, Uint index, Enum pname, Int* params);
PFNglGetQueryIndexedivPROC getQueryIndexediv = null;


fn void load_gl_4_0(LoadFn load)
{
    minSampleShading = load("glMinSampleShading");
    blendEquationi = load("glBlendEquationi");
    blendEquationSeparatei = load("glBlendEquationSeparatei");
    blendFunci = load("glBlendFunci");
    blendFuncSeparatei = load("glBlendFuncSeparatei");
    drawArraysIndirect = load("glDrawArraysIndirect");
    drawElementsIndirect = load("glDrawElementsIndirect");
    uniform1d = load("glUniform1d");
    uniform2d = load("glUniform2d");
    uniform3d = load("glUniform3d");
    uniform4d = load("glUniform4d");
    uniform1dv = load("glUniform1dv");
    uniform2dv = load("glUniform2dv");
    uniform3dv = load("glUniform3dv");
    uniform4dv = load("glUniform4dv");
    uniformMatrix2dv = load("glUniformMatrix2dv");
    uniformMatrix3dv = load("glUniformMatrix3dv");
    uniformMatrix4dv = load("glUniformMatrix4dv");
    uniformMatrix2x3dv = load("glUniformMatrix2x3dv");
    uniformMatrix2x4dv = load("glUniformMatrix2x4dv");
    uniformMatrix3x2dv = load("glUniformMatrix3x2dv");
    uniformMatrix3x4dv = load("glUniformMatrix3x4dv");
    uniformMatrix4x2dv = load("glUniformMatrix4x2dv");
    uniformMatrix4x3dv = load("glUniformMatrix4x3dv");
    getUniformdv = load("glGetUniformdv");
    getSubroutineUniformLocation = load("glGetSubroutineUniformLocation");
    getSubroutineIndex = load("glGetSubroutineIndex");
    getActiveSubroutineUniformiv = load("glGetActiveSubroutineUniformiv");
    getActiveSubroutineUniformName = load("glGetActiveSubroutineUniformName");
    getActiveSubroutineName = load("glGetActiveSubroutineName");
    uniformSubroutinesuiv = load("glUniformSubroutinesuiv");
    getUniformSubroutineuiv = load("glGetUniformSubroutineuiv");
    getProgramStageiv = load("glGetProgramStageiv");
    patchParameteri = load("glPatchParameteri");
    patchParameterfv = load("glPatchParameterfv");
    bindTransformFeedback = load("glBindTransformFeedback");
    deleteTransformFeedbacks = load("glDeleteTransformFeedbacks");
    genTransformFeedbacks = load("glGenTransformFeedbacks");
    isTransformFeedback = load("glIsTransformFeedback");
    pauseTransformFeedback = load("glPauseTransformFeedback");
    resumeTransformFeedback = load("glResumeTransformFeedback");
    drawTransformFeedback = load("glDrawTransformFeedback");
    drawTransformFeedbackStream = load("glDrawTransformFeedbackStream");
    beginQueryIndexed = load("glBeginQueryIndexed");
    endQueryIndexed = load("glEndQueryIndexed");
    getQueryIndexediv = load("glGetQueryIndexediv");
}

module opengl::gl @if(opengl::version() >= 41);
import opengl;

const FIXED                            = 0x140C;
const IMPLEMENTATION_COLOR_READ_TYPE   = 0x8B9A;
const IMPLEMENTATION_COLOR_READ_FORMAT = 0x8B9B;
const LOW_FLOAT                        = 0x8DF0;
const MEDIUM_FLOAT                     = 0x8DF1;
const HIGH_FLOAT                       = 0x8DF2;
const LOW_INT                          = 0x8DF3;
const MEDIUM_INT                       = 0x8DF4;
const HIGH_INT                         = 0x8DF5;
const SHADER_COMPILER                  = 0x8DFA;
const SHADER_BINARY_FORMATS            = 0x8DF8;
const NUM_SHADER_BINARY_FORMATS        = 0x8DF9;
const MAX_VERTEX_UNIFORM_VECTORS       = 0x8DFB;
const MAX_VARYING_VECTORS              = 0x8DFC;
const MAX_FRAGMENT_UNIFORM_VECTORS     = 0x8DFD;
const RGB565                           = 0x8D62;
const PROGRAM_BINARY_RETRIEVABLE_HINT  = 0x8257;
const PROGRAM_BINARY_LENGTH            = 0x8741;
const NUM_PROGRAM_BINARY_FORMATS       = 0x87FE;
const PROGRAM_BINARY_FORMATS           = 0x87FF;
const VERTEX_SHADER_BIT                = 0x00000001;
const FRAGMENT_SHADER_BIT              = 0x00000002;
const GEOMETRY_SHADER_BIT              = 0x00000004;
const TESS_CONTROL_SHADER_BIT          = 0x00000008;
const TESS_EVALUATION_SHADER_BIT       = 0x00000010;
const ALL_SHADER_BITS                  = 0xFFFFFFFF;
const PROGRAM_SEPARABLE                = 0x8258;
const ACTIVE_PROGRAM                   = 0x8259;
const PROGRAM_PIPELINE_BINDING         = 0x825A;
const MAX_VIEWPORTS                    = 0x825B;
const VIEWPORT_SUBPIXEL_BITS           = 0x825C;
const VIEWPORT_BOUNDS_RANGE            = 0x825D;
const LAYER_PROVOKING_VERTEX           = 0x825E;
const VIEWPORT_INDEX_PROVOKING_VERTEX  = 0x825F;
const UNDEFINED_VERTEX                 = 0x8260;

alias PFNglReleaseShaderCompilerPROC = fn void ();
PFNglReleaseShaderCompilerPROC releaseShaderCompiler = null;
alias PFNglShaderBinaryPROC = fn void (Sizei count, Uint* shaders, Enum binaryFormat, void* binary, Sizei length);
PFNglShaderBinaryPROC shaderBinary = null;
alias PFNglGetShaderPrecisionFormatPROC = fn void (Enum shadertype, Enum precisiontype, Int* range, Int* precision);
PFNglGetShaderPrecisionFormatPROC getShaderPrecisionFormat = null;
alias PFNglDepthRangefPROC = fn void (Float n, Float f);
PFNglDepthRangefPROC depthRangef = null;
alias PFNglClearDepthfPROC = fn void (Float d);
PFNglClearDepthfPROC clearDepthf = null;
alias PFNglGetProgramBinaryPROC = fn void (Uint program, Sizei bufSize, Sizei* length, Enum* binaryFormat, void* binary);
PFNglGetProgramBinaryPROC getProgramBinary = null;
alias PFNglProgramBinaryPROC = fn void (Uint program, Enum binaryFormat, void* binary, Sizei length);
PFNglProgramBinaryPROC programBinary = null;
alias PFNglProgramParameteriPROC = fn void (Uint program, Enum pname, Int value);
PFNglProgramParameteriPROC programParameteri = null;
alias PFNglUseProgramStagesPROC = fn void (Uint pipeline, Bitfield stages, Uint program);
PFNglUseProgramStagesPROC useProgramStages = null;
alias PFNglActiveShaderProgramPROC = fn void (Uint pipeline, Uint program);
PFNglActiveShaderProgramPROC activeShaderProgram = null;
alias PFNglCreateShaderProgramvPROC = fn Uint (Enum type, Sizei count, ZString* strings);
PFNglCreateShaderProgramvPROC createShaderProgramv = null;
alias PFNglBindProgramPipelinePROC = fn void (Uint pipeline);
PFNglBindProgramPipelinePROC bindProgramPipeline = null;
alias PFNglDeleteProgramPipelinesPROC = fn void (Sizei n, Uint* pipelines);
PFNglDeleteProgramPipelinesPROC deleteProgramPipelines = null;
alias PFNglGenProgramPipelinesPROC = fn void (Sizei n, Uint* pipelines);
PFNglGenProgramPipelinesPROC genProgramPipelines = null;
alias PFNglIsProgramPipelinePROC = fn Boolean (Uint pipeline);
PFNglIsProgramPipelinePROC isProgramPipeline = null;
alias PFNglGetProgramPipelineivPROC = fn void (Uint pipeline, Enum pname, Int* params);
PFNglGetProgramPipelineivPROC getProgramPipelineiv = null;
alias PFNglProgramUniform1iPROC = fn void (Uint program, Int location, Int v0);
PFNglProgramUniform1iPROC programUniform1i = null;
alias PFNglProgramUniform1ivPROC = fn void (Uint program, Int location, Sizei count, Int* value);
PFNglProgramUniform1ivPROC programUniform1iv = null;
alias PFNglProgramUniform1fPROC = fn void (Uint program, Int location, Float v0);
PFNglProgramUniform1fPROC programUniform1f = null;
alias PFNglProgramUniform1fvPROC = fn void (Uint program, Int location, Sizei count, Float* value);
PFNglProgramUniform1fvPROC programUniform1fv = null;
alias PFNglProgramUniform1dPROC = fn void (Uint program, Int location, Double v0);
PFNglProgramUniform1dPROC programUniform1d = null;
alias PFNglProgramUniform1dvPROC = fn void (Uint program, Int location, Sizei count, Double* value);
PFNglProgramUniform1dvPROC programUniform1dv = null;
alias PFNglProgramUniform1uiPROC = fn void (Uint program, Int location, Uint v0);
PFNglProgramUniform1uiPROC programUniform1ui = null;
alias PFNglProgramUniform1uivPROC = fn void (Uint program, Int location, Sizei count, Uint* value);
PFNglProgramUniform1uivPROC programUniform1uiv = null;
alias PFNglProgramUniform2iPROC = fn void (Uint program, Int location, Int v0, Int v1);
PFNglProgramUniform2iPROC programUniform2i = null;
alias PFNglProgramUniform2ivPROC = fn void (Uint program, Int location, Sizei count, Int* value);
PFNglProgramUniform2ivPROC programUniform2iv = null;
alias PFNglProgramUniform2fPROC = fn void (Uint program, Int location, Float v0, Float v1);
PFNglProgramUniform2fPROC programUniform2f = null;
alias PFNglProgramUniform2fvPROC = fn void (Uint program, Int location, Sizei count, Float* value);
PFNglProgramUniform2fvPROC programUniform2fv = null;
alias PFNglProgramUniform2dPROC = fn void (Uint program, Int location, Double v0, Double v1);
PFNglProgramUniform2dPROC programUniform2d = null;
alias PFNglProgramUniform2dvPROC = fn void (Uint program, Int location, Sizei count, Double* value);
PFNglProgramUniform2dvPROC programUniform2dv = null;
alias PFNglProgramUniform2uiPROC = fn void (Uint program, Int location, Uint v0, Uint v1);
PFNglProgramUniform2uiPROC programUniform2ui = null;
alias PFNglProgramUniform2uivPROC = fn void (Uint program, Int location, Sizei count, Uint* value);
PFNglProgramUniform2uivPROC programUniform2uiv = null;
alias PFNglProgramUniform3iPROC = fn void (Uint program, Int location, Int v0, Int v1, Int v2);
PFNglProgramUniform3iPROC programUniform3i = null;
alias PFNglProgramUniform3ivPROC = fn void (Uint program, Int location, Sizei count, Int* value);
PFNglProgramUniform3ivPROC programUniform3iv = null;
alias PFNglProgramUniform3fPROC = fn void (Uint program, Int location, Float v0, Float v1, Float v2);
PFNglProgramUniform3fPROC programUniform3f = null;
alias PFNglProgramUniform3fvPROC = fn void (Uint program, Int location, Sizei count, Float* value);
PFNglProgramUniform3fvPROC programUniform3fv = null;
alias PFNglProgramUniform3dPROC = fn void (Uint program, Int location, Double v0, Double v1, Double v2);
PFNglProgramUniform3dPROC programUniform3d = null;
alias PFNglProgramUniform3dvPROC = fn void (Uint program, Int location, Sizei count, Double* value);
PFNglProgramUniform3dvPROC programUniform3dv = null;
alias PFNglProgramUniform3uiPROC = fn void (Uint program, Int location, Uint v0, Uint v1, Uint v2);
PFNglProgramUniform3uiPROC programUniform3ui = null;
alias PFNglProgramUniform3uivPROC = fn void (Uint program, Int location, Sizei count, Uint* value);
PFNglProgramUniform3uivPROC programUniform3uiv = null;
alias PFNglProgramUniform4iPROC = fn void (Uint program, Int location, Int v0, Int v1, Int v2, Int v3);
PFNglProgramUniform4iPROC programUniform4i = null;
alias PFNglProgramUniform4ivPROC = fn void (Uint program, Int location, Sizei count, Int* value);
PFNglProgramUniform4ivPROC programUniform4iv = null;
alias PFNglProgramUniform4fPROC = fn void (Uint program, Int location, Float v0, Float v1, Float v2, Float v3);
PFNglProgramUniform4fPROC programUniform4f = null;
alias PFNglProgramUniform4fvPROC = fn void (Uint program, Int location, Sizei count, Float* value);
PFNglProgramUniform4fvPROC programUniform4fv = null;
alias PFNglProgramUniform4dPROC = fn void (Uint program, Int location, Double v0, Double v1, Double v2, Double v3);
PFNglProgramUniform4dPROC programUniform4d = null;
alias PFNglProgramUniform4dvPROC = fn void (Uint program, Int location, Sizei count, Double* value);
PFNglProgramUniform4dvPROC programUniform4dv = null;
alias PFNglProgramUniform4uiPROC = fn void (Uint program, Int location, Uint v0, Uint v1, Uint v2, Uint v3);
PFNglProgramUniform4uiPROC programUniform4ui = null;
alias PFNglProgramUniform4uivPROC = fn void (Uint program, Int location, Sizei count, Uint* value);
PFNglProgramUniform4uivPROC programUniform4uiv = null;
alias PFNglProgramUniformMatrix2fvPROC = fn void (Uint program, Int location, Sizei count, Boolean transpose, Float* value);
PFNglProgramUniformMatrix2fvPROC programUniformMatrix2fv = null;
alias PFNglProgramUniformMatrix3fvPROC = fn void (Uint program, Int location, Sizei count, Boolean transpose, Float* value);
PFNglProgramUniformMatrix3fvPROC programUniformMatrix3fv = null;
alias PFNglProgramUniformMatrix4fvPROC = fn void (Uint program, Int location, Sizei count, Boolean transpose, Float* value);
PFNglProgramUniformMatrix4fvPROC programUniformMatrix4fv = null;
alias PFNglProgramUniformMatrix2dvPROC = fn void (Uint program, Int location, Sizei count, Boolean transpose, Double* value);
PFNglProgramUniformMatrix2dvPROC programUniformMatrix2dv = null;
alias PFNglProgramUniformMatrix3dvPROC = fn void (Uint program, Int location, Sizei count, Boolean transpose, Double* value);
PFNglProgramUniformMatrix3dvPROC programUniformMatrix3dv = null;
alias PFNglProgramUniformMatrix4dvPROC = fn void (Uint program, Int location, Sizei count, Boolean transpose, Double* value);
PFNglProgramUniformMatrix4dvPROC programUniformMatrix4dv = null;
alias PFNglProgramUniformMatrix2x3fvPROC = fn void (Uint program, Int location, Sizei count, Boolean transpose, Float* value);
PFNglProgramUniformMatrix2x3fvPROC programUniformMatrix2x3fv = null;
alias PFNglProgramUniformMatrix3x2fvPROC = fn void (Uint program, Int location, Sizei count, Boolean transpose, Float* value);
PFNglProgramUniformMatrix3x2fvPROC programUniformMatrix3x2fv = null;
alias PFNglProgramUniformMatrix2x4fvPROC = fn void (Uint program, Int location, Sizei count, Boolean transpose, Float* value);
PFNglProgramUniformMatrix2x4fvPROC programUniformMatrix2x4fv = null;
alias PFNglProgramUniformMatrix4x2fvPROC = fn void (Uint program, Int location, Sizei count, Boolean transpose, Float* value);
PFNglProgramUniformMatrix4x2fvPROC programUniformMatrix4x2fv = null;
alias PFNglProgramUniformMatrix3x4fvPROC = fn void (Uint program, Int location, Sizei count, Boolean transpose, Float* value);
PFNglProgramUniformMatrix3x4fvPROC programUniformMatrix3x4fv = null;
alias PFNglProgramUniformMatrix4x3fvPROC = fn void (Uint program, Int location, Sizei count, Boolean transpose, Float* value);
PFNglProgramUniformMatrix4x3fvPROC programUniformMatrix4x3fv = null;
alias PFNglProgramUniformMatrix2x3dvPROC = fn void (Uint program, Int location, Sizei count, Boolean transpose, Double* value);
PFNglProgramUniformMatrix2x3dvPROC programUniformMatrix2x3dv = null;
alias PFNglProgramUniformMatrix3x2dvPROC = fn void (Uint program, Int location, Sizei count, Boolean transpose, Double* value);
PFNglProgramUniformMatrix3x2dvPROC programUniformMatrix3x2dv = null;
alias PFNglProgramUniformMatrix2x4dvPROC = fn void (Uint program, Int location, Sizei count, Boolean transpose, Double* value);
PFNglProgramUniformMatrix2x4dvPROC programUniformMatrix2x4dv = null;
alias PFNglProgramUniformMatrix4x2dvPROC = fn void (Uint program, Int location, Sizei count, Boolean transpose, Double* value);
PFNglProgramUniformMatrix4x2dvPROC programUniformMatrix4x2dv = null;
alias PFNglProgramUniformMatrix3x4dvPROC = fn void (Uint program, Int location, Sizei count, Boolean transpose, Double* value);
PFNglProgramUniformMatrix3x4dvPROC programUniformMatrix3x4dv = null;
alias PFNglProgramUniformMatrix4x3dvPROC = fn void (Uint program, Int location, Sizei count, Boolean transpose, Double* value);
PFNglProgramUniformMatrix4x3dvPROC programUniformMatrix4x3dv = null;
alias PFNglValidateProgramPipelinePROC = fn void (Uint pipeline);
PFNglValidateProgramPipelinePROC validateProgramPipeline = null;
alias PFNglGetProgramPipelineInfoLogPROC = fn void (Uint pipeline, Sizei bufSize, Sizei* length, ZString infoLog);
PFNglGetProgramPipelineInfoLogPROC getProgramPipelineInfoLog = null;
alias PFNglVertexAttribL1dPROC = fn void (Uint index, Double x);
PFNglVertexAttribL1dPROC vertexAttribL1d = null;
alias PFNglVertexAttribL2dPROC = fn void (Uint index, Double x, Double y);
PFNglVertexAttribL2dPROC vertexAttribL2d = null;
alias PFNglVertexAttribL3dPROC = fn void (Uint index, Double x, Double y, Double z);
PFNglVertexAttribL3dPROC vertexAttribL3d = null;
alias PFNglVertexAttribL4dPROC = fn void (Uint index, Double x, Double y, Double z, Double w);
PFNglVertexAttribL4dPROC vertexAttribL4d = null;
alias PFNglVertexAttribL1dvPROC = fn void (Uint index, Double* v);
PFNglVertexAttribL1dvPROC vertexAttribL1dv = null;
alias PFNglVertexAttribL2dvPROC = fn void (Uint index, Double* v);
PFNglVertexAttribL2dvPROC vertexAttribL2dv = null;
alias PFNglVertexAttribL3dvPROC = fn void (Uint index, Double* v);
PFNglVertexAttribL3dvPROC vertexAttribL3dv = null;
alias PFNglVertexAttribL4dvPROC = fn void (Uint index, Double* v);
PFNglVertexAttribL4dvPROC vertexAttribL4dv = null;
alias PFNglVertexAttribLPointerPROC = fn void (Uint index, Int size, Enum type, Sizei stride, void* pointer);
PFNglVertexAttribLPointerPROC vertexAttribLPointer = null;
alias PFNglGetVertexAttribLdvPROC = fn void (Uint index, Enum pname, Double* params);
PFNglGetVertexAttribLdvPROC getVertexAttribLdv = null;
alias PFNglViewportArrayvPROC = fn void (Uint first, Sizei count, Float* v);
PFNglViewportArrayvPROC viewportArrayv = null;
alias PFNglViewportIndexedfPROC = fn void (Uint index, Float x, Float y, Float w, Float h);
PFNglViewportIndexedfPROC viewportIndexedf = null;
alias PFNglViewportIndexedfvPROC = fn void (Uint index, Float* v);
PFNglViewportIndexedfvPROC viewportIndexedfv = null;
alias PFNglScissorArrayvPROC = fn void (Uint first, Sizei count, Int* v);
PFNglScissorArrayvPROC scissorArrayv = null;
alias PFNglScissorIndexedPROC = fn void (Uint index, Int left, Int bottom, Sizei width, Sizei height);
PFNglScissorIndexedPROC scissorIndexed = null;
alias PFNglScissorIndexedvPROC = fn void (Uint index, Int* v);
PFNglScissorIndexedvPROC scissorIndexedv = null;
alias PFNglDepthRangeArrayvPROC = fn void (Uint first, Sizei count, Double* v);
PFNglDepthRangeArrayvPROC depthRangeArrayv = null;
alias PFNglDepthRangeIndexedPROC = fn void (Uint index, Double n, Double f);
PFNglDepthRangeIndexedPROC depthRangeIndexed = null;
alias PFNglGetFloati_vPROC = fn void (Enum target, Uint index, Float* data);
PFNglGetFloati_vPROC getFloati_v = null;
alias PFNglGetDoublei_vPROC = fn void (Enum target, Uint index, Double* data);
PFNglGetDoublei_vPROC getDoublei_v = null;


fn void load_gl_4_1(LoadFn load)
{
    releaseShaderCompiler = load("glReleaseShaderCompiler");
    shaderBinary = load("glShaderBinary");
    getShaderPrecisionFormat = load("glGetShaderPrecisionFormat");
    depthRangef = load("glDepthRangef");
    clearDepthf = load("glClearDepthf");
    getProgramBinary = load("glGetProgramBinary");
    programBinary = load("glProgramBinary");
    programParameteri = load("glProgramParameteri");
    useProgramStages = load("glUseProgramStages");
    activeShaderProgram = load("glActiveShaderProgram");
    createShaderProgramv = load("glCreateShaderProgramv");
    bindProgramPipeline = load("glBindProgramPipeline");
    deleteProgramPipelines = load("glDeleteProgramPipelines");
    genProgramPipelines = load("glGenProgramPipelines");
    isProgramPipeline = load("glIsProgramPipeline");
    getProgramPipelineiv = load("glGetProgramPipelineiv");
    programUniform1i = load("glProgramUniform1i");
    programUniform1iv = load("glProgramUniform1iv");
    programUniform1f = load("glProgramUniform1f");
    programUniform1fv = load("glProgramUniform1fv");
    programUniform1d = load("glProgramUniform1d");
    programUniform1dv = load("glProgramUniform1dv");
    programUniform1ui = load("glProgramUniform1ui");
    programUniform1uiv = load("glProgramUniform1uiv");
    programUniform2i = load("glProgramUniform2i");
    programUniform2iv = load("glProgramUniform2iv");
    programUniform2f = load("glProgramUniform2f");
    programUniform2fv = load("glProgramUniform2fv");
    programUniform2d = load("glProgramUniform2d");
    programUniform2dv = load("glProgramUniform2dv");
    programUniform2ui = load("glProgramUniform2ui");
    programUniform2uiv = load("glProgramUniform2uiv");
    programUniform3i = load("glProgramUniform3i");
    programUniform3iv = load("glProgramUniform3iv");
    programUniform3f = load("glProgramUniform3f");
    programUniform3fv = load("glProgramUniform3fv");
    programUniform3d = load("glProgramUniform3d");
    programUniform3dv = load("glProgramUniform3dv");
    programUniform3ui = load("glProgramUniform3ui");
    programUniform3uiv = load("glProgramUniform3uiv");
    programUniform4i = load("glProgramUniform4i");
    programUniform4iv = load("glProgramUniform4iv");
    programUniform4f = load("glProgramUniform4f");
    programUniform4fv = load("glProgramUniform4fv");
    programUniform4d = load("glProgramUniform4d");
    programUniform4dv = load("glProgramUniform4dv");
    programUniform4ui = load("glProgramUniform4ui");
    programUniform4uiv = load("glProgramUniform4uiv");
    programUniformMatrix2fv = load("glProgramUniformMatrix2fv");
    programUniformMatrix3fv = load("glProgramUniformMatrix3fv");
    programUniformMatrix4fv = load("glProgramUniformMatrix4fv");
    programUniformMatrix2dv = load("glProgramUniformMatrix2dv");
    programUniformMatrix3dv = load("glProgramUniformMatrix3dv");
    programUniformMatrix4dv = load("glProgramUniformMatrix4dv");
    programUniformMatrix2x3fv = load("glProgramUniformMatrix2x3fv");
    programUniformMatrix3x2fv = load("glProgramUniformMatrix3x2fv");
    programUniformMatrix2x4fv = load("glProgramUniformMatrix2x4fv");
    programUniformMatrix4x2fv = load("glProgramUniformMatrix4x2fv");
    programUniformMatrix3x4fv = load("glProgramUniformMatrix3x4fv");
    programUniformMatrix4x3fv = load("glProgramUniformMatrix4x3fv");
    programUniformMatrix2x3dv = load("glProgramUniformMatrix2x3dv");
    programUniformMatrix3x2dv = load("glProgramUniformMatrix3x2dv");
    programUniformMatrix2x4dv = load("glProgramUniformMatrix2x4dv");
    programUniformMatrix4x2dv = load("glProgramUniformMatrix4x2dv");
    programUniformMatrix3x4dv = load("glProgramUniformMatrix3x4dv");
    programUniformMatrix4x3dv = load("glProgramUniformMatrix4x3dv");
    validateProgramPipeline = load("glValidateProgramPipeline");
    getProgramPipelineInfoLog = load("glGetProgramPipelineInfoLog");
    vertexAttribL1d = load("glVertexAttribL1d");
    vertexAttribL2d = load("glVertexAttribL2d");
    vertexAttribL3d = load("glVertexAttribL3d");
    vertexAttribL4d = load("glVertexAttribL4d");
    vertexAttribL1dv = load("glVertexAttribL1dv");
    vertexAttribL2dv = load("glVertexAttribL2dv");
    vertexAttribL3dv = load("glVertexAttribL3dv");
    vertexAttribL4dv = load("glVertexAttribL4dv");
    vertexAttribLPointer = load("glVertexAttribLPointer");
    getVertexAttribLdv = load("glGetVertexAttribLdv");
    viewportArrayv = load("glViewportArrayv");
    viewportIndexedf = load("glViewportIndexedf");
    viewportIndexedfv = load("glViewportIndexedfv");
    scissorArrayv = load("glScissorArrayv");
    scissorIndexed = load("glScissorIndexed");
    scissorIndexedv = load("glScissorIndexedv");
    depthRangeArrayv = load("glDepthRangeArrayv");
    depthRangeIndexed = load("glDepthRangeIndexed");
    getFloati_v = load("glGetFloati_v");
    getDoublei_v = load("glGetDoublei_v");
}

module opengl::gl @if(opengl::version() >= 42);
import opengl;

const COPY_READ_BUFFER_BINDING                                   = 0x8F36;
const COPY_WRITE_BUFFER_BINDING                                  = 0x8F37;
const TRANSFORM_FEEDBACK_ACTIVE                                  = 0x8E24;
const TRANSFORM_FEEDBACK_PAUSED                                  = 0x8E23;
const UNPACK_COMPRESSED_BLOCK_WIDTH                              = 0x9127;
const UNPACK_COMPRESSED_BLOCK_HEIGHT                             = 0x9128;
const UNPACK_COMPRESSED_BLOCK_DEPTH                              = 0x9129;
const UNPACK_COMPRESSED_BLOCK_SIZE                               = 0x912A;
const PACK_COMPRESSED_BLOCK_WIDTH                                = 0x912B;
const PACK_COMPRESSED_BLOCK_HEIGHT                               = 0x912C;
const PACK_COMPRESSED_BLOCK_DEPTH                                = 0x912D;
const PACK_COMPRESSED_BLOCK_SIZE                                 = 0x912E;
const NUM_SAMPLE_COUNTS                                          = 0x9380;
const MIN_MAP_BUFFER_ALIGNMENT                                   = 0x90BC;
const ATOMIC_COUNTER_BUFFER                                      = 0x92C0;
const ATOMIC_COUNTER_BUFFER_BINDING                              = 0x92C1;
const ATOMIC_COUNTER_BUFFER_START                                = 0x92C2;
const ATOMIC_COUNTER_BUFFER_SIZE                                 = 0x92C3;
const ATOMIC_COUNTER_BUFFER_DATA_SIZE                            = 0x92C4;
const ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS               = 0x92C5;
const ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES        = 0x92C6;
const ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER          = 0x92C7;
const ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER    = 0x92C8;
const ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER = 0x92C9;
const ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER        = 0x92CA;
const ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER        = 0x92CB;
const MAX_VERTEX_ATOMIC_COUNTER_BUFFERS                          = 0x92CC;
const MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS                    = 0x92CD;
const MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS                 = 0x92CE;
const MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS                        = 0x92CF;
const MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS                        = 0x92D0;
const MAX_COMBINED_ATOMIC_COUNTER_BUFFERS                        = 0x92D1;
const MAX_VERTEX_ATOMIC_COUNTERS                                 = 0x92D2;
const MAX_TESS_CONTROL_ATOMIC_COUNTERS                           = 0x92D3;
const MAX_TESS_EVALUATION_ATOMIC_COUNTERS                        = 0x92D4;
const MAX_GEOMETRY_ATOMIC_COUNTERS                               = 0x92D5;
const MAX_FRAGMENT_ATOMIC_COUNTERS                               = 0x92D6;
const MAX_COMBINED_ATOMIC_COUNTERS                               = 0x92D7;
const MAX_ATOMIC_COUNTER_BUFFER_SIZE                             = 0x92D8;
const MAX_ATOMIC_COUNTER_BUFFER_BINDINGS                         = 0x92DC;
const ACTIVE_ATOMIC_COUNTER_BUFFERS                              = 0x92D9;
const UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX                        = 0x92DA;
const UNSIGNED_INT_ATOMIC_COUNTER                                = 0x92DB;
const VERTEX_ATTRIB_ARRAY_BARRIER_BIT                            = 0x00000001;
const ELEMENT_ARRAY_BARRIER_BIT                                  = 0x00000002;
const UNIFORM_BARRIER_BIT                                        = 0x00000004;
const TEXTURE_FETCH_BARRIER_BIT                                  = 0x00000008;
const SHADER_IMAGE_ACCESS_BARRIER_BIT                            = 0x00000020;
const COMMAND_BARRIER_BIT                                        = 0x00000040;
const PIXEL_BUFFER_BARRIER_BIT                                   = 0x00000080;
const TEXTURE_UPDATE_BARRIER_BIT                                 = 0x00000100;
const BUFFER_UPDATE_BARRIER_BIT                                  = 0x00000200;
const FRAMEBUFFER_BARRIER_BIT                                    = 0x00000400;
const TRANSFORM_FEEDBACK_BARRIER_BIT                             = 0x00000800;
const ATOMIC_COUNTER_BARRIER_BIT                                 = 0x00001000;
const ALL_BARRIER_BITS                                           = 0xFFFFFFFF;
const MAX_IMAGE_UNITS                                            = 0x8F38;
const MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS              = 0x8F39;
const IMAGE_BINDING_NAME                                         = 0x8F3A;
const IMAGE_BINDING_LEVEL                                        = 0x8F3B;
const IMAGE_BINDING_LAYERED                                      = 0x8F3C;
const IMAGE_BINDING_LAYER                                        = 0x8F3D;
const IMAGE_BINDING_ACCESS                                       = 0x8F3E;
const IMAGE_1D                                                   = 0x904C;
const IMAGE_2D                                                   = 0x904D;
const IMAGE_3D                                                   = 0x904E;
const IMAGE_2D_RECT                                              = 0x904F;
const IMAGE_CUBE                                                 = 0x9050;
const IMAGE_BUFFER                                               = 0x9051;
const IMAGE_1D_ARRAY                                             = 0x9052;
const IMAGE_2D_ARRAY                                             = 0x9053;
const IMAGE_CUBE_MAP_ARRAY                                       = 0x9054;
const IMAGE_2D_MULTISAMPLE                                       = 0x9055;
const IMAGE_2D_MULTISAMPLE_ARRAY                                 = 0x9056;
const INT_IMAGE_1D                                               = 0x9057;
const INT_IMAGE_2D                                               = 0x9058;
const INT_IMAGE_3D                                               = 0x9059;
const INT_IMAGE_2D_RECT                                          = 0x905A;
const INT_IMAGE_CUBE                                             = 0x905B;
const INT_IMAGE_BUFFER                                           = 0x905C;
const INT_IMAGE_1D_ARRAY                                         = 0x905D;
const INT_IMAGE_2D_ARRAY                                         = 0x905E;
const INT_IMAGE_CUBE_MAP_ARRAY                                   = 0x905F;
const INT_IMAGE_2D_MULTISAMPLE                                   = 0x9060;
const INT_IMAGE_2D_MULTISAMPLE_ARRAY                             = 0x9061;
const UNSIGNED_INT_IMAGE_1D                                      = 0x9062;
const UNSIGNED_INT_IMAGE_2D                                      = 0x9063;
const UNSIGNED_INT_IMAGE_3D                                      = 0x9064;
const UNSIGNED_INT_IMAGE_2D_RECT                                 = 0x9065;
const UNSIGNED_INT_IMAGE_CUBE                                    = 0x9066;
const UNSIGNED_INT_IMAGE_BUFFER                                  = 0x9067;
const UNSIGNED_INT_IMAGE_1D_ARRAY                                = 0x9068;
const UNSIGNED_INT_IMAGE_2D_ARRAY                                = 0x9069;
const UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY                          = 0x906A;
const UNSIGNED_INT_IMAGE_2D_MULTISAMPLE                          = 0x906B;
const UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY                    = 0x906C;
const MAX_IMAGE_SAMPLES                                          = 0x906D;
const IMAGE_BINDING_FORMAT                                       = 0x906E;
const IMAGE_FORMAT_COMPATIBILITY_TYPE                            = 0x90C7;
const IMAGE_FORMAT_COMPATIBILITY_BY_SIZE                         = 0x90C8;
const IMAGE_FORMAT_COMPATIBILITY_BY_CLASS                        = 0x90C9;
const MAX_VERTEX_IMAGE_UNIFORMS                                  = 0x90CA;
const MAX_TESS_CONTROL_IMAGE_UNIFORMS                            = 0x90CB;
const MAX_TESS_EVALUATION_IMAGE_UNIFORMS                         = 0x90CC;
const MAX_GEOMETRY_IMAGE_UNIFORMS                                = 0x90CD;
const MAX_FRAGMENT_IMAGE_UNIFORMS                                = 0x90CE;
const MAX_COMBINED_IMAGE_UNIFORMS                                = 0x90CF;
const COMPRESSED_RGBA_BPTC_UNORM                                 = 0x8E8C;
const COMPRESSED_SRGB_ALPHA_BPTC_UNORM                           = 0x8E8D;
const COMPRESSED_RGB_BPTC_SIGNED_FLOAT                           = 0x8E8E;
const COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT                         = 0x8E8F;
const TEXTURE_IMMUTABLE_FORMAT                                   = 0x912F;

alias PFNglDrawArraysInstancedBaseInstancePROC = fn void (Enum mode, Int first, Sizei count, Sizei instancecount, Uint baseinstance);
PFNglDrawArraysInstancedBaseInstancePROC drawArraysInstancedBaseInstance = null;
alias PFNglDrawElementsInstancedBaseInstancePROC = fn void (Enum mode, Sizei count, Enum type, void* indices, Sizei instancecount, Uint baseinstance);
PFNglDrawElementsInstancedBaseInstancePROC drawElementsInstancedBaseInstance = null;
alias PFNglDrawElementsInstancedBaseVertexBaseInstancePROC = fn void (Enum mode, Sizei count, Enum type, void* indices, Sizei instancecount, Int basevertex, Uint baseinstance);
PFNglDrawElementsInstancedBaseVertexBaseInstancePROC drawElementsInstancedBaseVertexBaseInstance = null;
alias PFNglGetInternalformativPROC = fn void (Enum target, Enum internalformat, Enum pname, Sizei count, Int* params);
PFNglGetInternalformativPROC getInternalformativ = null;
alias PFNglGetActiveAtomicCounterBufferivPROC = fn void (Uint program, Uint bufferIndex, Enum pname, Int* params);
PFNglGetActiveAtomicCounterBufferivPROC getActiveAtomicCounterBufferiv = null;
alias PFNglBindImageTexturePROC = fn void (Uint unit, Uint texture, Int level, Boolean layered, Int layer, Enum access, Enum format);
PFNglBindImageTexturePROC bindImageTexture = null;
alias PFNglMemoryBarrierPROC = fn void (Bitfield barriers);
PFNglMemoryBarrierPROC memoryBarrier = null;
alias PFNglTexStorage1DPROC = fn void (Enum target, Sizei levels, Enum internalformat, Sizei width);
PFNglTexStorage1DPROC texStorage1D = null;
alias PFNglTexStorage2DPROC = fn void (Enum target, Sizei levels, Enum internalformat, Sizei width, Sizei height);
PFNglTexStorage2DPROC texStorage2D = null;
alias PFNglTexStorage3DPROC = fn void (Enum target, Sizei levels, Enum internalformat, Sizei width, Sizei height, Sizei depth);
PFNglTexStorage3DPROC texStorage3D = null;
alias PFNglDrawTransformFeedbackInstancedPROC = fn void (Enum mode, Uint id, Sizei instancecount);
PFNglDrawTransformFeedbackInstancedPROC drawTransformFeedbackInstanced = null;
alias PFNglDrawTransformFeedbackStreamInstancedPROC = fn void (Enum mode, Uint id, Uint stream, Sizei instancecount);
PFNglDrawTransformFeedbackStreamInstancedPROC drawTransformFeedbackStreamInstanced = null;


fn void load_gl_4_2(LoadFn load)
{
    drawArraysInstancedBaseInstance = load("glDrawArraysInstancedBaseInstance");
    drawElementsInstancedBaseInstance = load("glDrawElementsInstancedBaseInstance");
    drawElementsInstancedBaseVertexBaseInstance = load("glDrawElementsInstancedBaseVertexBaseInstance");
    getInternalformativ = load("glGetInternalformativ");
    getActiveAtomicCounterBufferiv = load("glGetActiveAtomicCounterBufferiv");
    bindImageTexture = load("glBindImageTexture");
    memoryBarrier = load("glMemoryBarrier");
    texStorage1D = load("glTexStorage1D");
    texStorage2D = load("glTexStorage2D");
    texStorage3D = load("glTexStorage3D");
    drawTransformFeedbackInstanced = load("glDrawTransformFeedbackInstanced");
    drawTransformFeedbackStreamInstanced = load("glDrawTransformFeedbackStreamInstanced");
}

module opengl::gl @if(opengl::version() >= 43);
import opengl;

alias DebugProc = fn void (Enum source, Enum type, Uint id, Enum severity, Sizei length, ZString message, void* userParam);

const NUM_SHADING_LANGUAGE_VERSIONS                      = 0x82E9;
const VERTEX_ATTRIB_ARRAY_LONG                           = 0x874E;
const COMPRESSED_RGB8_ETC2                               = 0x9274;
const COMPRESSED_SRGB8_ETC2                              = 0x9275;
const COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2           = 0x9276;
const COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2          = 0x9277;
const COMPRESSED_RGBA8_ETC2_EAC                          = 0x9278;
const COMPRESSED_SRGB8_ALPHA8_ETC2_EAC                   = 0x9279;
const COMPRESSED_R11_EAC                                 = 0x9270;
const COMPRESSED_SIGNED_R11_EAC                          = 0x9271;
const COMPRESSED_RG11_EAC                                = 0x9272;
const COMPRESSED_SIGNED_RG11_EAC                         = 0x9273;
const PRIMITIVE_RESTART_FIXED_INDEX                      = 0x8D69;
const ANY_SAMPLES_PASSED_CONSERVATIVE                    = 0x8D6A;
const MAX_ELEMENT_INDEX                                  = 0x8D6B;
const COMPUTE_SHADER                                     = 0x91B9;
const MAX_COMPUTE_UNIFORM_BLOCKS                         = 0x91BB;
const MAX_COMPUTE_TEXTURE_IMAGE_UNITS                    = 0x91BC;
const MAX_COMPUTE_IMAGE_UNIFORMS                         = 0x91BD;
const MAX_COMPUTE_SHARED_MEMORY_SIZE                     = 0x8262;
const MAX_COMPUTE_UNIFORM_COMPONENTS                     = 0x8263;
const MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS                 = 0x8264;
const MAX_COMPUTE_ATOMIC_COUNTERS                        = 0x8265;
const MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS            = 0x8266;
const MAX_COMPUTE_WORK_GROUP_INVOCATIONS                 = 0x90EB;
const MAX_COMPUTE_WORK_GROUP_COUNT                       = 0x91BE;
const MAX_COMPUTE_WORK_GROUP_SIZE                        = 0x91BF;
const COMPUTE_WORK_GROUP_SIZE                            = 0x8267;
const UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER         = 0x90EC;
const ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER = 0x90ED;
const DISPATCH_INDIRECT_BUFFER                           = 0x90EE;
const DISPATCH_INDIRECT_BUFFER_BINDING                   = 0x90EF;
const COMPUTE_SHADER_BIT                                 = 0x00000020;
const DEBUG_OUTPUT_SYNCHRONOUS                           = 0x8242;
const DEBUG_NEXT_LOGGED_MESSAGE_LENGTH                   = 0x8243;
const DEBUG_CALLBACK_FUNCTION                            = 0x8244;
const DEBUG_CALLBACK_USER_PARAM                          = 0x8245;
const DEBUG_SOURCE_API                                   = 0x8246;
const DEBUG_SOURCE_WINDOW_SYSTEM                         = 0x8247;
const DEBUG_SOURCE_SHADER_COMPILER                       = 0x8248;
const DEBUG_SOURCE_THIRD_PARTY                           = 0x8249;
const DEBUG_SOURCE_APPLICATION                           = 0x824A;
const DEBUG_SOURCE_OTHER                                 = 0x824B;
const DEBUG_TYPE_ERROR                                   = 0x824C;
const DEBUG_TYPE_DEPRECATED_BEHAVIOR                     = 0x824D;
const DEBUG_TYPE_UNDEFINED_BEHAVIOR                      = 0x824E;
const DEBUG_TYPE_PORTABILITY                             = 0x824F;
const DEBUG_TYPE_PERFORMANCE                             = 0x8250;
const DEBUG_TYPE_OTHER                                   = 0x8251;
const MAX_DEBUG_MESSAGE_LENGTH                           = 0x9143;
const MAX_DEBUG_LOGGED_MESSAGES                          = 0x9144;
const DEBUG_LOGGED_MESSAGES                              = 0x9145;
const DEBUG_SEVERITY_HIGH                                = 0x9146;
const DEBUG_SEVERITY_MEDIUM                              = 0x9147;
const DEBUG_SEVERITY_LOW                                 = 0x9148;
const DEBUG_TYPE_MARKER                                  = 0x8268;
const DEBUG_TYPE_PUSH_GROUP                              = 0x8269;
const DEBUG_TYPE_POP_GROUP                               = 0x826A;
const DEBUG_SEVERITY_NOTIFICATION                        = 0x826B;
const MAX_DEBUG_GROUP_STACK_DEPTH                        = 0x826C;
const DEBUG_GROUP_STACK_DEPTH                            = 0x826D;
const BUFFER                                             = 0x82E0;
const SHADER                                             = 0x82E1;
const PROGRAM                                            = 0x82E2;
const QUERY                                              = 0x82E3;
const PROGRAM_PIPELINE                                   = 0x82E4;
const SAMPLER                                            = 0x82E6;
const MAX_LABEL_LENGTH                                   = 0x82E8;
const DEBUG_OUTPUT                                       = 0x92E0;
const CONTEXT_FLAG_DEBUG_BIT                             = 0x00000002;
const MAX_UNIFORM_LOCATIONS                              = 0x826E;
const FRAMEBUFFER_DEFAULT_WIDTH                          = 0x9310;
const FRAMEBUFFER_DEFAULT_HEIGHT                         = 0x9311;
const FRAMEBUFFER_DEFAULT_LAYERS                         = 0x9312;
const FRAMEBUFFER_DEFAULT_SAMPLES                        = 0x9313;
const FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS         = 0x9314;
const MAX_FRAMEBUFFER_WIDTH                              = 0x9315;
const MAX_FRAMEBUFFER_HEIGHT                             = 0x9316;
const MAX_FRAMEBUFFER_LAYERS                             = 0x9317;
const MAX_FRAMEBUFFER_SAMPLES                            = 0x9318;
const INTERNALFORMAT_SUPPORTED                           = 0x826F;
const INTERNALFORMAT_PREFERRED                           = 0x8270;
const INTERNALFORMAT_RED_SIZE                            = 0x8271;
const INTERNALFORMAT_GREEN_SIZE                          = 0x8272;
const INTERNALFORMAT_BLUE_SIZE                           = 0x8273;
const INTERNALFORMAT_ALPHA_SIZE                          = 0x8274;
const INTERNALFORMAT_DEPTH_SIZE                          = 0x8275;
const INTERNALFORMAT_STENCIL_SIZE                        = 0x8276;
const INTERNALFORMAT_SHARED_SIZE                         = 0x8277;
const INTERNALFORMAT_RED_TYPE                            = 0x8278;
const INTERNALFORMAT_GREEN_TYPE                          = 0x8279;
const INTERNALFORMAT_BLUE_TYPE                           = 0x827A;
const INTERNALFORMAT_ALPHA_TYPE                          = 0x827B;
const INTERNALFORMAT_DEPTH_TYPE                          = 0x827C;
const INTERNALFORMAT_STENCIL_TYPE                        = 0x827D;
const MAX_WIDTH                                          = 0x827E;
const MAX_HEIGHT                                         = 0x827F;
const MAX_DEPTH                                          = 0x8280;
const MAX_LAYERS                                         = 0x8281;
const MAX_COMBINED_DIMENSIONS                            = 0x8282;
const COLOR_COMPONENTS                                   = 0x8283;
const DEPTH_COMPONENTS                                   = 0x8284;
const STENCIL_COMPONENTS                                 = 0x8285;
const COLOR_RENDERABLE                                   = 0x8286;
const DEPTH_RENDERABLE                                   = 0x8287;
const STENCIL_RENDERABLE                                 = 0x8288;
const FRAMEBUFFER_RENDERABLE                             = 0x8289;
const FRAMEBUFFER_RENDERABLE_LAYERED                     = 0x828A;
const FRAMEBUFFER_BLEND                                  = 0x828B;
const READ_PIXELS                                        = 0x828C;
const READ_PIXELS_FORMAT                                 = 0x828D;
const READ_PIXELS_TYPE                                   = 0x828E;
const TEXTURE_IMAGE_FORMAT                               = 0x828F;
const TEXTURE_IMAGE_TYPE                                 = 0x8290;
const GET_TEXTURE_IMAGE_FORMAT                           = 0x8291;
const GET_TEXTURE_IMAGE_TYPE                             = 0x8292;
const MIPMAP                                             = 0x8293;
const MANUAL_GENERATE_MIPMAP                             = 0x8294;
const AUTO_GENERATE_MIPMAP                               = 0x8295;
const COLOR_ENCODING                                     = 0x8296;
const SRGB_READ                                          = 0x8297;
const SRGB_WRITE                                         = 0x8298;
const FILTER                                             = 0x829A;
const VERTEX_TEXTURE                                     = 0x829B;
const TESS_CONTROL_TEXTURE                               = 0x829C;
const TESS_EVALUATION_TEXTURE                            = 0x829D;
const GEOMETRY_TEXTURE                                   = 0x829E;
const FRAGMENT_TEXTURE                                   = 0x829F;
const COMPUTE_TEXTURE                                    = 0x82A0;
const TEXTURE_SHADOW                                     = 0x82A1;
const TEXTURE_GATHER                                     = 0x82A2;
const TEXTURE_GATHER_SHADOW                              = 0x82A3;
const SHADER_IMAGE_LOAD                                  = 0x82A4;
const SHADER_IMAGE_STORE                                 = 0x82A5;
const SHADER_IMAGE_ATOMIC                                = 0x82A6;
const IMAGE_TEXEL_SIZE                                   = 0x82A7;
const IMAGE_COMPATIBILITY_CLASS                          = 0x82A8;
const IMAGE_PIXEL_FORMAT                                 = 0x82A9;
const IMAGE_PIXEL_TYPE                                   = 0x82AA;
const SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST                = 0x82AC;
const SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST              = 0x82AD;
const SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE               = 0x82AE;
const SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE             = 0x82AF;
const TEXTURE_COMPRESSED_BLOCK_WIDTH                     = 0x82B1;
const TEXTURE_COMPRESSED_BLOCK_HEIGHT                    = 0x82B2;
const TEXTURE_COMPRESSED_BLOCK_SIZE                      = 0x82B3;
const CLEAR_BUFFER                                       = 0x82B4;
const TEXTURE_VIEW                                       = 0x82B5;
const VIEW_COMPATIBILITY_CLASS                           = 0x82B6;
const FULL_SUPPORT                                       = 0x82B7;
const CAVEAT_SUPPORT                                     = 0x82B8;
const IMAGE_CLASS_4_X_32                                 = 0x82B9;
const IMAGE_CLASS_2_X_32                                 = 0x82BA;
const IMAGE_CLASS_1_X_32                                 = 0x82BB;
const IMAGE_CLASS_4_X_16                                 = 0x82BC;
const IMAGE_CLASS_2_X_16                                 = 0x82BD;
const IMAGE_CLASS_1_X_16                                 = 0x82BE;
const IMAGE_CLASS_4_X_8                                  = 0x82BF;
const IMAGE_CLASS_2_X_8                                  = 0x82C0;
const IMAGE_CLASS_1_X_8                                  = 0x82C1;
const IMAGE_CLASS_11_11_10                               = 0x82C2;
const IMAGE_CLASS_10_10_10_2                             = 0x82C3;
const VIEW_CLASS_128_BITS                                = 0x82C4;
const VIEW_CLASS_96_BITS                                 = 0x82C5;
const VIEW_CLASS_64_BITS                                 = 0x82C6;
const VIEW_CLASS_48_BITS                                 = 0x82C7;
const VIEW_CLASS_32_BITS                                 = 0x82C8;
const VIEW_CLASS_24_BITS                                 = 0x82C9;
const VIEW_CLASS_16_BITS                                 = 0x82CA;
const VIEW_CLASS_8_BITS                                  = 0x82CB;
const VIEW_CLASS_S3TC_DXT1_RGB                           = 0x82CC;
const VIEW_CLASS_S3TC_DXT1_RGBA                          = 0x82CD;
const VIEW_CLASS_S3TC_DXT3_RGBA                          = 0x82CE;
const VIEW_CLASS_S3TC_DXT5_RGBA                          = 0x82CF;
const VIEW_CLASS_RGTC1_RED                               = 0x82D0;
const VIEW_CLASS_RGTC2_RG                                = 0x82D1;
const VIEW_CLASS_BPTC_UNORM                              = 0x82D2;
const VIEW_CLASS_BPTC_FLOAT                              = 0x82D3;
const UNIFORM                                            = 0x92E1;
const UNIFORM_BLOCK                                      = 0x92E2;
const PROGRAM_INPUT                                      = 0x92E3;
const PROGRAM_OUTPUT                                     = 0x92E4;
const BUFFER_VARIABLE                                    = 0x92E5;
const SHADER_STORAGE_BLOCK                               = 0x92E6;
const VERTEX_SUBROUTINE                                  = 0x92E8;
const TESS_CONTROL_SUBROUTINE                            = 0x92E9;
const TESS_EVALUATION_SUBROUTINE                         = 0x92EA;
const GEOMETRY_SUBROUTINE                                = 0x92EB;
const FRAGMENT_SUBROUTINE                                = 0x92EC;
const COMPUTE_SUBROUTINE                                 = 0x92ED;
const VERTEX_SUBROUTINE_UNIFORM                          = 0x92EE;
const TESS_CONTROL_SUBROUTINE_UNIFORM                    = 0x92EF;
const TESS_EVALUATION_SUBROUTINE_UNIFORM                 = 0x92F0;
const GEOMETRY_SUBROUTINE_UNIFORM                        = 0x92F1;
const FRAGMENT_SUBROUTINE_UNIFORM                        = 0x92F2;
const COMPUTE_SUBROUTINE_UNIFORM                         = 0x92F3;
const TRANSFORM_FEEDBACK_VARYING                         = 0x92F4;
const ACTIVE_RESOURCES                                   = 0x92F5;
const MAX_NAME_LENGTH                                    = 0x92F6;
const MAX_NUM_ACTIVE_VARIABLES                           = 0x92F7;
const MAX_NUM_COMPATIBLE_SUBROUTINES                     = 0x92F8;
const NAME_LENGTH                                        = 0x92F9;
const TYPE                                               = 0x92FA;
const ARRAY_SIZE                                         = 0x92FB;
const OFFSET                                             = 0x92FC;
const BLOCK_INDEX                                        = 0x92FD;
const ARRAY_STRIDE                                       = 0x92FE;
const MATRIX_STRIDE                                      = 0x92FF;
const IS_ROW_MAJOR                                       = 0x9300;
const ATOMIC_COUNTER_BUFFER_INDEX                        = 0x9301;
const BUFFER_BINDING                                     = 0x9302;
const BUFFER_DATA_SIZE                                   = 0x9303;
const NUM_ACTIVE_VARIABLES                               = 0x9304;
const ACTIVE_VARIABLES                                   = 0x9305;
const REFERENCED_BY_VERTEX_SHADER                        = 0x9306;
const REFERENCED_BY_TESS_CONTROL_SHADER                  = 0x9307;
const REFERENCED_BY_TESS_EVALUATION_SHADER               = 0x9308;
const REFERENCED_BY_GEOMETRY_SHADER                      = 0x9309;
const REFERENCED_BY_FRAGMENT_SHADER                      = 0x930A;
const REFERENCED_BY_COMPUTE_SHADER                       = 0x930B;
const TOP_LEVEL_ARRAY_SIZE                               = 0x930C;
const TOP_LEVEL_ARRAY_STRIDE                             = 0x930D;
const LOCATION                                           = 0x930E;
const LOCATION_INDEX                                     = 0x930F;
const IS_PER_PATCH                                       = 0x92E7;
const SHADER_STORAGE_BUFFER                              = 0x90D2;
const SHADER_STORAGE_BUFFER_BINDING                      = 0x90D3;
const SHADER_STORAGE_BUFFER_START                        = 0x90D4;
const SHADER_STORAGE_BUFFER_SIZE                         = 0x90D5;
const MAX_VERTEX_SHADER_STORAGE_BLOCKS                   = 0x90D6;
const MAX_GEOMETRY_SHADER_STORAGE_BLOCKS                 = 0x90D7;
const MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS             = 0x90D8;
const MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS          = 0x90D9;
const MAX_FRAGMENT_SHADER_STORAGE_BLOCKS                 = 0x90DA;
const MAX_COMPUTE_SHADER_STORAGE_BLOCKS                  = 0x90DB;
const MAX_COMBINED_SHADER_STORAGE_BLOCKS                 = 0x90DC;
const MAX_SHADER_STORAGE_BUFFER_BINDINGS                 = 0x90DD;
const MAX_SHADER_STORAGE_BLOCK_SIZE                      = 0x90DE;
const SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT             = 0x90DF;
const SHADER_STORAGE_BARRIER_BIT                         = 0x00002000;
const MAX_COMBINED_SHADER_OUTPUT_RESOURCES               = 0x8F39;
const DEPTH_STENCIL_TEXTURE_MODE                         = 0x90EA;
const TEXTURE_BUFFER_OFFSET                              = 0x919D;
const TEXTURE_BUFFER_SIZE                                = 0x919E;
const TEXTURE_BUFFER_OFFSET_ALIGNMENT                    = 0x919F;
const TEXTURE_VIEW_MIN_LEVEL                             = 0x82DB;
const TEXTURE_VIEW_NUM_LEVELS                            = 0x82DC;
const TEXTURE_VIEW_MIN_LAYER                             = 0x82DD;
const TEXTURE_VIEW_NUM_LAYERS                            = 0x82DE;
const TEXTURE_IMMUTABLE_LEVELS                           = 0x82DF;
const VERTEX_ATTRIB_BINDING                              = 0x82D4;
const VERTEX_ATTRIB_RELATIVE_OFFSET                      = 0x82D5;
const VERTEX_BINDING_DIVISOR                             = 0x82D6;
const VERTEX_BINDING_OFFSET                              = 0x82D7;
const VERTEX_BINDING_STRIDE                              = 0x82D8;
const MAX_VERTEX_ATTRIB_RELATIVE_OFFSET                  = 0x82D9;
const MAX_VERTEX_ATTRIB_BINDINGS                         = 0x82DA;
const VERTEX_BINDING_BUFFER                              = 0x8F4F;

alias PFNglClearBufferDataPROC = fn void (Enum target, Enum internalformat, Enum format, Enum type, void* data);
PFNglClearBufferDataPROC clearBufferData = null;
alias PFNglClearBufferSubDataPROC = fn void (Enum target, Enum internalformat, Intptr offset, Sizeiptr size, Enum format, Enum type, void* data);
PFNglClearBufferSubDataPROC clearBufferSubData = null;
alias PFNglDispatchComputePROC = fn void (Uint num_groups_x, Uint num_groups_y, Uint num_groups_z);
PFNglDispatchComputePROC dispatchCompute = null;
alias PFNglDispatchComputeIndirectPROC = fn void (Intptr indirect);
PFNglDispatchComputeIndirectPROC dispatchComputeIndirect = null;
alias PFNglCopyImageSubDataPROC = fn void (Uint srcName, Enum srcTarget, Int srcLevel, Int srcX, Int srcY, Int srcZ, Uint dstName, Enum dstTarget, Int dstLevel, Int dstX, Int dstY, Int dstZ, Sizei srcWidth, Sizei srcHeight, Sizei srcDepth);
PFNglCopyImageSubDataPROC copyImageSubData = null;
alias PFNglFramebufferParameteriPROC = fn void (Enum target, Enum pname, Int param);
PFNglFramebufferParameteriPROC framebufferParameteri = null;
alias PFNglGetFramebufferParameterivPROC = fn void (Enum target, Enum pname, Int* params);
PFNglGetFramebufferParameterivPROC getFramebufferParameteriv = null;
alias PFNglGetInternalformati64vPROC = fn void (Enum target, Enum internalformat, Enum pname, Sizei count, Int64* params);
PFNglGetInternalformati64vPROC getInternalformati64v = null;
alias PFNglInvalidateTexSubImagePROC = fn void (Uint texture, Int level, Int xoffset, Int yoffset, Int zoffset, Sizei width, Sizei height, Sizei depth);
PFNglInvalidateTexSubImagePROC invalidateTexSubImage = null;
alias PFNglInvalidateTexImagePROC = fn void (Uint texture, Int level);
PFNglInvalidateTexImagePROC invalidateTexImage = null;
alias PFNglInvalidateBufferSubDataPROC = fn void (Uint buffer, Intptr offset, Sizeiptr length);
PFNglInvalidateBufferSubDataPROC invalidateBufferSubData = null;
alias PFNglInvalidateBufferDataPROC = fn void (Uint buffer);
PFNglInvalidateBufferDataPROC invalidateBufferData = null;
alias PFNglInvalidateFramebufferPROC = fn void (Enum target, Sizei numAttachments, Enum* attachments);
PFNglInvalidateFramebufferPROC invalidateFramebuffer = null;
alias PFNglInvalidateSubFramebufferPROC = fn void (Enum target, Sizei numAttachments, Enum* attachments, Int x, Int y, Sizei width, Sizei height);
PFNglInvalidateSubFramebufferPROC invalidateSubFramebuffer = null;
alias PFNglMultiDrawArraysIndirectPROC = fn void (Enum mode, void* indirect, Sizei drawcount, Sizei stride);
PFNglMultiDrawArraysIndirectPROC multiDrawArraysIndirect = null;
alias PFNglMultiDrawElementsIndirectPROC = fn void (Enum mode, Enum type, void* indirect, Sizei drawcount, Sizei stride);
PFNglMultiDrawElementsIndirectPROC multiDrawElementsIndirect = null;
alias PFNglGetProgramInterfaceivPROC = fn void (Uint program, Enum programInterface, Enum pname, Int* params);
PFNglGetProgramInterfaceivPROC getProgramInterfaceiv = null;
alias PFNglGetProgramResourceIndexPROC = fn Uint (Uint program, Enum programInterface, ZString name);
PFNglGetProgramResourceIndexPROC getProgramResourceIndex = null;
alias PFNglGetProgramResourceNamePROC = fn void (Uint program, Enum programInterface, Uint index, Sizei bufSize, Sizei* length, ZString name);
PFNglGetProgramResourceNamePROC getProgramResourceName = null;
alias PFNglGetProgramResourceivPROC = fn void (Uint program, Enum programInterface, Uint index, Sizei propCount, Enum* props, Sizei count, Sizei* length, Int* params);
PFNglGetProgramResourceivPROC getProgramResourceiv = null;
alias PFNglGetProgramResourceLocationPROC = fn Int (Uint program, Enum programInterface, ZString name);
PFNglGetProgramResourceLocationPROC getProgramResourceLocation = null;
alias PFNglGetProgramResourceLocationIndexPROC = fn Int (Uint program, Enum programInterface, ZString name);
PFNglGetProgramResourceLocationIndexPROC getProgramResourceLocationIndex = null;
alias PFNglShaderStorageBlockBindingPROC = fn void (Uint program, Uint storageBlockIndex, Uint storageBlockBinding);
PFNglShaderStorageBlockBindingPROC shaderStorageBlockBinding = null;
alias PFNglTexBufferRangePROC = fn void (Enum target, Enum internalformat, Uint buffer, Intptr offset, Sizeiptr size);
PFNglTexBufferRangePROC texBufferRange = null;
alias PFNglTexStorage2DMultisamplePROC = fn void (Enum target, Sizei samples, Enum internalformat, Sizei width, Sizei height, Boolean fixedsamplelocations);
PFNglTexStorage2DMultisamplePROC texStorage2DMultisample = null;
alias PFNglTexStorage3DMultisamplePROC = fn void (Enum target, Sizei samples, Enum internalformat, Sizei width, Sizei height, Sizei depth, Boolean fixedsamplelocations);
PFNglTexStorage3DMultisamplePROC texStorage3DMultisample = null;
alias PFNglTextureViewPROC = fn void (Uint texture, Enum target, Uint origtexture, Enum internalformat, Uint minlevel, Uint numlevels, Uint minlayer, Uint numlayers);
PFNglTextureViewPROC textureView = null;
alias PFNglBindVertexBufferPROC = fn void (Uint bindingindex, Uint buffer, Intptr offset, Sizei stride);
PFNglBindVertexBufferPROC bindVertexBuffer = null;
alias PFNglVertexAttribFormatPROC = fn void (Uint attribindex, Int size, Enum type, Boolean normalized, Uint relativeoffset);
PFNglVertexAttribFormatPROC vertexAttribFormat = null;
alias PFNglVertexAttribIFormatPROC = fn void (Uint attribindex, Int size, Enum type, Uint relativeoffset);
PFNglVertexAttribIFormatPROC vertexAttribIFormat = null;
alias PFNglVertexAttribLFormatPROC = fn void (Uint attribindex, Int size, Enum type, Uint relativeoffset);
PFNglVertexAttribLFormatPROC vertexAttribLFormat = null;
alias PFNglVertexAttribBindingPROC = fn void (Uint attribindex, Uint bindingindex);
PFNglVertexAttribBindingPROC vertexAttribBinding = null;
alias PFNglVertexBindingDivisorPROC = fn void (Uint bindingindex, Uint divisor);
PFNglVertexBindingDivisorPROC vertexBindingDivisor = null;
alias PFNglDebugMessageControlPROC = fn void (Enum source, Enum type, Enum severity, Sizei count, Uint* ids, Boolean enabled);
PFNglDebugMessageControlPROC debugMessageControl = null;
alias PFNglDebugMessageInsertPROC = fn void (Enum source, Enum type, Uint id, Enum severity, Sizei length, ZString buf);
PFNglDebugMessageInsertPROC debugMessageInsert = null;
alias PFNglDebugMessageCallbackPROC = fn void (DebugProc callback, void* userParam);
PFNglDebugMessageCallbackPROC debugMessageCallback = null;
alias PFNglGetDebugMessageLogPROC = fn Uint (Uint count, Sizei bufSize, Enum* sources, Enum* types, Uint* ids, Enum* severities, Sizei* lengths, ZString messageLog);
PFNglGetDebugMessageLogPROC getDebugMessageLog = null;
alias PFNglPushDebugGroupPROC = fn void (Enum source, Uint id, Sizei length, ZString message);
PFNglPushDebugGroupPROC pushDebugGroup = null;
alias PFNglPopDebugGroupPROC = fn void ();
PFNglPopDebugGroupPROC popDebugGroup = null;
alias PFNglObjectLabelPROC = fn void (Enum identifier, Uint name, Sizei length, ZString label);
PFNglObjectLabelPROC objectLabel = null;
alias PFNglGetObjectLabelPROC = fn void (Enum identifier, Uint name, Sizei bufSize, Sizei* length, ZString label);
PFNglGetObjectLabelPROC getObjectLabel = null;
alias PFNglObjectPtrLabelPROC = fn void (void* ptr, Sizei length, ZString label);
PFNglObjectPtrLabelPROC objectPtrLabel = null;
alias PFNglGetObjectPtrLabelPROC = fn void (void* ptr, Sizei bufSize, Sizei* length, ZString label);
PFNglGetObjectPtrLabelPROC getObjectPtrLabel = null;


fn void load_gl_4_3(LoadFn load)
{
    clearBufferData = load("glClearBufferData");
    clearBufferSubData = load("glClearBufferSubData");
    dispatchCompute = load("glDispatchCompute");
    dispatchComputeIndirect = load("glDispatchComputeIndirect");
    copyImageSubData = load("glCopyImageSubData");
    framebufferParameteri = load("glFramebufferParameteri");
    getFramebufferParameteriv = load("glGetFramebufferParameteriv");
    getInternalformati64v = load("glGetInternalformati64v");
    invalidateTexSubImage = load("glInvalidateTexSubImage");
    invalidateTexImage = load("glInvalidateTexImage");
    invalidateBufferSubData = load("glInvalidateBufferSubData");
    invalidateBufferData = load("glInvalidateBufferData");
    invalidateFramebuffer = load("glInvalidateFramebuffer");
    invalidateSubFramebuffer = load("glInvalidateSubFramebuffer");
    multiDrawArraysIndirect = load("glMultiDrawArraysIndirect");
    multiDrawElementsIndirect = load("glMultiDrawElementsIndirect");
    getProgramInterfaceiv = load("glGetProgramInterfaceiv");
    getProgramResourceIndex = load("glGetProgramResourceIndex");
    getProgramResourceName = load("glGetProgramResourceName");
    getProgramResourceiv = load("glGetProgramResourceiv");
    getProgramResourceLocation = load("glGetProgramResourceLocation");
    getProgramResourceLocationIndex = load("glGetProgramResourceLocationIndex");
    shaderStorageBlockBinding = load("glShaderStorageBlockBinding");
    texBufferRange = load("glTexBufferRange");
    texStorage2DMultisample = load("glTexStorage2DMultisample");
    texStorage3DMultisample = load("glTexStorage3DMultisample");
    textureView = load("glTextureView");
    bindVertexBuffer = load("glBindVertexBuffer");
    vertexAttribFormat = load("glVertexAttribFormat");
    vertexAttribIFormat = load("glVertexAttribIFormat");
    vertexAttribLFormat = load("glVertexAttribLFormat");
    vertexAttribBinding = load("glVertexAttribBinding");
    vertexBindingDivisor = load("glVertexBindingDivisor");
    debugMessageControl = load("glDebugMessageControl");
    debugMessageInsert = load("glDebugMessageInsert");
    debugMessageCallback = load("glDebugMessageCallback");
    getDebugMessageLog = load("glGetDebugMessageLog");
    pushDebugGroup = load("glPushDebugGroup");
    popDebugGroup = load("glPopDebugGroup");
    objectLabel = load("glObjectLabel");
    getObjectLabel = load("glGetObjectLabel");
    objectPtrLabel = load("glObjectPtrLabel");
    getObjectPtrLabel = load("glGetObjectPtrLabel");
}

module opengl::gl @if(opengl::version() >= 44);
import opengl;

const MAX_VERTEX_ATTRIB_STRIDE                = 0x82E5;
const PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED = 0x8221;
const TEXTURE_BUFFER_BINDING                  = 0x8C2A;
const MAP_PERSISTENT_BIT                      = 0x0040;
const MAP_COHERENT_BIT                        = 0x0080;
const DYNAMIC_STORAGE_BIT                     = 0x0100;
const CLIENT_STORAGE_BIT                      = 0x0200;
const CLIENT_MAPPED_BUFFER_BARRIER_BIT        = 0x00004000;
const BUFFER_IMMUTABLE_STORAGE                = 0x821F;
const BUFFER_STORAGE_FLAGS                    = 0x8220;
const CLEAR_TEXTURE                           = 0x9365;
const LOCATION_COMPONENT                      = 0x934A;
const TRANSFORM_FEEDBACK_BUFFER_INDEX         = 0x934B;
const TRANSFORM_FEEDBACK_BUFFER_STRIDE        = 0x934C;
const QUERY_BUFFER                            = 0x9192;
const QUERY_BUFFER_BARRIER_BIT                = 0x00008000;
const QUERY_BUFFER_BINDING                    = 0x9193;
const QUERY_RESULT_NO_WAIT                    = 0x9194;
const MIRROR_CLAMP_TO_EDGE                    = 0x8743;

alias PFNglBufferStoragePROC = fn void (Enum target, Sizeiptr size, void* data, Bitfield flags);
PFNglBufferStoragePROC bufferStorage = null;
alias PFNglClearTexImagePROC = fn void (Uint texture, Int level, Enum format, Enum type, void* data);
PFNglClearTexImagePROC clearTexImage = null;
alias PFNglClearTexSubImagePROC = fn void (Uint texture, Int level, Int xoffset, Int yoffset, Int zoffset, Sizei width, Sizei height, Sizei depth, Enum format, Enum type, void* data);
PFNglClearTexSubImagePROC clearTexSubImage = null;
alias PFNglBindBuffersBasePROC = fn void (Enum target, Uint first, Sizei count, Uint* buffers);
PFNglBindBuffersBasePROC bindBuffersBase = null;
alias PFNglBindBuffersRangePROC = fn void (Enum target, Uint first, Sizei count, Uint* buffers, Intptr* offsets, Sizeiptr* sizes);
PFNglBindBuffersRangePROC bindBuffersRange = null;
alias PFNglBindTexturesPROC = fn void (Uint first, Sizei count, Uint* textures);
PFNglBindTexturesPROC bindTextures = null;
alias PFNglBindSamplersPROC = fn void (Uint first, Sizei count, Uint* samplers);
PFNglBindSamplersPROC bindSamplers = null;
alias PFNglBindImageTexturesPROC = fn void (Uint first, Sizei count, Uint* textures);
PFNglBindImageTexturesPROC bindImageTextures = null;
alias PFNglBindVertexBuffersPROC = fn void (Uint first, Sizei count, Uint* buffers, Intptr* offsets, Sizei* strides);
PFNglBindVertexBuffersPROC bindVertexBuffers = null;


fn void load_gl_4_4(LoadFn load)
{
    bufferStorage = load("glBufferStorage");
    clearTexImage = load("glClearTexImage");
    clearTexSubImage = load("glClearTexSubImage");
    bindBuffersBase = load("glBindBuffersBase");
    bindBuffersRange = load("glBindBuffersRange");
    bindTextures = load("glBindTextures");
    bindSamplers = load("glBindSamplers");
    bindImageTextures = load("glBindImageTextures");
    bindVertexBuffers = load("glBindVertexBuffers");
}

module opengl::gl @if(opengl::version() >= 45);
import opengl;

const CONTEXT_LOST                         = 0x0507;
const NEGATIVE_ONE_TO_ONE                  = 0x935E;
const ZERO_TO_ONE                          = 0x935F;
const CLIP_ORIGIN                          = 0x935C;
const CLIP_DEPTH_MODE                      = 0x935D;
const QUERY_WAIT_INVERTED                  = 0x8E17;
const QUERY_NO_WAIT_INVERTED               = 0x8E18;
const QUERY_BY_REGION_WAIT_INVERTED        = 0x8E19;
const QUERY_BY_REGION_NO_WAIT_INVERTED     = 0x8E1A;
const MAX_CULL_DISTANCES                   = 0x82F9;
const MAX_COMBINED_CLIP_AND_CULL_DISTANCES = 0x82FA;
const TEXTURE_TARGET                       = 0x1006;
const QUERY_TARGET                         = 0x82EA;
const GUILTY_CONTEXT_RESET                 = 0x8253;
const INNOCENT_CONTEXT_RESET               = 0x8254;
const UNKNOWN_CONTEXT_RESET                = 0x8255;
const RESET_NOTIFICATION_STRATEGY          = 0x8256;
const LOSE_CONTEXT_ON_RESET                = 0x8252;
const NO_RESET_NOTIFICATION                = 0x8261;
const CONTEXT_FLAG_ROBUST_ACCESS_BIT       = 0x00000004;
const CONTEXT_RELEASE_BEHAVIOR             = 0x82FB;
const CONTEXT_RELEASE_BEHAVIOR_FLUSH       = 0x82FC;

alias PFNglClipControlPROC = fn void (Enum origin, Enum depth);
PFNglClipControlPROC clipControl = null;
alias PFNglCreateTransformFeedbacksPROC = fn void (Sizei n, Uint* ids);
PFNglCreateTransformFeedbacksPROC createTransformFeedbacks = null;
alias PFNglTransformFeedbackBufferBasePROC = fn void (Uint xfb, Uint index, Uint buffer);
PFNglTransformFeedbackBufferBasePROC transformFeedbackBufferBase = null;
alias PFNglTransformFeedbackBufferRangePROC = fn void (Uint xfb, Uint index, Uint buffer, Intptr offset, Sizeiptr size);
PFNglTransformFeedbackBufferRangePROC transformFeedbackBufferRange = null;
alias PFNglGetTransformFeedbackivPROC = fn void (Uint xfb, Enum pname, Int* param);
PFNglGetTransformFeedbackivPROC getTransformFeedbackiv = null;
alias PFNglGetTransformFeedbacki_vPROC = fn void (Uint xfb, Enum pname, Uint index, Int* param);
PFNglGetTransformFeedbacki_vPROC getTransformFeedbacki_v = null;
alias PFNglGetTransformFeedbacki64_vPROC = fn void (Uint xfb, Enum pname, Uint index, Int64* param);
PFNglGetTransformFeedbacki64_vPROC getTransformFeedbacki64_v = null;
alias PFNglCreateBuffersPROC = fn void (Sizei n, Uint* buffers);
PFNglCreateBuffersPROC createBuffers = null;
alias PFNglNamedBufferStoragePROC = fn void (Uint buffer, Sizeiptr size, void* data, Bitfield flags);
PFNglNamedBufferStoragePROC namedBufferStorage = null;
alias PFNglNamedBufferDataPROC = fn void (Uint buffer, Sizeiptr size, void* data, Enum usage);
PFNglNamedBufferDataPROC namedBufferData = null;
alias PFNglNamedBufferSubDataPROC = fn void (Uint buffer, Intptr offset, Sizeiptr size, void* data);
PFNglNamedBufferSubDataPROC namedBufferSubData = null;
alias PFNglCopyNamedBufferSubDataPROC = fn void (Uint readBuffer, Uint writeBuffer, Intptr readOffset, Intptr writeOffset, Sizeiptr size);
PFNglCopyNamedBufferSubDataPROC copyNamedBufferSubData = null;
alias PFNglClearNamedBufferDataPROC = fn void (Uint buffer, Enum internalformat, Enum format, Enum type, void* data);
PFNglClearNamedBufferDataPROC clearNamedBufferData = null;
alias PFNglClearNamedBufferSubDataPROC = fn void (Uint buffer, Enum internalformat, Intptr offset, Sizeiptr size, Enum format, Enum type, void* data);
PFNglClearNamedBufferSubDataPROC clearNamedBufferSubData = null;
alias PFNglMapNamedBufferPROC = fn void*(Uint buffer, Enum access);
PFNglMapNamedBufferPROC mapNamedBuffer = null;
alias PFNglMapNamedBufferRangePROC = fn void*(Uint buffer, Intptr offset, Sizeiptr length, Bitfield access);
PFNglMapNamedBufferRangePROC mapNamedBufferRange = null;
alias PFNglUnmapNamedBufferPROC = fn Boolean (Uint buffer);
PFNglUnmapNamedBufferPROC unmapNamedBuffer = null;
alias PFNglFlushMappedNamedBufferRangePROC = fn void (Uint buffer, Intptr offset, Sizeiptr length);
PFNglFlushMappedNamedBufferRangePROC flushMappedNamedBufferRange = null;
alias PFNglGetNamedBufferParameterivPROC = fn void (Uint buffer, Enum pname, Int* params);
PFNglGetNamedBufferParameterivPROC getNamedBufferParameteriv = null;
alias PFNglGetNamedBufferParameteri64vPROC = fn void (Uint buffer, Enum pname, Int64* params);
PFNglGetNamedBufferParameteri64vPROC getNamedBufferParameteri64v = null;
alias PFNglGetNamedBufferPointervPROC = fn void (Uint buffer, Enum pname, void** params);
PFNglGetNamedBufferPointervPROC getNamedBufferPointerv = null;
alias PFNglGetNamedBufferSubDataPROC = fn void (Uint buffer, Intptr offset, Sizeiptr size, void* data);
PFNglGetNamedBufferSubDataPROC getNamedBufferSubData = null;
alias PFNglCreateFramebuffersPROC = fn void (Sizei n, Uint* framebuffers);
PFNglCreateFramebuffersPROC createFramebuffers = null;
alias PFNglNamedFramebufferRenderbufferPROC = fn void (Uint framebuffer, Enum attachment, Enum renderbuffertarget, Uint renderbuffer);
PFNglNamedFramebufferRenderbufferPROC namedFramebufferRenderbuffer = null;
alias PFNglNamedFramebufferParameteriPROC = fn void (Uint framebuffer, Enum pname, Int param);
PFNglNamedFramebufferParameteriPROC namedFramebufferParameteri = null;
alias PFNglNamedFramebufferTexturePROC = fn void (Uint framebuffer, Enum attachment, Uint texture, Int level);
PFNglNamedFramebufferTexturePROC namedFramebufferTexture = null;
alias PFNglNamedFramebufferTextureLayerPROC = fn void (Uint framebuffer, Enum attachment, Uint texture, Int level, Int layer);
PFNglNamedFramebufferTextureLayerPROC namedFramebufferTextureLayer = null;
alias PFNglNamedFramebufferDrawBufferPROC = fn void (Uint framebuffer, Enum buf);
PFNglNamedFramebufferDrawBufferPROC namedFramebufferDrawBuffer = null;
alias PFNglNamedFramebufferDrawBuffersPROC = fn void (Uint framebuffer, Sizei n, Enum* bufs);
PFNglNamedFramebufferDrawBuffersPROC namedFramebufferDrawBuffers = null;
alias PFNglNamedFramebufferReadBufferPROC = fn void (Uint framebuffer, Enum src);
PFNglNamedFramebufferReadBufferPROC namedFramebufferReadBuffer = null;
alias PFNglInvalidateNamedFramebufferDataPROC = fn void (Uint framebuffer, Sizei numAttachments, Enum* attachments);
PFNglInvalidateNamedFramebufferDataPROC invalidateNamedFramebufferData = null;
alias PFNglInvalidateNamedFramebufferSubDataPROC = fn void (Uint framebuffer, Sizei numAttachments, Enum* attachments, Int x, Int y, Sizei width, Sizei height);
PFNglInvalidateNamedFramebufferSubDataPROC invalidateNamedFramebufferSubData = null;
alias PFNglClearNamedFramebufferivPROC = fn void (Uint framebuffer, Enum buffer, Int drawbuffer, Int* value);
PFNglClearNamedFramebufferivPROC clearNamedFramebufferiv = null;
alias PFNglClearNamedFramebufferuivPROC = fn void (Uint framebuffer, Enum buffer, Int drawbuffer, Uint* value);
PFNglClearNamedFramebufferuivPROC clearNamedFramebufferuiv = null;
alias PFNglClearNamedFramebufferfvPROC = fn void (Uint framebuffer, Enum buffer, Int drawbuffer, Float* value);
PFNglClearNamedFramebufferfvPROC clearNamedFramebufferfv = null;
alias PFNglClearNamedFramebufferfiPROC = fn void (Uint framebuffer, Enum buffer, Int drawbuffer, Float depth, Int stencil);
PFNglClearNamedFramebufferfiPROC clearNamedFramebufferfi = null;
alias PFNglBlitNamedFramebufferPROC = fn void (Uint readFramebuffer, Uint drawFramebuffer, Int srcX0, Int srcY0, Int srcX1, Int srcY1, Int dstX0, Int dstY0, Int dstX1, Int dstY1, Bitfield mask, Enum filter);
PFNglBlitNamedFramebufferPROC blitNamedFramebuffer = null;
alias PFNglCheckNamedFramebufferStatusPROC = fn Enum (Uint framebuffer, Enum target);
PFNglCheckNamedFramebufferStatusPROC checkNamedFramebufferStatus = null;
alias PFNglGetNamedFramebufferParameterivPROC = fn void (Uint framebuffer, Enum pname, Int* param);
PFNglGetNamedFramebufferParameterivPROC getNamedFramebufferParameteriv = null;
alias PFNglGetNamedFramebufferAttachmentParameterivPROC = fn void (Uint framebuffer, Enum attachment, Enum pname, Int* params);
PFNglGetNamedFramebufferAttachmentParameterivPROC getNamedFramebufferAttachmentParameteriv = null;
alias PFNglCreateRenderbuffersPROC = fn void (Sizei n, Uint* renderbuffers);
PFNglCreateRenderbuffersPROC createRenderbuffers = null;
alias PFNglNamedRenderbufferStoragePROC = fn void (Uint renderbuffer, Enum internalformat, Sizei width, Sizei height);
PFNglNamedRenderbufferStoragePROC namedRenderbufferStorage = null;
alias PFNglNamedRenderbufferStorageMultisamplePROC = fn void (Uint renderbuffer, Sizei samples, Enum internalformat, Sizei width, Sizei height);
PFNglNamedRenderbufferStorageMultisamplePROC namedRenderbufferStorageMultisample = null;
alias PFNglGetNamedRenderbufferParameterivPROC = fn void (Uint renderbuffer, Enum pname, Int* params);
PFNglGetNamedRenderbufferParameterivPROC getNamedRenderbufferParameteriv = null;
alias PFNglCreateTexturesPROC = fn void (Enum target, Sizei n, Uint* textures);
PFNglCreateTexturesPROC createTextures = null;
alias PFNglTextureBufferPROC = fn void (Uint texture, Enum internalformat, Uint buffer);
PFNglTextureBufferPROC textureBuffer = null;
alias PFNglTextureBufferRangePROC = fn void (Uint texture, Enum internalformat, Uint buffer, Intptr offset, Sizeiptr size);
PFNglTextureBufferRangePROC textureBufferRange = null;
alias PFNglTextureStorage1DPROC = fn void (Uint texture, Sizei levels, Enum internalformat, Sizei width);
PFNglTextureStorage1DPROC textureStorage1D = null;
alias PFNglTextureStorage2DPROC = fn void (Uint texture, Sizei levels, Enum internalformat, Sizei width, Sizei height);
PFNglTextureStorage2DPROC textureStorage2D = null;
alias PFNglTextureStorage3DPROC = fn void (Uint texture, Sizei levels, Enum internalformat, Sizei width, Sizei height, Sizei depth);
PFNglTextureStorage3DPROC textureStorage3D = null;
alias PFNglTextureStorage2DMultisamplePROC = fn void (Uint texture, Sizei samples, Enum internalformat, Sizei width, Sizei height, Boolean fixedsamplelocations);
PFNglTextureStorage2DMultisamplePROC textureStorage2DMultisample = null;
alias PFNglTextureStorage3DMultisamplePROC = fn void (Uint texture, Sizei samples, Enum internalformat, Sizei width, Sizei height, Sizei depth, Boolean fixedsamplelocations);
PFNglTextureStorage3DMultisamplePROC textureStorage3DMultisample = null;
alias PFNglTextureSubImage1DPROC = fn void (Uint texture, Int level, Int xoffset, Sizei width, Enum format, Enum type, void* pixels);
PFNglTextureSubImage1DPROC textureSubImage1D = null;
alias PFNglTextureSubImage2DPROC = fn void (Uint texture, Int level, Int xoffset, Int yoffset, Sizei width, Sizei height, Enum format, Enum type, void* pixels);
PFNglTextureSubImage2DPROC textureSubImage2D = null;
alias PFNglTextureSubImage3DPROC = fn void (Uint texture, Int level, Int xoffset, Int yoffset, Int zoffset, Sizei width, Sizei height, Sizei depth, Enum format, Enum type, void* pixels);
PFNglTextureSubImage3DPROC textureSubImage3D = null;
alias PFNglCompressedTextureSubImage1DPROC = fn void (Uint texture, Int level, Int xoffset, Sizei width, Enum format, Sizei imageSize, void* data);
PFNglCompressedTextureSubImage1DPROC compressedTextureSubImage1D = null;
alias PFNglCompressedTextureSubImage2DPROC = fn void (Uint texture, Int level, Int xoffset, Int yoffset, Sizei width, Sizei height, Enum format, Sizei imageSize, void* data);
PFNglCompressedTextureSubImage2DPROC compressedTextureSubImage2D = null;
alias PFNglCompressedTextureSubImage3DPROC = fn void (Uint texture, Int level, Int xoffset, Int yoffset, Int zoffset, Sizei width, Sizei height, Sizei depth, Enum format, Sizei imageSize, void* data);
PFNglCompressedTextureSubImage3DPROC compressedTextureSubImage3D = null;
alias PFNglCopyTextureSubImage1DPROC = fn void (Uint texture, Int level, Int xoffset, Int x, Int y, Sizei width);
PFNglCopyTextureSubImage1DPROC copyTextureSubImage1D = null;
alias PFNglCopyTextureSubImage2DPROC = fn void (Uint texture, Int level, Int xoffset, Int yoffset, Int x, Int y, Sizei width, Sizei height);
PFNglCopyTextureSubImage2DPROC copyTextureSubImage2D = null;
alias PFNglCopyTextureSubImage3DPROC = fn void (Uint texture, Int level, Int xoffset, Int yoffset, Int zoffset, Int x, Int y, Sizei width, Sizei height);
PFNglCopyTextureSubImage3DPROC copyTextureSubImage3D = null;
alias PFNglTextureParameterfPROC = fn void (Uint texture, Enum pname, Float param);
PFNglTextureParameterfPROC textureParameterf = null;
alias PFNglTextureParameterfvPROC = fn void (Uint texture, Enum pname, Float* param);
PFNglTextureParameterfvPROC textureParameterfv = null;
alias PFNglTextureParameteriPROC = fn void (Uint texture, Enum pname, Int param);
PFNglTextureParameteriPROC textureParameteri = null;
alias PFNglTextureParameterIivPROC = fn void (Uint texture, Enum pname, Int* params);
PFNglTextureParameterIivPROC textureParameterIiv = null;
alias PFNglTextureParameterIuivPROC = fn void (Uint texture, Enum pname, Uint* params);
PFNglTextureParameterIuivPROC textureParameterIuiv = null;
alias PFNglTextureParameterivPROC = fn void (Uint texture, Enum pname, Int* param);
PFNglTextureParameterivPROC textureParameteriv = null;
alias PFNglGenerateTextureMipmapPROC = fn void (Uint texture);
PFNglGenerateTextureMipmapPROC generateTextureMipmap = null;
alias PFNglBindTextureUnitPROC = fn void (Uint unit, Uint texture);
PFNglBindTextureUnitPROC bindTextureUnit = null;
alias PFNglGetTextureImagePROC = fn void (Uint texture, Int level, Enum format, Enum type, Sizei bufSize, void* pixels);
PFNglGetTextureImagePROC getTextureImage = null;
alias PFNglGetCompressedTextureImagePROC = fn void (Uint texture, Int level, Sizei bufSize, void* pixels);
PFNglGetCompressedTextureImagePROC getCompressedTextureImage = null;
alias PFNglGetTextureLevelParameterfvPROC = fn void (Uint texture, Int level, Enum pname, Float* params);
PFNglGetTextureLevelParameterfvPROC getTextureLevelParameterfv = null;
alias PFNglGetTextureLevelParameterivPROC = fn void (Uint texture, Int level, Enum pname, Int* params);
PFNglGetTextureLevelParameterivPROC getTextureLevelParameteriv = null;
alias PFNglGetTextureParameterfvPROC = fn void (Uint texture, Enum pname, Float* params);
PFNglGetTextureParameterfvPROC getTextureParameterfv = null;
alias PFNglGetTextureParameterIivPROC = fn void (Uint texture, Enum pname, Int* params);
PFNglGetTextureParameterIivPROC getTextureParameterIiv = null;
alias PFNglGetTextureParameterIuivPROC = fn void (Uint texture, Enum pname, Uint* params);
PFNglGetTextureParameterIuivPROC getTextureParameterIuiv = null;
alias PFNglGetTextureParameterivPROC = fn void (Uint texture, Enum pname, Int* params);
PFNglGetTextureParameterivPROC getTextureParameteriv = null;
alias PFNglCreateVertexArraysPROC = fn void (Sizei n, Uint* arrays);
PFNglCreateVertexArraysPROC createVertexArrays = null;
alias PFNglDisableVertexArrayAttribPROC = fn void (Uint vaobj, Uint index);
PFNglDisableVertexArrayAttribPROC disableVertexArrayAttrib = null;
alias PFNglEnableVertexArrayAttribPROC = fn void (Uint vaobj, Uint index);
PFNglEnableVertexArrayAttribPROC enableVertexArrayAttrib = null;
alias PFNglVertexArrayElementBufferPROC = fn void (Uint vaobj, Uint buffer);
PFNglVertexArrayElementBufferPROC vertexArrayElementBuffer = null;
alias PFNglVertexArrayVertexBufferPROC = fn void (Uint vaobj, Uint bindingindex, Uint buffer, Intptr offset, Sizei stride);
PFNglVertexArrayVertexBufferPROC vertexArrayVertexBuffer = null;
alias PFNglVertexArrayVertexBuffersPROC = fn void (Uint vaobj, Uint first, Sizei count, Uint* buffers, Intptr* offsets, Sizei* strides);
PFNglVertexArrayVertexBuffersPROC vertexArrayVertexBuffers = null;
alias PFNglVertexArrayAttribBindingPROC = fn void (Uint vaobj, Uint attribindex, Uint bindingindex);
PFNglVertexArrayAttribBindingPROC vertexArrayAttribBinding = null;
alias PFNglVertexArrayAttribFormatPROC = fn void (Uint vaobj, Uint attribindex, Int size, Enum type, Boolean normalized, Uint relativeoffset);
PFNglVertexArrayAttribFormatPROC vertexArrayAttribFormat = null;
alias PFNglVertexArrayAttribIFormatPROC = fn void (Uint vaobj, Uint attribindex, Int size, Enum type, Uint relativeoffset);
PFNglVertexArrayAttribIFormatPROC vertexArrayAttribIFormat = null;
alias PFNglVertexArrayAttribLFormatPROC = fn void (Uint vaobj, Uint attribindex, Int size, Enum type, Uint relativeoffset);
PFNglVertexArrayAttribLFormatPROC vertexArrayAttribLFormat = null;
alias PFNglVertexArrayBindingDivisorPROC = fn void (Uint vaobj, Uint bindingindex, Uint divisor);
PFNglVertexArrayBindingDivisorPROC vertexArrayBindingDivisor = null;
alias PFNglGetVertexArrayivPROC = fn void (Uint vaobj, Enum pname, Int* param);
PFNglGetVertexArrayivPROC getVertexArrayiv = null;
alias PFNglGetVertexArrayIndexedivPROC = fn void (Uint vaobj, Uint index, Enum pname, Int* param);
PFNglGetVertexArrayIndexedivPROC getVertexArrayIndexediv = null;
alias PFNglGetVertexArrayIndexed64ivPROC = fn void (Uint vaobj, Uint index, Enum pname, Int64* param);
PFNglGetVertexArrayIndexed64ivPROC getVertexArrayIndexed64iv = null;
alias PFNglCreateSamplersPROC = fn void (Sizei n, Uint* samplers);
PFNglCreateSamplersPROC createSamplers = null;
alias PFNglCreateProgramPipelinesPROC = fn void (Sizei n, Uint* pipelines);
PFNglCreateProgramPipelinesPROC createProgramPipelines = null;
alias PFNglCreateQueriesPROC = fn void (Enum target, Sizei n, Uint* ids);
PFNglCreateQueriesPROC createQueries = null;
alias PFNglGetQueryBufferObjecti64vPROC = fn void (Uint id, Uint buffer, Enum pname, Intptr offset);
PFNglGetQueryBufferObjecti64vPROC getQueryBufferObjecti64v = null;
alias PFNglGetQueryBufferObjectivPROC = fn void (Uint id, Uint buffer, Enum pname, Intptr offset);
PFNglGetQueryBufferObjectivPROC getQueryBufferObjectiv = null;
alias PFNglGetQueryBufferObjectui64vPROC = fn void (Uint id, Uint buffer, Enum pname, Intptr offset);
PFNglGetQueryBufferObjectui64vPROC getQueryBufferObjectui64v = null;
alias PFNglGetQueryBufferObjectuivPROC = fn void (Uint id, Uint buffer, Enum pname, Intptr offset);
PFNglGetQueryBufferObjectuivPROC getQueryBufferObjectuiv = null;
alias PFNglMemoryBarrierByRegionPROC = fn void (Bitfield barriers);
PFNglMemoryBarrierByRegionPROC memoryBarrierByRegion = null;
alias PFNglGetTextureSubImagePROC = fn void (Uint texture, Int level, Int xoffset, Int yoffset, Int zoffset, Sizei width, Sizei height, Sizei depth, Enum format, Enum type, Sizei bufSize, void* pixels);
PFNglGetTextureSubImagePROC getTextureSubImage = null;
alias PFNglGetCompressedTextureSubImagePROC = fn void (Uint texture, Int level, Int xoffset, Int yoffset, Int zoffset, Sizei width, Sizei height, Sizei depth, Sizei bufSize, void* pixels);
PFNglGetCompressedTextureSubImagePROC getCompressedTextureSubImage = null;
alias PFNglGetGraphicsResetStatusPROC = fn Enum ();
PFNglGetGraphicsResetStatusPROC getGraphicsResetStatus = null;
alias PFNglGetnCompressedTexImagePROC = fn void (Enum target, Int lod, Sizei bufSize, void* pixels);
PFNglGetnCompressedTexImagePROC getnCompressedTexImage = null;
alias PFNglGetnTexImagePROC = fn void (Enum target, Int level, Enum format, Enum type, Sizei bufSize, void* pixels);
PFNglGetnTexImagePROC getnTexImage = null;
alias PFNglGetnUniformdvPROC = fn void (Uint program, Int location, Sizei bufSize, Double* params);
PFNglGetnUniformdvPROC getnUniformdv = null;
alias PFNglGetnUniformfvPROC = fn void (Uint program, Int location, Sizei bufSize, Float* params);
PFNglGetnUniformfvPROC getnUniformfv = null;
alias PFNglGetnUniformivPROC = fn void (Uint program, Int location, Sizei bufSize, Int* params);
PFNglGetnUniformivPROC getnUniformiv = null;
alias PFNglGetnUniformuivPROC = fn void (Uint program, Int location, Sizei bufSize, Uint* params);
PFNglGetnUniformuivPROC getnUniformuiv = null;
alias PFNglReadnPixelsPROC = fn void (Int x, Int y, Sizei width, Sizei height, Enum format, Enum type, Sizei bufSize, void* data);
PFNglReadnPixelsPROC readnPixels = null;
alias PFNglTextureBarrierPROC = fn void ();
PFNglTextureBarrierPROC textureBarrier = null;


fn void load_gl_4_5(LoadFn load)
{
    clipControl = load("glClipControl");
    createTransformFeedbacks = load("glCreateTransformFeedbacks");
    transformFeedbackBufferBase = load("glTransformFeedbackBufferBase");
    transformFeedbackBufferRange = load("glTransformFeedbackBufferRange");
    getTransformFeedbackiv = load("glGetTransformFeedbackiv");
    getTransformFeedbacki_v = load("glGetTransformFeedbacki_v");
    getTransformFeedbacki64_v = load("glGetTransformFeedbacki64_v");
    createBuffers = load("glCreateBuffers");
    namedBufferStorage = load("glNamedBufferStorage");
    namedBufferData = load("glNamedBufferData");
    namedBufferSubData = load("glNamedBufferSubData");
    copyNamedBufferSubData = load("glCopyNamedBufferSubData");
    clearNamedBufferData = load("glClearNamedBufferData");
    clearNamedBufferSubData = load("glClearNamedBufferSubData");
    mapNamedBuffer = load("glMapNamedBuffer");
    mapNamedBufferRange = load("glMapNamedBufferRange");
    unmapNamedBuffer = load("glUnmapNamedBuffer");
    flushMappedNamedBufferRange = load("glFlushMappedNamedBufferRange");
    getNamedBufferParameteriv = load("glGetNamedBufferParameteriv");
    getNamedBufferParameteri64v = load("glGetNamedBufferParameteri64v");
    getNamedBufferPointerv = load("glGetNamedBufferPointerv");
    getNamedBufferSubData = load("glGetNamedBufferSubData");
    createFramebuffers = load("glCreateFramebuffers");
    namedFramebufferRenderbuffer = load("glNamedFramebufferRenderbuffer");
    namedFramebufferParameteri = load("glNamedFramebufferParameteri");
    namedFramebufferTexture = load("glNamedFramebufferTexture");
    namedFramebufferTextureLayer = load("glNamedFramebufferTextureLayer");
    namedFramebufferDrawBuffer = load("glNamedFramebufferDrawBuffer");
    namedFramebufferDrawBuffers = load("glNamedFramebufferDrawBuffers");
    namedFramebufferReadBuffer = load("glNamedFramebufferReadBuffer");
    invalidateNamedFramebufferData = load("glInvalidateNamedFramebufferData");
    invalidateNamedFramebufferSubData = load("glInvalidateNamedFramebufferSubData");
    clearNamedFramebufferiv = load("glClearNamedFramebufferiv");
    clearNamedFramebufferuiv = load("glClearNamedFramebufferuiv");
    clearNamedFramebufferfv = load("glClearNamedFramebufferfv");
    clearNamedFramebufferfi = load("glClearNamedFramebufferfi");
    blitNamedFramebuffer = load("glBlitNamedFramebuffer");
    checkNamedFramebufferStatus = load("glCheckNamedFramebufferStatus");
    getNamedFramebufferParameteriv = load("glGetNamedFramebufferParameteriv");
    getNamedFramebufferAttachmentParameteriv = load("glGetNamedFramebufferAttachmentParameteriv");
    createRenderbuffers = load("glCreateRenderbuffers");
    namedRenderbufferStorage = load("glNamedRenderbufferStorage");
    namedRenderbufferStorageMultisample = load("glNamedRenderbufferStorageMultisample");
    getNamedRenderbufferParameteriv = load("glGetNamedRenderbufferParameteriv");
    createTextures = load("glCreateTextures");
    textureBuffer = load("glTextureBuffer");
    textureBufferRange = load("glTextureBufferRange");
    textureStorage1D = load("glTextureStorage1D");
    textureStorage2D = load("glTextureStorage2D");
    textureStorage3D = load("glTextureStorage3D");
    textureStorage2DMultisample = load("glTextureStorage2DMultisample");
    textureStorage3DMultisample = load("glTextureStorage3DMultisample");
    textureSubImage1D = load("glTextureSubImage1D");
    textureSubImage2D = load("glTextureSubImage2D");
    textureSubImage3D = load("glTextureSubImage3D");
    compressedTextureSubImage1D = load("glCompressedTextureSubImage1D");
    compressedTextureSubImage2D = load("glCompressedTextureSubImage2D");
    compressedTextureSubImage3D = load("glCompressedTextureSubImage3D");
    copyTextureSubImage1D = load("glCopyTextureSubImage1D");
    copyTextureSubImage2D = load("glCopyTextureSubImage2D");
    copyTextureSubImage3D = load("glCopyTextureSubImage3D");
    textureParameterf = load("glTextureParameterf");
    textureParameterfv = load("glTextureParameterfv");
    textureParameteri = load("glTextureParameteri");
    textureParameterIiv = load("glTextureParameterIiv");
    textureParameterIuiv = load("glTextureParameterIuiv");
    textureParameteriv = load("glTextureParameteriv");
    generateTextureMipmap = load("glGenerateTextureMipmap");
    bindTextureUnit = load("glBindTextureUnit");
    getTextureImage = load("glGetTextureImage");
    getCompressedTextureImage = load("glGetCompressedTextureImage");
    getTextureLevelParameterfv = load("glGetTextureLevelParameterfv");
    getTextureLevelParameteriv = load("glGetTextureLevelParameteriv");
    getTextureParameterfv = load("glGetTextureParameterfv");
    getTextureParameterIiv = load("glGetTextureParameterIiv");
    getTextureParameterIuiv = load("glGetTextureParameterIuiv");
    getTextureParameteriv = load("glGetTextureParameteriv");
    createVertexArrays = load("glCreateVertexArrays");
    disableVertexArrayAttrib = load("glDisableVertexArrayAttrib");
    enableVertexArrayAttrib = load("glEnableVertexArrayAttrib");
    vertexArrayElementBuffer = load("glVertexArrayElementBuffer");
    vertexArrayVertexBuffer = load("glVertexArrayVertexBuffer");
    vertexArrayVertexBuffers = load("glVertexArrayVertexBuffers");
    vertexArrayAttribBinding = load("glVertexArrayAttribBinding");
    vertexArrayAttribFormat = load("glVertexArrayAttribFormat");
    vertexArrayAttribIFormat = load("glVertexArrayAttribIFormat");
    vertexArrayAttribLFormat = load("glVertexArrayAttribLFormat");
    vertexArrayBindingDivisor = load("glVertexArrayBindingDivisor");
    getVertexArrayiv = load("glGetVertexArrayiv");
    getVertexArrayIndexediv = load("glGetVertexArrayIndexediv");
    getVertexArrayIndexed64iv = load("glGetVertexArrayIndexed64iv");
    createSamplers = load("glCreateSamplers");
    createProgramPipelines = load("glCreateProgramPipelines");
    createQueries = load("glCreateQueries");
    getQueryBufferObjecti64v = load("glGetQueryBufferObjecti64v");
    getQueryBufferObjectiv = load("glGetQueryBufferObjectiv");
    getQueryBufferObjectui64v = load("glGetQueryBufferObjectui64v");
    getQueryBufferObjectuiv = load("glGetQueryBufferObjectuiv");
    memoryBarrierByRegion = load("glMemoryBarrierByRegion");
    getTextureSubImage = load("glGetTextureSubImage");
    getCompressedTextureSubImage = load("glGetCompressedTextureSubImage");
    getGraphicsResetStatus = load("glGetGraphicsResetStatus");
    getnCompressedTexImage = load("glGetnCompressedTexImage");
    getnTexImage = load("glGetnTexImage");
    getnUniformdv = load("glGetnUniformdv");
    getnUniformfv = load("glGetnUniformfv");
    getnUniformiv = load("glGetnUniformiv");
    getnUniformuiv = load("glGetnUniformuiv");
    readnPixels = load("glReadnPixels");
    textureBarrier = load("glTextureBarrier");
}

module opengl::gl @if(opengl::version() >= 46);
import opengl;

const SHADER_BINARY_FORMAT_SPIR_V        = 0x9551;
const SPIR_V_BINARY                      = 0x9552;
const PARAMETER_BUFFER                   = 0x80EE;
const PARAMETER_BUFFER_BINDING           = 0x80EF;
const CONTEXT_FLAG_NO_ERROR_BIT          = 0x00000008;
const VERTICES_SUBMITTED                 = 0x82EE;
const PRIMITIVES_SUBMITTED               = 0x82EF;
const VERTEX_SHADER_INVOCATIONS          = 0x82F0;
const TESS_CONTROL_SHADER_PATCHES        = 0x82F1;
const TESS_EVALUATION_SHADER_INVOCATIONS = 0x82F2;
const GEOMETRY_SHADER_PRIMITIVES_EMITTED = 0x82F3;
const FRAGMENT_SHADER_INVOCATIONS        = 0x82F4;
const COMPUTE_SHADER_INVOCATIONS         = 0x82F5;
const CLIPPING_INPUT_PRIMITIVES          = 0x82F6;
const CLIPPING_OUTPUT_PRIMITIVES         = 0x82F7;
const POLYGON_OFFSET_CLAMP               = 0x8E1B;
const SPIR_V_EXTENSIONS                  = 0x9553;
const NUM_SPIR_V_EXTENSIONS              = 0x9554;
const TEXTURE_MAX_ANISOTROPY             = 0x84FE;
const MAX_TEXTURE_MAX_ANISOTROPY         = 0x84FF;
const TRANSFORM_FEEDBACK_OVERFLOW        = 0x82EC;
const TRANSFORM_FEEDBACK_STREAM_OVERFLOW = 0x82ED;

alias PFNglSpecializeShaderPROC = fn void (Uint shader, ZString pEntryPoint, Uint numSpecializationants, Uint* pConstantIndex, Uint* pConstantValue);
PFNglSpecializeShaderPROC specializeShader = null;
alias PFNglMultiDrawArraysIndirectCountPROC = fn void (Enum mode, void* indirect, Intptr drawcount, Sizei maxdrawcount, Sizei stride);
PFNglMultiDrawArraysIndirectCountPROC multiDrawArraysIndirectCount = null;
alias PFNglMultiDrawElementsIndirectCountPROC = fn void (Enum mode, Enum type, void* indirect, Intptr drawcount, Sizei maxdrawcount, Sizei stride);
PFNglMultiDrawElementsIndirectCountPROC multiDrawElementsIndirectCount = null;
alias PFNglPolygonOffsetClampPROC = fn void (Float factor, Float units, Float clamp);
PFNglPolygonOffsetClampPROC polygonOffsetClamp = null;


fn void load_gl_4_6(LoadFn load)
{
    specializeShader = load("glSpecializeShader");
    multiDrawArraysIndirectCount = load("glMultiDrawArraysIndirectCount");
    multiDrawElementsIndirectCount = load("glMultiDrawElementsIndirectCount");
    polygonOffsetClamp = load("glPolygonOffsetClamp");
}

module opengl::gl;
import opengl;

fn void load_gl(LoadFn load)
{
    uint version = opengl::version();
    if (version >= 10) load_gl_1_0(load);
    if (version >= 11) load_gl_1_1(load);
    if (version >= 12) load_gl_1_2(load);
    if (version >= 13) load_gl_1_3(load);
    if (version >= 14) load_gl_1_4(load);
    if (version >= 15) load_gl_1_5(load);
    if (version >= 20) load_gl_2_0(load);
    if (version >= 21) load_gl_2_1(load);
    if (version >= 30) load_gl_3_0(load);
    if (version >= 31) load_gl_3_1(load);
    if (version >= 32) load_gl_3_2(load);
    if (version >= 33) load_gl_3_3(load);
    if (version >= 40) load_gl_4_0(load);
    if (version >= 41) load_gl_4_1(load);
    if (version >= 42) load_gl_4_2(load);
    if (version >= 43) load_gl_4_3(load);
    if (version >= 44) load_gl_4_4(load);
    if (version >= 45) load_gl_4_5(load);
    if (version >= 46) load_gl_4_6(load);
}

/*

#ifndef ARB_ES2_compatibility
#define ARB_ES2_compatibility 1
#endif /* ARB_ES2_compatibility* /

#ifndef ARB_ES3_1_compatibility
#define ARB_ES3_1_compatibility 1
#endif /* ARB_ES3_1_compatibility* /

#ifndef ARB_ES3_2_compatibility
#define ARB_ES3_2_compatibility 1
#define PRIMITIVE_BOUNDING_BOX_ARB     0x92BE
#define MULTISAMPLE_LINE_WIDTH_RANGE_ARB 0x9381
#define MULTISAMPLE_LINE_WIDTH_GRANULARITY_ARB 0x9382
alias PFNglprimitiveboundingboxarbPROC = fn void(Float minX, Float minY, Float minZ, Float minW, Float maxX, Float maxY, Float maxZ, Float maxW);
#ifdef GLEXT_PROTOTYPES
void glPrimitiveBoundingBoxARB (Float minX, Float minY, Float minZ, Float minW, Float maxX, Float maxY, Float maxZ, Float maxW);
#endif
#endif /* ARB_ES3_2_compatibility* /

#ifndef ARB_ES3_compatibility
#define ARB_ES3_compatibility 1
#endif /* ARB_ES3_compatibility* /

#ifndef ARB_arrays_of_arrays
#define ARB_arrays_of_arrays 1
#endif /* ARB_arrays_of_arrays* /

#ifndef ARB_base_instance
#define ARB_base_instance 1
#endif /* ARB_base_instance* /

#ifndef ARB_bindless_texture
#define ARB_bindless_texture 1
typedef khronos_uint64_t Uint64EXT;
#define UNSIGNED_INT64_ARB             0x140F
alias PFNglgettexturehandlearbPROC = fn Uint64(Uint texture);
alias PFNglgettexturesamplerhandlearbPROC = fn Uint64(Uint texture, Uint sampler);
alias PFNglmaketexturehandleresidentarbPROC = fn void(Uint64 handle);
alias PFNglmaketexturehandlenonresidentarbPROC = fn void(Uint64 handle);
alias PFNglgetimagehandlearbPROC = fn Uint64(Uint texture, Int level, Boolean layered, Int layer, Enum format);
alias PFNglmakeimagehandleresidentarbPROC = fn void(Uint64 handle, Enum access);
alias PFNglmakeimagehandlenonresidentarbPROC = fn void(Uint64 handle);
alias PFNgluniformhandleui64arbPROC = fn void(Int location, Uint64 value);
alias PFNgluniformhandleui64varbPROC = fn void(Int location, Sizei count, Uint64* value);
alias PFNglprogramuniformhandleui64arbPROC = fn void(Uint program, Int location, Uint64 value);
alias PFNglprogramuniformhandleui64varbPROC = fn void(Uint program, Int location, Sizei count, Uint64* values);
alias PFNglistexturehandleresidentarbPROC = fn Boolean(Uint64 handle);
alias PFNglisimagehandleresidentarbPROC = fn Boolean(Uint64 handle);
alias PFNglvertexattribl1ui64arbPROC = fn void(Uint index, Uint64EXT x);
alias PFNglvertexattribl1ui64varbPROC = fn void(Uint index, Uint64EXT* v);
alias PFNglgetvertexattriblui64varbPROC = fn void(Uint index, Enum pname, Uint64EXT* params);
#ifdef GLEXT_PROTOTYPES
Uint64 glGetTextureHandleARB (Uint texture);
Uint64 glGetTextureSamplerHandleARB (Uint texture, Uint sampler);
void glMakeTextureHandleResidentARB (Uint64 handle);
void glMakeTextureHandleNonResidentARB (Uint64 handle);
Uint64 glGetImageHandleARB (Uint texture, Int level, Boolean layered, Int layer, Enum format);
void glMakeImageHandleResidentARB (Uint64 handle, Enum access);
void glMakeImageHandleNonResidentARB (Uint64 handle);
void glUniformHandleui64ARB (Int location, Uint64 value);
void glUniformHandleui64vARB (Int location, Sizei count, Uint64* value);
void glProgramUniformHandleui64ARB (Uint program, Int location, Uint64 value);
void glProgramUniformHandleui64vARB (Uint program, Int location, Sizei count, Uint64* values);
Boolean glIsTextureHandleResidentARB (Uint64 handle);
Boolean glIsImageHandleResidentARB (Uint64 handle);
void glVertexAttribL1ui64ARB (Uint index, Uint64EXT x);
void glVertexAttribL1ui64vARB (Uint index, Uint64EXT* v);
void glGetVertexAttribLui64vARB (Uint index, Enum pname, Uint64EXT* params);
#endif
#endif /* ARB_bindless_texture* /

#ifndef ARB_blend_func_extended
#define ARB_blend_func_extended 1
#endif /* ARB_blend_func_extended* /

#ifndef ARB_buffer_storage
#define ARB_buffer_storage 1
#endif /* ARB_buffer_storage* /

#ifndef ARB_cl_event
#define ARB_cl_event 1
struct _cl_context;
struct _cl_event;
#define SYNC_CL_EVENT_ARB              0x8240
#define SYNC_CL_EVENT_COMPLETE_ARB     0x8241
alias PFNglcreatesyncfromcleventarbPROC = fn Sync(struct _cl_context* context, struct _cl_event* event, Bitfield flags);
#ifdef GLEXT_PROTOTYPES
Sync glCreateSyncFromCLeventARB (struct _cl_context* context, struct _cl_event* event, Bitfield flags);
#endif
#endif /* ARB_cl_event* /

#ifndef ARB_clear_buffer_object
#define ARB_clear_buffer_object 1
#endif /* ARB_clear_buffer_object* /

#ifndef ARB_clear_texture
#define ARB_clear_texture 1
#endif /* ARB_clear_texture* /

#ifndef ARB_clip_control
#define ARB_clip_control 1
#endif /* ARB_clip_control* /

#ifndef ARB_compressed_texture_pixel_storage
#define ARB_compressed_texture_pixel_storage 1
#endif /* ARB_compressed_texture_pixel_storage* /

#ifndef ARB_compute_shader
#define ARB_compute_shader 1
#endif /* ARB_compute_shader* /

#ifndef ARB_compute_variable_group_size
#define ARB_compute_variable_group_size 1
#define MAX_COMPUTE_VARIABLE_GROUP_INVOCATIONS_ARB 0x9344
#define MAX_COMPUTE_FIXED_GROUP_INVOCATIONS_ARB 0x90EB
#define MAX_COMPUTE_VARIABLE_GROUP_SIZE_ARB 0x9345
#define MAX_COMPUTE_FIXED_GROUP_SIZE_ARB 0x91BF
alias PFNgldispatchcomputegroupsizearbPROC = fn void(Uint num_groups_x, Uint num_groups_y, Uint num_groups_z, Uint group_size_x, Uint group_size_y, Uint group_size_z);
#ifdef GLEXT_PROTOTYPES
void glDispatchComputeGroupSizeARB (Uint num_groups_x, Uint num_groups_y, Uint num_groups_z, Uint group_size_x, Uint group_size_y, Uint group_size_z);
#endif
#endif /* ARB_compute_variable_group_size* /

#ifndef ARB_conditional_render_inverted
#define ARB_conditional_render_inverted 1
#endif /* ARB_conditional_render_inverted* /

#ifndef ARB_conservative_depth
#define ARB_conservative_depth 1
#endif /* ARB_conservative_depth* /

#ifndef ARB_copy_buffer
#define ARB_copy_buffer 1
#endif /* ARB_copy_buffer* /

#ifndef ARB_copy_image
#define ARB_copy_image 1
#endif /* ARB_copy_image* /

#ifndef ARB_cull_distance
#define ARB_cull_distance 1
#endif /* ARB_cull_distance* /

#ifndef ARB_debug_output
#define ARB_debug_output 1
typedef void (*GLDEBUGPROCARB)(Enum source,Enum type,Uint id,Enum severity,Sizei length,ZString message,const void* userParam);
#define DEBUG_OUTPUT_SYNCHRONOUS_ARB   0x8242
#define DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_ARB 0x8243
#define DEBUG_CALLBACK_FUNCTION_ARB    0x8244
#define DEBUG_CALLBACK_USER_PARAM_ARB  0x8245
#define DEBUG_SOURCE_API_ARB           0x8246
#define DEBUG_SOURCE_WINDOW_SYSTEM_ARB 0x8247
#define DEBUG_SOURCE_SHADER_COMPILER_ARB 0x8248
#define DEBUG_SOURCE_THIRD_PARTY_ARB   0x8249
#define DEBUG_SOURCE_APPLICATION_ARB   0x824A
#define DEBUG_SOURCE_OTHER_ARB         0x824B
#define DEBUG_TYPE_ERROR_ARB           0x824C
#define DEBUG_TYPE_DEPRECATED_BEHAVIOR_ARB 0x824D
#define DEBUG_TYPE_UNDEFINED_BEHAVIOR_ARB 0x824E
#define DEBUG_TYPE_PORTABILITY_ARB     0x824F
#define DEBUG_TYPE_PERFORMANCE_ARB     0x8250
#define DEBUG_TYPE_OTHER_ARB           0x8251
#define MAX_DEBUG_MESSAGE_LENGTH_ARB   0x9143
#define MAX_DEBUG_LOGGED_MESSAGES_ARB  0x9144
#define DEBUG_LOGGED_MESSAGES_ARB      0x9145
#define DEBUG_SEVERITY_HIGH_ARB        0x9146
#define DEBUG_SEVERITY_MEDIUM_ARB      0x9147
#define DEBUG_SEVERITY_LOW_ARB         0x9148
alias PFNgldebugmessagecontrolarbPROC = fn void(Enum source, Enum type, Enum severity, Sizei count, Uint* ids, Boolean enabled);
alias PFNgldebugmessageinsertarbPROC = fn void(Enum source, Enum type, Uint id, Enum severity, Sizei length, ZString buf);
alias PFNgldebugmessagecallbackarbPROC = fn void(GLDEBUGPROCARB callback, void* userParam);
alias PFNglgetdebugmessagelogarbPROC = fn Uint(Uint count, Sizei bufSize, Enum* sources, Enum* types, Uint* ids, Enum* severities, Sizei* lengths, ZString messageLog);
#ifdef GLEXT_PROTOTYPES
void glDebugMessageControlARB (Enum source, Enum type, Enum severity, Sizei count, Uint* ids, Boolean enabled);
void glDebugMessageInsertARB (Enum source, Enum type, Uint id, Enum severity, Sizei length, ZString buf);
void glDebugMessageCallbackARB (GLDEBUGPROCARB callback, void* userParam);
Uint glGetDebugMessageLogARB (Uint count, Sizei bufSize, Enum* sources, Enum* types, Uint* ids, Enum* severities, Sizei* lengths, ZString messageLog);
#endif
#endif /* ARB_debug_output* /

#ifndef ARB_depth_buffer_float
#define ARB_depth_buffer_float 1
#endif /* ARB_depth_buffer_float* /

#ifndef ARB_depth_clamp
#define ARB_depth_clamp 1
#endif /* ARB_depth_clamp* /

#ifndef ARB_derivative_control
#define ARB_derivative_control 1
#endif /* ARB_derivative_control* /

#ifndef ARB_direct_state_access
#define ARB_direct_state_access 1
#endif /* ARB_direct_state_access* /

#ifndef ARB_draw_buffers_blend
#define ARB_draw_buffers_blend 1
alias PFNglblendequationiarbPROC = fn void(Uint buf, Enum mode);
alias PFNglblendequationseparateiarbPROC = fn void(Uint buf, Enum modeRGB, Enum modeAlpha);
alias PFNglblendfunciarbPROC = fn void(Uint buf, Enum src, Enum dst);
alias PFNglblendfuncseparateiarbPROC = fn void(Uint buf, Enum srcRGB, Enum dstRGB, Enum srcAlpha, Enum dstAlpha);
#ifdef GLEXT_PROTOTYPES
void glBlendEquationiARB (Uint buf, Enum mode);
void glBlendEquationSeparateiARB (Uint buf, Enum modeRGB, Enum modeAlpha);
void glBlendFunciARB (Uint buf, Enum src, Enum dst);
void glBlendFuncSeparateiARB (Uint buf, Enum srcRGB, Enum dstRGB, Enum srcAlpha, Enum dstAlpha);
#endif
#endif /* ARB_draw_buffers_blend* /

#ifndef ARB_draw_elements_base_vertex
#define ARB_draw_elements_base_vertex 1
#endif /* ARB_draw_elements_base_vertex* /

#ifndef ARB_draw_indirect
#define ARB_draw_indirect 1
#endif /* ARB_draw_indirect* /

#ifndef ARB_draw_instanced
#define ARB_draw_instanced 1
alias PFNgldrawarraysinstancedarbPROC = fn void(Enum mode, Int first, Sizei count, Sizei primcount);
alias PFNgldrawelementsinstancedarbPROC = fn void(Enum mode, Sizei count, Enum type, void* indices, Sizei primcount);
#ifdef GLEXT_PROTOTYPES
void glDrawArraysInstancedARB (Enum mode, Int first, Sizei count, Sizei primcount);
void glDrawElementsInstancedARB (Enum mode, Sizei count, Enum type, void* indices, Sizei primcount);
#endif
#endif /* ARB_draw_instanced* /

#ifndef ARB_enhanced_layouts
#define ARB_enhanced_layouts 1
#endif /* ARB_enhanced_layouts* /

#ifndef ARB_explicit_attrib_location
#define ARB_explicit_attrib_location 1
#endif /* ARB_explicit_attrib_location* /

#ifndef ARB_explicit_uniform_location
#define ARB_explicit_uniform_location 1
#endif /* ARB_explicit_uniform_location* /

#ifndef ARB_fragment_coord_conventions
#define ARB_fragment_coord_conventions 1
#endif /* ARB_fragment_coord_conventions* /

#ifndef ARB_fragment_layer_viewport
#define ARB_fragment_layer_viewport 1
#endif /* ARB_fragment_layer_viewport* /

#ifndef ARB_fragment_shader_interlock
#define ARB_fragment_shader_interlock 1
#endif /* ARB_fragment_shader_interlock* /

#ifndef ARB_framebuffer_no_attachments
#define ARB_framebuffer_no_attachments 1
#endif /* ARB_framebuffer_no_attachments* /

#ifndef ARB_framebuffer_object
#define ARB_framebuffer_object 1
#endif /* ARB_framebuffer_object* /

#ifndef ARB_framebuffer_sRGB
#define ARB_framebuffer_sRGB 1
#endif /* ARB_framebuffer_sRGB* /

#ifndef ARB_geometry_shader4
#define ARB_geometry_shader4 1
#define LINES_ADJACENCY_ARB            0x000A
#define LINE_STRIP_ADJACENCY_ARB       0x000B
#define TRIANGLES_ADJACENCY_ARB        0x000C
#define TRIANGLE_STRIP_ADJACENCY_ARB   0x000D
#define PROGRAM_POINT_SIZE_ARB         0x8642
#define MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_ARB 0x8C29
#define FRAMEBUFFER_ATTACHMENT_LAYERED_ARB 0x8DA7
#define FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_ARB 0x8DA8
#define FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_ARB 0x8DA9
#define GEOMETRY_SHADER_ARB            0x8DD9
#define GEOMETRY_VERTICES_OUT_ARB      0x8DDA
#define GEOMETRY_INPUT_TYPE_ARB        0x8DDB
#define GEOMETRY_OUTPUT_TYPE_ARB       0x8DDC
#define MAX_GEOMETRY_VARYING_COMPONENTS_ARB 0x8DDD
#define MAX_VERTEX_VARYING_COMPONENTS_ARB 0x8DDE
#define MAX_GEOMETRY_UNIFORM_COMPONENTS_ARB 0x8DDF
#define MAX_GEOMETRY_OUTPUT_VERTICES_ARB 0x8DE0
#define MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_ARB 0x8DE1
alias PFNglprogramparameteriarbPROC = fn void(Uint program, Enum pname, Int value);
alias PFNglframebuffertexturearbPROC = fn void(Enum target, Enum attachment, Uint texture, Int level);
alias PFNglframebuffertexturelayerarbPROC = fn void(Enum target, Enum attachment, Uint texture, Int level, Int layer);
alias PFNglframebuffertexturefacearbPROC = fn void(Enum target, Enum attachment, Uint texture, Int level, Enum face);
#ifdef GLEXT_PROTOTYPES
void glProgramParameteriARB (Uint program, Enum pname, Int value);
void glFramebufferTextureARB (Enum target, Enum attachment, Uint texture, Int level);
void glFramebufferTextureLayerARB (Enum target, Enum attachment, Uint texture, Int level, Int layer);
void glFramebufferTextureFaceARB (Enum target, Enum attachment, Uint texture, Int level, Enum face);
#endif
#endif /* ARB_geometry_shader4* /

#ifndef ARB_get_program_binary
#define ARB_get_program_binary 1
#endif /* ARB_get_program_binary* /

#ifndef ARB_get_texture_sub_image
#define ARB_get_texture_sub_image 1
#endif /* ARB_get_texture_sub_image* /

#ifndef ARB_gl_spirv
#define ARB_gl_spirv 1
#define SHADER_BINARY_FORMAT_SPIR_V_ARB 0x9551
#define SPIR_V_BINARY_ARB              0x9552
alias PFNglspecializeshaderarbPROC = fn void(Uint shader, ZString pEntryPoint, Uint numSpecializationants, Uint* pConstantIndex, Uint* pConstantValue);
#ifdef GLEXT_PROTOTYPES
void glSpecializeShaderARB (Uint shader, ZString pEntryPoint, Uint numSpecializationants, Uint* pConstantIndex, Uint* pConstantValue);
#endif
#endif /* ARB_gl_spirv* /

#ifndef ARB_gpu_shader5
#define ARB_gpu_shader5 1
#endif /* ARB_gpu_shader5* /

#ifndef ARB_gpu_shader_fp64
#define ARB_gpu_shader_fp64 1
#endif /* ARB_gpu_shader_fp64* /

#ifndef ARB_gpu_shader_int64
#define ARB_gpu_shader_int64 1
#define INT64_ARB                      0x140E
#define INT64_VEC2_ARB                 0x8FE9
#define INT64_VEC3_ARB                 0x8FEA
#define INT64_VEC4_ARB                 0x8FEB
#define UNSIGNED_INT64_VEC2_ARB        0x8FF5
#define UNSIGNED_INT64_VEC3_ARB        0x8FF6
#define UNSIGNED_INT64_VEC4_ARB        0x8FF7
alias PFNgluniform1i64arbPROC = fn void(Int location, Int64 x);
alias PFNgluniform2i64arbPROC = fn void(Int location, Int64 x, Int64 y);
alias PFNgluniform3i64arbPROC = fn void(Int location, Int64 x, Int64 y, Int64 z);
alias PFNgluniform4i64arbPROC = fn void(Int location, Int64 x, Int64 y, Int64 z, Int64 w);
alias PFNgluniform1i64varbPROC = fn void(Int location, Sizei count, Int64* value);
alias PFNgluniform2i64varbPROC = fn void(Int location, Sizei count, Int64* value);
alias PFNgluniform3i64varbPROC = fn void(Int location, Sizei count, Int64* value);
alias PFNgluniform4i64varbPROC = fn void(Int location, Sizei count, Int64* value);
alias PFNgluniform1ui64arbPROC = fn void(Int location, Uint64 x);
alias PFNgluniform2ui64arbPROC = fn void(Int location, Uint64 x, Uint64 y);
alias PFNgluniform3ui64arbPROC = fn void(Int location, Uint64 x, Uint64 y, Uint64 z);
alias PFNgluniform4ui64arbPROC = fn void(Int location, Uint64 x, Uint64 y, Uint64 z, Uint64 w);
alias PFNgluniform1ui64varbPROC = fn void(Int location, Sizei count, Uint64* value);
alias PFNgluniform2ui64varbPROC = fn void(Int location, Sizei count, Uint64* value);
alias PFNgluniform3ui64varbPROC = fn void(Int location, Sizei count, Uint64* value);
alias PFNgluniform4ui64varbPROC = fn void(Int location, Sizei count, Uint64* value);
alias PFNglgetuniformi64varbPROC = fn void(Uint program, Int location, Int64* params);
alias PFNglgetuniformui64varbPROC = fn void(Uint program, Int location, Uint64* params);
alias PFNglgetnuniformi64varbPROC = fn void(Uint program, Int location, Sizei bufSize, Int64* params);
alias PFNglgetnuniformui64varbPROC = fn void(Uint program, Int location, Sizei bufSize, Uint64* params);
alias PFNglprogramuniform1i64arbPROC = fn void(Uint program, Int location, Int64 x);
alias PFNglprogramuniform2i64arbPROC = fn void(Uint program, Int location, Int64 x, Int64 y);
alias PFNglprogramuniform3i64arbPROC = fn void(Uint program, Int location, Int64 x, Int64 y, Int64 z);
alias PFNglprogramuniform4i64arbPROC = fn void(Uint program, Int location, Int64 x, Int64 y, Int64 z, Int64 w);
alias PFNglprogramuniform1i64varbPROC = fn void(Uint program, Int location, Sizei count, Int64* value);
alias PFNglprogramuniform2i64varbPROC = fn void(Uint program, Int location, Sizei count, Int64* value);
alias PFNglprogramuniform3i64varbPROC = fn void(Uint program, Int location, Sizei count, Int64* value);
alias PFNglprogramuniform4i64varbPROC = fn void(Uint program, Int location, Sizei count, Int64* value);
alias PFNglprogramuniform1ui64arbPROC = fn void(Uint program, Int location, Uint64 x);
alias PFNglprogramuniform2ui64arbPROC = fn void(Uint program, Int location, Uint64 x, Uint64 y);
alias PFNglprogramuniform3ui64arbPROC = fn void(Uint program, Int location, Uint64 x, Uint64 y, Uint64 z);
alias PFNglprogramuniform4ui64arbPROC = fn void(Uint program, Int location, Uint64 x, Uint64 y, Uint64 z, Uint64 w);
alias PFNglprogramuniform1ui64varbPROC = fn void(Uint program, Int location, Sizei count, Uint64* value);
alias PFNglprogramuniform2ui64varbPROC = fn void(Uint program, Int location, Sizei count, Uint64* value);
alias PFNglprogramuniform3ui64varbPROC = fn void(Uint program, Int location, Sizei count, Uint64* value);
alias PFNglprogramuniform4ui64varbPROC = fn void(Uint program, Int location, Sizei count, Uint64* value);
#ifdef GLEXT_PROTOTYPES
void glUniform1i64ARB (Int location, Int64 x);
void glUniform2i64ARB (Int location, Int64 x, Int64 y);
void glUniform3i64ARB (Int location, Int64 x, Int64 y, Int64 z);
void glUniform4i64ARB (Int location, Int64 x, Int64 y, Int64 z, Int64 w);
void glUniform1i64vARB (Int location, Sizei count, Int64* value);
void glUniform2i64vARB (Int location, Sizei count, Int64* value);
void glUniform3i64vARB (Int location, Sizei count, Int64* value);
void glUniform4i64vARB (Int location, Sizei count, Int64* value);
void glUniform1ui64ARB (Int location, Uint64 x);
void glUniform2ui64ARB (Int location, Uint64 x, Uint64 y);
void glUniform3ui64ARB (Int location, Uint64 x, Uint64 y, Uint64 z);
void glUniform4ui64ARB (Int location, Uint64 x, Uint64 y, Uint64 z, Uint64 w);
void glUniform1ui64vARB (Int location, Sizei count, Uint64* value);
void glUniform2ui64vARB (Int location, Sizei count, Uint64* value);
void glUniform3ui64vARB (Int location, Sizei count, Uint64* value);
void glUniform4ui64vARB (Int location, Sizei count, Uint64* value);
void glGetUniformi64vARB (Uint program, Int location, Int64* params);
void glGetUniformui64vARB (Uint program, Int location, Uint64* params);
void glGetnUniformi64vARB (Uint program, Int location, Sizei bufSize, Int64* params);
void glGetnUniformui64vARB (Uint program, Int location, Sizei bufSize, Uint64* params);
void glProgramUniform1i64ARB (Uint program, Int location, Int64 x);
void glProgramUniform2i64ARB (Uint program, Int location, Int64 x, Int64 y);
void glProgramUniform3i64ARB (Uint program, Int location, Int64 x, Int64 y, Int64 z);
void glProgramUniform4i64ARB (Uint program, Int location, Int64 x, Int64 y, Int64 z, Int64 w);
void glProgramUniform1i64vARB (Uint program, Int location, Sizei count, Int64* value);
void glProgramUniform2i64vARB (Uint program, Int location, Sizei count, Int64* value);
void glProgramUniform3i64vARB (Uint program, Int location, Sizei count, Int64* value);
void glProgramUniform4i64vARB (Uint program, Int location, Sizei count, Int64* value);
void glProgramUniform1ui64ARB (Uint program, Int location, Uint64 x);
void glProgramUniform2ui64ARB (Uint program, Int location, Uint64 x, Uint64 y);
void glProgramUniform3ui64ARB (Uint program, Int location, Uint64 x, Uint64 y, Uint64 z);
void glProgramUniform4ui64ARB (Uint program, Int location, Uint64 x, Uint64 y, Uint64 z, Uint64 w);
void glProgramUniform1ui64vARB (Uint program, Int location, Sizei count, Uint64* value);
void glProgramUniform2ui64vARB (Uint program, Int location, Sizei count, Uint64* value);
void glProgramUniform3ui64vARB (Uint program, Int location, Sizei count, Uint64* value);
void glProgramUniform4ui64vARB (Uint program, Int location, Sizei count, Uint64* value);
#endif
#endif /* ARB_gpu_shader_int64* /

#ifndef ARB_half_float_vertex
#define ARB_half_float_vertex 1
#endif /* ARB_half_float_vertex* /

#ifndef ARB_imaging
#define ARB_imaging 1
#endif /* ARB_imaging* /

#ifndef ARB_indirect_parameters
#define ARB_indirect_parameters 1
#define PARAMETER_BUFFER_ARB           0x80EE
#define PARAMETER_BUFFER_BINDING_ARB   0x80EF
alias PFNglmultidrawarraysindirectcountarbPROC = fn void(Enum mode, void* indirect, Intptr drawcount, Sizei maxdrawcount, Sizei stride);
alias PFNglmultidrawelementsindirectcountarbPROC = fn void(Enum mode, Enum type, void* indirect, Intptr drawcount, Sizei maxdrawcount, Sizei stride);
#ifdef GLEXT_PROTOTYPES
void glMultiDrawArraysIndirectCountARB (Enum mode, void* indirect, Intptr drawcount, Sizei maxdrawcount, Sizei stride);
void glMultiDrawElementsIndirectCountARB (Enum mode, Enum type, void* indirect, Intptr drawcount, Sizei maxdrawcount, Sizei stride);
#endif
#endif /* ARB_indirect_parameters* /

#ifndef ARB_instanced_arrays
#define ARB_instanced_arrays 1
#define VERTEX_ATTRIB_ARRAY_DIVISOR_ARB 0x88FE
alias PFNglvertexattribdivisorarbPROC = fn void(Uint index, Uint divisor);
#ifdef GLEXT_PROTOTYPES
void glVertexAttribDivisorARB (Uint index, Uint divisor);
#endif
#endif /* ARB_instanced_arrays* /

#ifndef ARB_internalformat_query
#define ARB_internalformat_query 1
#endif /* ARB_internalformat_query* /

#ifndef ARB_internalformat_query2
#define ARB_internalformat_query2 1
#define SRGB_DECODE_ARB                0x8299
#define VIEW_CLASS_EAC_R11             0x9383
#define VIEW_CLASS_EAC_RG11            0x9384
#define VIEW_CLASS_ETC2_RGB            0x9385
#define VIEW_CLASS_ETC2_RGBA           0x9386
#define VIEW_CLASS_ETC2_EAC_RGBA       0x9387
#define VIEW_CLASS_ASTC_4x4_RGBA       0x9388
#define VIEW_CLASS_ASTC_5x4_RGBA       0x9389
#define VIEW_CLASS_ASTC_5x5_RGBA       0x938A
#define VIEW_CLASS_ASTC_6x5_RGBA       0x938B
#define VIEW_CLASS_ASTC_6x6_RGBA       0x938C
#define VIEW_CLASS_ASTC_8x5_RGBA       0x938D
#define VIEW_CLASS_ASTC_8x6_RGBA       0x938E
#define VIEW_CLASS_ASTC_8x8_RGBA       0x938F
#define VIEW_CLASS_ASTC_10x5_RGBA      0x9390
#define VIEW_CLASS_ASTC_10x6_RGBA      0x9391
#define VIEW_CLASS_ASTC_10x8_RGBA      0x9392
#define VIEW_CLASS_ASTC_10x10_RGBA     0x9393
#define VIEW_CLASS_ASTC_12x10_RGBA     0x9394
#define VIEW_CLASS_ASTC_12x12_RGBA     0x9395
#endif /* ARB_internalformat_query2* /

#ifndef ARB_invalidate_subdata
#define ARB_invalidate_subdata 1
#endif /* ARB_invalidate_subdata* /

#ifndef ARB_map_buffer_alignment
#define ARB_map_buffer_alignment 1
#endif /* ARB_map_buffer_alignment* /

#ifndef ARB_map_buffer_range
#define ARB_map_buffer_range 1
#endif /* ARB_map_buffer_range* /

#ifndef ARB_multi_bind
#define ARB_multi_bind 1
#endif /* ARB_multi_bind* /

#ifndef ARB_multi_draw_indirect
#define ARB_multi_draw_indirect 1
#endif /* ARB_multi_draw_indirect* /

#ifndef ARB_occlusion_query2
#define ARB_occlusion_query2 1
#endif /* ARB_occlusion_query2* /

#ifndef ARB_parallel_shader_compile
#define ARB_parallel_shader_compile 1
#define MAX_SHADER_COMPILER_THREADS_ARB 0x91B0
#define COMPLETION_STATUS_ARB          0x91B1
alias PFNglmaxshadercompilerthreadsarbPROC = fn void(Uint count);
#ifdef GLEXT_PROTOTYPES
void glMaxShaderCompilerThreadsARB (Uint count);
#endif
#endif /* ARB_parallel_shader_compile* /

#ifndef ARB_pipeline_statistics_query
#define ARB_pipeline_statistics_query 1
#define VERTICES_SUBMITTED_ARB         0x82EE
#define PRIMITIVES_SUBMITTED_ARB       0x82EF
#define VERTEX_SHADER_INVOCATIONS_ARB  0x82F0
#define TESS_CONTROL_SHADER_PATCHES_ARB 0x82F1
#define TESS_EVALUATION_SHADER_INVOCATIONS_ARB 0x82F2
#define GEOMETRY_SHADER_PRIMITIVES_EMITTED_ARB 0x82F3
#define FRAGMENT_SHADER_INVOCATIONS_ARB 0x82F4
#define COMPUTE_SHADER_INVOCATIONS_ARB 0x82F5
#define CLIPPING_INPUT_PRIMITIVES_ARB  0x82F6
#define CLIPPING_OUTPUT_PRIMITIVES_ARB 0x82F7
#endif /* ARB_pipeline_statistics_query* /

#ifndef ARB_pixel_buffer_object
#define ARB_pixel_buffer_object 1
#define PIXEL_PACK_BUFFER_ARB          0x88EB
#define PIXEL_UNPACK_BUFFER_ARB        0x88EC
#define PIXEL_PACK_BUFFER_BINDING_ARB  0x88ED
#define PIXEL_UNPACK_BUFFER_BINDING_ARB 0x88EF
#endif /* ARB_pixel_buffer_object* /

#ifndef ARB_polygon_offset_clamp
#define ARB_polygon_offset_clamp 1
#endif /* ARB_polygon_offset_clamp* /

#ifndef ARB_post_depth_coverage
#define ARB_post_depth_coverage 1
#endif /* ARB_post_depth_coverage* /

#ifndef ARB_program_interface_query
#define ARB_program_interface_query 1
#endif /* ARB_program_interface_query* /

#ifndef ARB_provoking_vertex
#define ARB_provoking_vertex 1
#endif /* ARB_provoking_vertex* /

#ifndef ARB_query_buffer_object
#define ARB_query_buffer_object 1
#endif /* ARB_query_buffer_object* /

#ifndef ARB_robust_buffer_access_behavior
#define ARB_robust_buffer_access_behavior 1
#endif /* ARB_robust_buffer_access_behavior* /

#ifndef ARB_robustness
#define ARB_robustness 1
#define CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB 0x00000004
#define LOSE_CONTEXT_ON_RESET_ARB      0x8252
#define GUILTY_CONTEXT_RESET_ARB       0x8253
#define INNOCENT_CONTEXT_RESET_ARB     0x8254
#define UNKNOWN_CONTEXT_RESET_ARB      0x8255
#define RESET_NOTIFICATION_STRATEGY_ARB 0x8256
#define NO_RESET_NOTIFICATION_ARB      0x8261
alias PFNglgetgraphicsresetstatusarbPROC = fn Enum();
alias PFNglgetnteximagearbPROC = fn void(Enum target, Int level, Enum format, Enum type, Sizei bufSize, void* img);
alias PFNglreadnpixelsarbPROC = fn void(Int x, Int y, Sizei width, Sizei height, Enum format, Enum type, Sizei bufSize, void* data);
alias PFNglgetncompressedteximagearbPROC = fn void(Enum target, Int lod, Sizei bufSize, void* img);
alias PFNglgetnuniformfvarbPROC = fn void(Uint program, Int location, Sizei bufSize, Float* params);
alias PFNglgetnuniformivarbPROC = fn void(Uint program, Int location, Sizei bufSize, Int* params);
alias PFNglgetnuniformuivarbPROC = fn void(Uint program, Int location, Sizei bufSize, Uint* params);
alias PFNglgetnuniformdvarbPROC = fn void(Uint program, Int location, Sizei bufSize, Double* params);
#ifdef GLEXT_PROTOTYPES
Enum glGetGraphicsResetStatusARB ();
void glGetnTexImageARB (Enum target, Int level, Enum format, Enum type, Sizei bufSize, void* img);
void glReadnPixelsARB (Int x, Int y, Sizei width, Sizei height, Enum format, Enum type, Sizei bufSize, void* data);
void glGetnCompressedTexImageARB (Enum target, Int lod, Sizei bufSize, void* img);
void glGetnUniformfvARB (Uint program, Int location, Sizei bufSize, Float* params);
void glGetnUniformivARB (Uint program, Int location, Sizei bufSize, Int* params);
void glGetnUniformuivARB (Uint program, Int location, Sizei bufSize, Uint* params);
void glGetnUniformdvARB (Uint program, Int location, Sizei bufSize, Double* params);
#endif
#endif /* ARB_robustness* /

#ifndef ARB_robustness_isolation
#define ARB_robustness_isolation 1
#endif /* ARB_robustness_isolation* /

#ifndef ARB_sample_locations
#define ARB_sample_locations 1
#define SAMPLE_LOCATION_SUBPIXEL_BITS_ARB 0x933D
#define SAMPLE_LOCATION_PIXEL_GRID_WIDTH_ARB 0x933E
#define SAMPLE_LOCATION_PIXEL_GRID_HEIGHT_ARB 0x933F
#define PROGRAMMABLE_SAMPLE_LOCATION_TABLE_SIZE_ARB 0x9340
#define SAMPLE_LOCATION_ARB            0x8E50
#define PROGRAMMABLE_SAMPLE_LOCATION_ARB 0x9341
#define FRAMEBUFFER_PROGRAMMABLE_SAMPLE_LOCATIONS_ARB 0x9342
#define FRAMEBUFFER_SAMPLE_LOCATION_PIXEL_GRID_ARB 0x9343
alias PFNglframebuffersamplelocationsfvarbPROC = fn void(Enum target, Uint start, Sizei count, Float* v);
alias PFNglnamedframebuffersamplelocationsfvarbPROC = fn void(Uint framebuffer, Uint start, Sizei count, Float* v);
alias PFNglevaluatedepthvaluesarbPROC = fn void();
#ifdef GLEXT_PROTOTYPES
void glFramebufferSampleLocationsfvARB (Enum target, Uint start, Sizei count, Float* v);
void glNamedFramebufferSampleLocationsfvARB (Uint framebuffer, Uint start, Sizei count, Float* v);
void glEvaluateDepthValuesARB ();
#endif
#endif /* ARB_sample_locations* /

#ifndef ARB_sample_shading
#define ARB_sample_shading 1
#define SAMPLE_SHADING_ARB             0x8C36
#define MIN_SAMPLE_SHADING_VALUE_ARB   0x8C37
alias PFNglminsampleshadingarbPROC = fn void(Float value);
#ifdef GLEXT_PROTOTYPES
void glMinSampleShadingARB (Float value);
#endif
#endif /* ARB_sample_shading* /

#ifndef ARB_sampler_objects
#define ARB_sampler_objects 1
#endif /* ARB_sampler_objects* /

#ifndef ARB_seamless_cube_map
#define ARB_seamless_cube_map 1
#endif /* ARB_seamless_cube_map* /

#ifndef ARB_seamless_cubemap_per_texture
#define ARB_seamless_cubemap_per_texture 1
#endif /* ARB_seamless_cubemap_per_texture* /

#ifndef ARB_separate_shader_objects
#define ARB_separate_shader_objects 1
#endif /* ARB_separate_shader_objects* /

#ifndef ARB_shader_atomic_counter_ops
#define ARB_shader_atomic_counter_ops 1
#endif /* ARB_shader_atomic_counter_ops* /

#ifndef ARB_shader_atomic_counters
#define ARB_shader_atomic_counters 1
#endif /* ARB_shader_atomic_counters* /

#ifndef ARB_shader_ballot
#define ARB_shader_ballot 1
#endif /* ARB_shader_ballot* /

#ifndef ARB_shader_bit_encoding
#define ARB_shader_bit_encoding 1
#endif /* ARB_shader_bit_encoding* /

#ifndef ARB_shader_clock
#define ARB_shader_clock 1
#endif /* ARB_shader_clock* /

#ifndef ARB_shader_draw_parameters
#define ARB_shader_draw_parameters 1
#endif /* ARB_shader_draw_parameters* /

#ifndef ARB_shader_group_vote
#define ARB_shader_group_vote 1
#endif /* ARB_shader_group_vote* /

#ifndef ARB_shader_image_load_store
#define ARB_shader_image_load_store 1
#endif /* ARB_shader_image_load_store* /

#ifndef ARB_shader_image_size
#define ARB_shader_image_size 1
#endif /* ARB_shader_image_size* /

#ifndef ARB_shader_precision
#define ARB_shader_precision 1
#endif /* ARB_shader_precision* /

#ifndef ARB_shader_stencil_export
#define ARB_shader_stencil_export 1
#endif /* ARB_shader_stencil_export* /

#ifndef ARB_shader_storage_buffer_object
#define ARB_shader_storage_buffer_object 1
#endif /* ARB_shader_storage_buffer_object* /

#ifndef ARB_shader_subroutine
#define ARB_shader_subroutine 1
#endif /* ARB_shader_subroutine* /

#ifndef ARB_shader_texture_image_samples
#define ARB_shader_texture_image_samples 1
#endif /* ARB_shader_texture_image_samples* /

#ifndef ARB_shader_viewport_layer_array
#define ARB_shader_viewport_layer_array 1
#endif /* ARB_shader_viewport_layer_array* /

#ifndef ARB_shading_language_420pack
#define ARB_shading_language_420pack 1
#endif /* ARB_shading_language_420pack* /

#ifndef ARB_shading_language_include
#define ARB_shading_language_include 1
#define SHADER_INCLUDE_ARB             0x8DAE
#define NAMED_STRING_LENGTH_ARB        0x8DE9
#define NAMED_STRING_TYPE_ARB          0x8DEA
alias PFNglnamedstringarbPROC = fn void(Enum type, Int namelen, ZString name, Int stringlen, ZString string);
alias PFNgldeletenamedstringarbPROC = fn void(Int namelen, ZString name);
alias PFNglcompileshaderincludearbPROC = fn void(Uint shader, Sizei count, ZString* path, Int* length);
alias PFNglisnamedstringarbPROC = fn Boolean(Int namelen, ZString name);
alias PFNglgetnamedstringarbPROC = fn void(Int namelen, ZString name, Sizei bufSize, Int* stringlen, ZString string);
alias PFNglgetnamedstringivarbPROC = fn void(Int namelen, ZString name, Enum pname, Int* params);
#ifdef GLEXT_PROTOTYPES
void glNamedStringARB (Enum type, Int namelen, ZString name, Int stringlen, ZString string);
void glDeleteNamedStringARB (Int namelen, ZString name);
void glCompileShaderIncludeARB (Uint shader, Sizei count, ZString* path, Int* length);
Boolean glIsNamedStringARB (Int namelen, ZString name);
void glGetNamedStringARB (Int namelen, ZString name, Sizei bufSize, Int* stringlen, ZString string);
void glGetNamedStringivARB (Int namelen, ZString name, Enum pname, Int* params);
#endif
#endif /* ARB_shading_language_include* /

#ifndef ARB_shading_language_packing
#define ARB_shading_language_packing 1
#endif /* ARB_shading_language_packing* /

#ifndef ARB_sparse_buffer
#define ARB_sparse_buffer 1
#define SPARSE_STORAGE_BIT_ARB         0x0400
#define SPARSE_BUFFER_PAGE_SIZE_ARB    0x82F8
alias PFNglbufferpagecommitmentarbPROC = fn void(Enum target, Intptr offset, Sizeiptr size, Boolean commit);
alias PFNglnamedbufferpagecommitmentextPROC = fn void(Uint buffer, Intptr offset, Sizeiptr size, Boolean commit);
alias PFNglnamedbufferpagecommitmentarbPROC = fn void(Uint buffer, Intptr offset, Sizeiptr size, Boolean commit);
#ifdef GLEXT_PROTOTYPES
void glBufferPageCommitmentARB (Enum target, Intptr offset, Sizeiptr size, Boolean commit);
void glNamedBufferPageCommitmentEXT (Uint buffer, Intptr offset, Sizeiptr size, Boolean commit);
void glNamedBufferPageCommitmentARB (Uint buffer, Intptr offset, Sizeiptr size, Boolean commit);
#endif
#endif /* ARB_sparse_buffer* /

#ifndef ARB_sparse_texture
#define ARB_sparse_texture 1
#define TEXTURE_SPARSE_ARB             0x91A6
#define VIRTUAL_PAGE_SIZE_INDEX_ARB    0x91A7
#define NUM_SPARSE_LEVELS_ARB          0x91AA
#define NUM_VIRTUAL_PAGE_SIZES_ARB     0x91A8
#define VIRTUAL_PAGE_SIZE_X_ARB        0x9195
#define VIRTUAL_PAGE_SIZE_Y_ARB        0x9196
#define VIRTUAL_PAGE_SIZE_Z_ARB        0x9197
#define MAX_SPARSE_TEXTURE_SIZE_ARB    0x9198
#define MAX_SPARSE_3D_TEXTURE_SIZE_ARB 0x9199
#define MAX_SPARSE_ARRAY_TEXTURE_LAYERS_ARB 0x919A
#define SPARSE_TEXTURE_FULL_ARRAY_CUBE_MIPMAPS_ARB 0x91A9
alias PFNgltexpagecommitmentarbPROC = fn void(Enum target, Int level, Int xoffset, Int yoffset, Int zoffset, Sizei width, Sizei height, Sizei depth, Boolean commit);
#ifdef GLEXT_PROTOTYPES
void glTexPageCommitmentARB (Enum target, Int level, Int xoffset, Int yoffset, Int zoffset, Sizei width, Sizei height, Sizei depth, Boolean commit);
#endif
#endif /* ARB_sparse_texture* /

#ifndef ARB_sparse_texture2
#define ARB_sparse_texture2 1
#endif /* ARB_sparse_texture2* /

#ifndef ARB_sparse_texture_clamp
#define ARB_sparse_texture_clamp 1
#endif /* ARB_sparse_texture_clamp* /

#ifndef ARB_spirv_extensions
#define ARB_spirv_extensions 1
#endif /* ARB_spirv_extensions* /

#ifndef ARB_stencil_texturing
#define ARB_stencil_texturing 1
#endif /* ARB_stencil_texturing* /

#ifndef ARB_sync
#define ARB_sync 1
#endif /* ARB_sync* /

#ifndef ARB_tessellation_shader
#define ARB_tessellation_shader 1
#endif /* ARB_tessellation_shader* /

#ifndef ARB_texture_barrier
#define ARB_texture_barrier 1
#endif /* ARB_texture_barrier* /

#ifndef ARB_texture_border_clamp
#define ARB_texture_border_clamp 1
#define CLAMP_TO_BORDER_ARB            0x812D
#endif /* ARB_texture_border_clamp* /

#ifndef ARB_texture_buffer_object
#define ARB_texture_buffer_object 1
#define TEXTURE_BUFFER_ARB             0x8C2A
#define MAX_TEXTURE_BUFFER_SIZE_ARB    0x8C2B
#define TEXTURE_BINDING_BUFFER_ARB     0x8C2C
#define TEXTURE_BUFFER_DATA_STORE_BINDING_ARB 0x8C2D
#define TEXTURE_BUFFER_FORMAT_ARB      0x8C2E
alias PFNgltexbufferarbPROC = fn void(Enum target, Enum internalformat, Uint buffer);
#ifdef GLEXT_PROTOTYPES
void glTexBufferARB (Enum target, Enum internalformat, Uint buffer);
#endif
#endif /* ARB_texture_buffer_object* /

#ifndef ARB_texture_buffer_object_rgb32
#define ARB_texture_buffer_object_rgb32 1
#endif /* ARB_texture_buffer_object_rgb32* /

#ifndef ARB_texture_buffer_range
#define ARB_texture_buffer_range 1
#endif /* ARB_texture_buffer_range* /

#ifndef ARB_texture_compression_bptc
#define ARB_texture_compression_bptc 1
#define COMPRESSED_RGBA_BPTC_UNORM_ARB 0x8E8C
#define COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB 0x8E8D
#define COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB 0x8E8E
#define COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB 0x8E8F
#endif /* ARB_texture_compression_bptc* /

#ifndef ARB_texture_compression_rgtc
#define ARB_texture_compression_rgtc 1
#endif /* ARB_texture_compression_rgtc* /

#ifndef ARB_texture_cube_map_array
#define ARB_texture_cube_map_array 1
#define TEXTURE_CUBE_MAP_ARRAY_ARB     0x9009
#define TEXTURE_BINDING_CUBE_MAP_ARRAY_ARB 0x900A
#define PROXY_TEXTURE_CUBE_MAP_ARRAY_ARB 0x900B
#define SAMPLER_CUBE_MAP_ARRAY_ARB     0x900C
#define SAMPLER_CUBE_MAP_ARRAY_SHADOW_ARB 0x900D
#define INT_SAMPLER_CUBE_MAP_ARRAY_ARB 0x900E
#define UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_ARB 0x900F
#endif /* ARB_texture_cube_map_array* /

#ifndef ARB_texture_filter_anisotropic
#define ARB_texture_filter_anisotropic 1
#endif /* ARB_texture_filter_anisotropic* /

#ifndef ARB_texture_filter_minmax
#define ARB_texture_filter_minmax 1
#define TEXTURE_REDUCTION_MODE_ARB     0x9366
#define WEIGHTED_AVERAGE_ARB           0x9367
#endif /* ARB_texture_filter_minmax* /

#ifndef ARB_texture_gather
#define ARB_texture_gather 1
#define MIN_PROGRAM_TEXTURE_GATHER_OFFSET_ARB 0x8E5E
#define MAX_PROGRAM_TEXTURE_GATHER_OFFSET_ARB 0x8E5F
#define MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS_ARB 0x8F9F
#endif /* ARB_texture_gather* /

#ifndef ARB_texture_mirror_clamp_to_edge
#define ARB_texture_mirror_clamp_to_edge 1
#endif /* ARB_texture_mirror_clamp_to_edge* /

#ifndef ARB_texture_mirrored_repeat
#define ARB_texture_mirrored_repeat 1
#define MIRRORED_REPEAT_ARB            0x8370
#endif /* ARB_texture_mirrored_repeat* /

#ifndef ARB_texture_multisample
#define ARB_texture_multisample 1
#endif /* ARB_texture_multisample* /

#ifndef ARB_texture_non_power_of_two
#define ARB_texture_non_power_of_two 1
#endif /* ARB_texture_non_power_of_two* /

#ifndef ARB_texture_query_levels
#define ARB_texture_query_levels 1
#endif /* ARB_texture_query_levels* /

#ifndef ARB_texture_query_lod
#define ARB_texture_query_lod 1
#endif /* ARB_texture_query_lod* /

#ifndef ARB_texture_rg
#define ARB_texture_rg 1
#endif /* ARB_texture_rg* /

#ifndef ARB_texture_rgb10_a2ui
#define ARB_texture_rgb10_a2ui 1
#endif /* ARB_texture_rgb10_a2ui* /

#ifndef ARB_texture_stencil8
#define ARB_texture_stencil8 1
#endif /* ARB_texture_stencil8* /

#ifndef ARB_texture_storage
#define ARB_texture_storage 1
#endif /* ARB_texture_storage* /

#ifndef ARB_texture_storage_multisample
#define ARB_texture_storage_multisample 1
#endif /* ARB_texture_storage_multisample* /

#ifndef ARB_texture_swizzle
#define ARB_texture_swizzle 1
#endif /* ARB_texture_swizzle* /

#ifndef ARB_texture_view
#define ARB_texture_view 1
#endif /* ARB_texture_view* /

#ifndef ARB_timer_query
#define ARB_timer_query 1
#endif /* ARB_timer_query* /

#ifndef ARB_transform_feedback2
#define ARB_transform_feedback2 1
#endif /* ARB_transform_feedback2* /

#ifndef ARB_transform_feedback3
#define ARB_transform_feedback3 1
#endif /* ARB_transform_feedback3* /

#ifndef ARB_transform_feedback_instanced
#define ARB_transform_feedback_instanced 1
#endif /* ARB_transform_feedback_instanced* /

#ifndef ARB_transform_feedback_overflow_query
#define ARB_transform_feedback_overflow_query 1
#define TRANSFORM_FEEDBACK_OVERFLOW_ARB 0x82EC
#define TRANSFORM_FEEDBACK_STREAM_OVERFLOW_ARB 0x82ED
#endif /* ARB_transform_feedback_overflow_query* /

#ifndef ARB_uniform_buffer_object
#define ARB_uniform_buffer_object 1
#endif /* ARB_uniform_buffer_object* /

#ifndef ARB_vertex_array_bgra
#define ARB_vertex_array_bgra 1
#endif /* ARB_vertex_array_bgra* /

#ifndef ARB_vertex_array_object
#define ARB_vertex_array_object 1
#endif /* ARB_vertex_array_object* /

#ifndef ARB_vertex_attrib_64bit
#define ARB_vertex_attrib_64bit 1
#endif /* ARB_vertex_attrib_64bit* /

#ifndef ARB_vertex_attrib_binding
#define ARB_vertex_attrib_binding 1
#endif /* ARB_vertex_attrib_binding* /

#ifndef ARB_vertex_type_10f_11f_11f_rev
#define ARB_vertex_type_10f_11f_11f_rev 1
#endif /* ARB_vertex_type_10f_11f_11f_rev* /

#ifndef ARB_vertex_type_2_10_10_10_rev
#define ARB_vertex_type_2_10_10_10_rev 1
#endif /* ARB_vertex_type_2_10_10_10_rev* /

#ifndef ARB_viewport_array
#define ARB_viewport_array 1
alias PFNgldepthrangearraydvnvPROC = fn void(Uint first, Sizei count, Double* v);
alias PFNgldepthrangeindexeddnvPROC = fn void(Uint index, Double n, Double f);
#ifdef GLEXT_PROTOTYPES
void glDepthRangeArraydvNV (Uint first, Sizei count, Double* v);
void glDepthRangeIndexeddNV (Uint index, Double n, Double f);
#endif
#endif /* ARB_viewport_array* /

#ifndef KHR_blend_equation_advanced
#define KHR_blend_equation_advanced 1
#define MULTIPLY_KHR                   0x9294
#define SCREEN_KHR                     0x9295
#define OVERLAY_KHR                    0x9296
#define DARKEN_KHR                     0x9297
#define LIGHTEN_KHR                    0x9298
#define COLORDODGE_KHR                 0x9299
#define COLORBURN_KHR                  0x929A
#define HARDLIGHT_KHR                  0x929B
#define SOFTLIGHT_KHR                  0x929C
#define DIFFERENCE_KHR                 0x929E
#define EXCLUSION_KHR                  0x92A0
#define HSL_HUE_KHR                    0x92AD
#define HSL_SATURATION_KHR             0x92AE
#define HSL_COLOR_KHR                  0x92AF
#define HSL_LUMINOSITY_KHR             0x92B0
alias PFNglblendbarrierkhrPROC = fn void();
#ifdef GLEXT_PROTOTYPES
void glBlendBarrierKHR ();
#endif
#endif /* KHR_blend_equation_advanced* /

#ifndef KHR_blend_equation_advanced_coherent
#define KHR_blend_equation_advanced_coherent 1
#define BLEND_ADVANCED_COHERENT_KHR    0x9285
#endif /* KHR_blend_equation_advanced_coherent* /

#ifndef KHR_context_flush_control
#define KHR_context_flush_control 1
#endif /* KHR_context_flush_control* /

#ifndef KHR_debug
#define KHR_debug 1
#endif /* KHR_debug* /

#ifndef KHR_no_error
#define KHR_no_error 1
#define CONTEXT_FLAG_NO_ERROR_BIT_KHR  0x00000008
#endif /* KHR_no_error* /

#ifndef KHR_parallel_shader_compile
#define KHR_parallel_shader_compile 1
#define MAX_SHADER_COMPILER_THREADS_KHR 0x91B0
#define COMPLETION_STATUS_KHR          0x91B1
alias PFNglmaxshadercompilerthreadskhrPROC = fn void(Uint count);
#ifdef GLEXT_PROTOTYPES
void glMaxShaderCompilerThreadsKHR (Uint count);
#endif
#endif /* KHR_parallel_shader_compile* /

#ifndef KHR_robust_buffer_access_behavior
#define KHR_robust_buffer_access_behavior 1
#endif /* KHR_robust_buffer_access_behavior* /

#ifndef KHR_robustness
#define KHR_robustness 1
#define CONTEXT_ROBUST_ACCESS          0x90F3
#endif /* KHR_robustness* /

#ifndef KHR_shader_subgroup
#define KHR_shader_subgroup 1
#define SUBGROUP_SIZE_KHR              0x9532
#define SUBGROUP_SUPPORTED_STAGES_KHR  0x9533
#define SUBGROUP_SUPPORTED_FEATURES_KHR 0x9534
#define SUBGROUP_QUAD_ALL_STAGES_KHR   0x9535
#define SUBGROUP_FEATURE_BASIC_BIT_KHR 0x00000001
#define SUBGROUP_FEATURE_VOTE_BIT_KHR  0x00000002
#define SUBGROUP_FEATURE_ARITHMETIC_BIT_KHR 0x00000004
#define SUBGROUP_FEATURE_BALLOT_BIT_KHR 0x00000008
#define SUBGROUP_FEATURE_SHUFFLE_BIT_KHR 0x00000010
#define SUBGROUP_FEATURE_SHUFFLE_RELATIVE_BIT_KHR 0x00000020
#define SUBGROUP_FEATURE_CLUSTERED_BIT_KHR 0x00000040
#define SUBGROUP_FEATURE_QUAD_BIT_KHR  0x00000080
#endif /* KHR_shader_subgroup* /

#ifndef KHR_texture_compression_astc_hdr
#define KHR_texture_compression_astc_hdr 1
#define COMPRESSED_RGBA_ASTC_4x4_KHR   0x93B0
#define COMPRESSED_RGBA_ASTC_5x4_KHR   0x93B1
#define COMPRESSED_RGBA_ASTC_5x5_KHR   0x93B2
#define COMPRESSED_RGBA_ASTC_6x5_KHR   0x93B3
#define COMPRESSED_RGBA_ASTC_6x6_KHR   0x93B4
#define COMPRESSED_RGBA_ASTC_8x5_KHR   0x93B5
#define COMPRESSED_RGBA_ASTC_8x6_KHR   0x93B6
#define COMPRESSED_RGBA_ASTC_8x8_KHR   0x93B7
#define COMPRESSED_RGBA_ASTC_10x5_KHR  0x93B8
#define COMPRESSED_RGBA_ASTC_10x6_KHR  0x93B9
#define COMPRESSED_RGBA_ASTC_10x8_KHR  0x93BA
#define COMPRESSED_RGBA_ASTC_10x10_KHR 0x93BB
#define COMPRESSED_RGBA_ASTC_12x10_KHR 0x93BC
#define COMPRESSED_RGBA_ASTC_12x12_KHR 0x93BD
#define COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR 0x93D0
#define COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR 0x93D1
#define COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR 0x93D2
#define COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR 0x93D3
#define COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR 0x93D4
#define COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR 0x93D5
#define COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR 0x93D6
#define COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR 0x93D7
#define COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR 0x93D8
#define COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR 0x93D9
#define COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR 0x93DA
#define COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR 0x93DB
#define COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR 0x93DC
#define COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR 0x93DD
#endif /* KHR_texture_compression_astc_hdr* /

#ifndef KHR_texture_compression_astc_ldr
#define KHR_texture_compression_astc_ldr 1
#endif /* KHR_texture_compression_astc_ldr* /

#ifndef KHR_texture_compression_astc_sliced_3d
#define KHR_texture_compression_astc_sliced_3d 1
#endif /* KHR_texture_compression_astc_sliced_3d* /

#ifndef AMD_framebuffer_multisample_advanced
#define AMD_framebuffer_multisample_advanced 1
#define RENDERBUFFER_STORAGE_SAMPLES_AMD 0x91B2
#define MAX_COLOR_FRAMEBUFFER_SAMPLES_AMD 0x91B3
#define MAX_COLOR_FRAMEBUFFER_STORAGE_SAMPLES_AMD 0x91B4
#define MAX_DEPTH_STENCIL_FRAMEBUFFER_SAMPLES_AMD 0x91B5
#define NUM_SUPPORTED_MULTISAMPLE_MODES_AMD 0x91B6
#define SUPPORTED_MULTISAMPLE_MODES_AMD 0x91B7
alias PFNglrenderbufferstoragemultisampleadvancedamdPROC = fn void(Enum target, Sizei samples, Sizei storageSamples, Enum internalformat, Sizei width, Sizei height);
alias PFNglnamedrenderbufferstoragemultisampleadvancedamdPROC = fn void(Uint renderbuffer, Sizei samples, Sizei storageSamples, Enum internalformat, Sizei width, Sizei height);
#ifdef GLEXT_PROTOTYPES
void glRenderbufferStorageMultisampleAdvancedAMD (Enum target, Sizei samples, Sizei storageSamples, Enum internalformat, Sizei width, Sizei height);
void glNamedRenderbufferStorageMultisampleAdvancedAMD (Uint renderbuffer, Sizei samples, Sizei storageSamples, Enum internalformat, Sizei width, Sizei height);
#endif
#endif /* AMD_framebuffer_multisample_advanced* /

#ifndef AMD_performance_monitor
#define AMD_performance_monitor 1
#define COUNTER_TYPE_AMD               0x8BC0
#define COUNTER_RANGE_AMD              0x8BC1
#define UNSIGNED_INT64_AMD             0x8BC2
#define PERCENTAGE_AMD                 0x8BC3
#define PERFMON_RESULT_AVAILABLE_AMD   0x8BC4
#define PERFMON_RESULT_SIZE_AMD        0x8BC5
#define PERFMON_RESULT_AMD             0x8BC6
alias PFNglgetperfmonitorgroupsamdPROC = fn void(Int* numGroups, Sizei groupsSize, Uint* groups);
alias PFNglgetperfmonitorcountersamdPROC = fn void(Uint group, Int* numCounters, Int* maxActiveCounters, Sizei counterSize, Uint* counters);
alias PFNglgetperfmonitorgroupstringamdPROC = fn void(Uint group, Sizei bufSize, Sizei* length, ZString groupString);
alias PFNglgetperfmonitorcounterstringamdPROC = fn void(Uint group, Uint counter, Sizei bufSize, Sizei* length, ZString counterString);
alias PFNglgetperfmonitorcounterinfoamdPROC = fn void(Uint group, Uint counter, Enum pname, void* data);
alias PFNglgenperfmonitorsamdPROC = fn void(Sizei n, Uint* monitors);
alias PFNgldeleteperfmonitorsamdPROC = fn void(Sizei n, Uint* monitors);
alias PFNglselectperfmonitorcountersamdPROC = fn void(Uint monitor, Boolean enable, Uint group, Int numCounters, Uint* counterList);
alias PFNglbeginperfmonitoramdPROC = fn void(Uint monitor);
alias PFNglendperfmonitoramdPROC = fn void(Uint monitor);
alias PFNglgetperfmonitorcounterdataamdPROC = fn void(Uint monitor, Enum pname, Sizei dataSize, Uint* data, Int* bytesWritten);
#ifdef GLEXT_PROTOTYPES
void glGetPerfMonitorGroupsAMD (Int* numGroups, Sizei groupsSize, Uint* groups);
void glGetPerfMonitorCountersAMD (Uint group, Int* numCounters, Int* maxActiveCounters, Sizei counterSize, Uint* counters);
void glGetPerfMonitorGroupStringAMD (Uint group, Sizei bufSize, Sizei* length, ZString groupString);
void glGetPerfMonitorCounterStringAMD (Uint group, Uint counter, Sizei bufSize, Sizei* length, ZString counterString);
void glGetPerfMonitorCounterInfoAMD (Uint group, Uint counter, Enum pname, void* data);
void glGenPerfMonitorsAMD (Sizei n, Uint* monitors);
void glDeletePerfMonitorsAMD (Sizei n, Uint* monitors);
void glSelectPerfMonitorCountersAMD (Uint monitor, Boolean enable, Uint group, Int numCounters, Uint* counterList);
void glBeginPerfMonitorAMD (Uint monitor);
void glEndPerfMonitorAMD (Uint monitor);
void glGetPerfMonitorCounterDataAMD (Uint monitor, Enum pname, Sizei dataSize, Uint* data, Int* bytesWritten);
#endif
#endif /* AMD_performance_monitor* /

#ifndef APPLE_rgb_422
#define APPLE_rgb_422 1
#define RGB_422_APPLE                  0x8A1F
#define UNSIGNED_SHORT_8_8_APPLE       0x85BA
#define UNSIGNED_SHORT_8_8_REV_APPLE   0x85BB
#define RGB_RAW_422_APPLE              0x8A51
#endif /* APPLE_rgb_422* /

#ifndef EXT_Eimage_storage
#define EXT_Eimage_storage 1
typedef void* GLeglImageOES;
alias PFNgleglimagetargettexstorageextPROC = fn void(Enum target, GLeglImageOES image, Int* attrib_list);
alias PFNgleglimagetargettexturestorageextPROC = fn void(Uint texture, GLeglImageOES image, Int* attrib_list);
#ifdef GLEXT_PROTOTYPES
void glEGLImageTargetTexStorageEXT (Enum target, GLeglImageOES image, Int* attrib_list);
void glEGLImageTargetTextureStorageEXT (Uint texture, GLeglImageOES image, Int* attrib_list);
#endif
#endif /* EXT_Eimage_storage* /

#ifndef EXT_Esync
#define EXT_Esync 1
#endif /* EXT_Esync* /

#ifndef EXT_debug_label
#define EXT_debug_label 1
#define PROGRAM_PIPELINE_OBJECT_EXT    0x8A4F
#define PROGRAM_OBJECT_EXT             0x8B40
#define SHADER_OBJECT_EXT              0x8B48
#define BUFFER_OBJECT_EXT              0x9151
#define QUERY_OBJECT_EXT               0x9153
#define VERTEX_ARRAY_OBJECT_EXT        0x9154
alias PFNgllabelobjectextPROC = fn void(Enum type, Uint object, Sizei length, ZString label);
alias PFNglgetobjectlabelextPROC = fn void(Enum type, Uint object, Sizei bufSize, Sizei* length, ZString label);
#ifdef GLEXT_PROTOTYPES
void glLabelObjectEXT (Enum type, Uint object, Sizei length, ZString label);
void glGetObjectLabelEXT (Enum type, Uint object, Sizei bufSize, Sizei* length, ZString label);
#endif
#endif /* EXT_debug_label* /

#ifndef EXT_debug_marker
#define EXT_debug_marker 1
alias PFNglinserteventmarkerextPROC = fn void(Sizei length, ZString marker);
alias PFNglpushgroupmarkerextPROC = fn void(Sizei length, ZString marker);
alias PFNglpopgroupmarkerextPROC = fn void();
#ifdef GLEXT_PROTOTYPES
void glInsertEventMarkerEXT (Sizei length, ZString marker);
void glPushGroupMarkerEXT (Sizei length, ZString marker);
void glPopGroupMarkerEXT ();
#endif
#endif /* EXT_debug_marker* /

#ifndef EXT_direct_state_access
#define EXT_direct_state_access 1
#define PROGRAM_MATRIX_EXT             0x8E2D
#define TRANSPOSE_PROGRAM_MATRIX_EXT   0x8E2E
#define PROGRAM_MATRIX_STACK_DEPTH_EXT 0x8E2F
alias PFNglmatrixloadfextPROC = fn void(Enum mode, Float* m);
alias PFNglmatrixloaddextPROC = fn void(Enum mode, Double* m);
alias PFNglmatrixmultfextPROC = fn void(Enum mode, Float* m);
alias PFNglmatrixmultdextPROC = fn void(Enum mode, Double* m);
alias PFNglmatrixloadidentityextPROC = fn void(Enum mode);
alias PFNglmatrixrotatefextPROC = fn void(Enum mode, Float angle, Float x, Float y, Float z);
alias PFNglmatrixrotatedextPROC = fn void(Enum mode, Double angle, Double x, Double y, Double z);
alias PFNglmatrixscalefextPROC = fn void(Enum mode, Float x, Float y, Float z);
alias PFNglmatrixscaledextPROC = fn void(Enum mode, Double x, Double y, Double z);
alias PFNglmatrixtranslatefextPROC = fn void(Enum mode, Float x, Float y, Float z);
alias PFNglmatrixtranslatedextPROC = fn void(Enum mode, Double x, Double y, Double z);
alias PFNglmatrixfrustumextPROC = fn void(Enum mode, Double left, Double right, Double bottom, Double top, Double zNear, Double zFar);
alias PFNglmatrixorthoextPROC = fn void(Enum mode, Double left, Double right, Double bottom, Double top, Double zNear, Double zFar);
alias PFNglmatrixpopextPROC = fn void(Enum mode);
alias PFNglmatrixpushextPROC = fn void(Enum mode);
alias PFNglclientattribdefaultextPROC = fn void(Bitfield mask);
alias PFNglpushclientattribdefaultextPROC = fn void(Bitfield mask);
alias PFNgltextureparameterfextPROC = fn void(Uint texture, Enum target, Enum pname, Float param);
alias PFNgltextureparameterfvextPROC = fn void(Uint texture, Enum target, Enum pname, Float* params);
alias PFNgltextureparameteriextPROC = fn void(Uint texture, Enum target, Enum pname, Int param);
alias PFNgltextureparameterivextPROC = fn void(Uint texture, Enum target, Enum pname, Int* params);
alias PFNgltextureimage1dextPROC = fn void(Uint texture, Enum target, Int level, Int internalformat, Sizei width, Int border, Enum format, Enum type, void* pixels);
alias PFNgltextureimage2dextPROC = fn void(Uint texture, Enum target, Int level, Int internalformat, Sizei width, Sizei height, Int border, Enum format, Enum type, void* pixels);
alias PFNgltexturesubimage1dextPROC = fn void(Uint texture, Enum target, Int level, Int xoffset, Sizei width, Enum format, Enum type, void* pixels);
alias PFNgltexturesubimage2dextPROC = fn void(Uint texture, Enum target, Int level, Int xoffset, Int yoffset, Sizei width, Sizei height, Enum format, Enum type, void* pixels);
alias PFNglcopytextureimage1dextPROC = fn void(Uint texture, Enum target, Int level, Enum internalformat, Int x, Int y, Sizei width, Int border);
alias PFNglcopytextureimage2dextPROC = fn void(Uint texture, Enum target, Int level, Enum internalformat, Int x, Int y, Sizei width, Sizei height, Int border);
alias PFNglcopytexturesubimage1dextPROC = fn void(Uint texture, Enum target, Int level, Int xoffset, Int x, Int y, Sizei width);
alias PFNglcopytexturesubimage2dextPROC = fn void(Uint texture, Enum target, Int level, Int xoffset, Int yoffset, Int x, Int y, Sizei width, Sizei height);
alias PFNglgettextureimageextPROC = fn void(Uint texture, Enum target, Int level, Enum format, Enum type, void* pixels);
alias PFNglgettextureparameterfvextPROC = fn void(Uint texture, Enum target, Enum pname, Float* params);
alias PFNglgettextureparameterivextPROC = fn void(Uint texture, Enum target, Enum pname, Int* params);
alias PFNglgettexturelevelparameterfvextPROC = fn void(Uint texture, Enum target, Int level, Enum pname, Float* params);
alias PFNglgettexturelevelparameterivextPROC = fn void(Uint texture, Enum target, Int level, Enum pname, Int* params);
alias PFNgltextureimage3dextPROC = fn void(Uint texture, Enum target, Int level, Int internalformat, Sizei width, Sizei height, Sizei depth, Int border, Enum format, Enum type, void* pixels);
alias PFNgltexturesubimage3dextPROC = fn void(Uint texture, Enum target, Int level, Int xoffset, Int yoffset, Int zoffset, Sizei width, Sizei height, Sizei depth, Enum format, Enum type, void* pixels);
alias PFNglcopytexturesubimage3dextPROC = fn void(Uint texture, Enum target, Int level, Int xoffset, Int yoffset, Int zoffset, Int x, Int y, Sizei width, Sizei height);
alias PFNglbindmultitextureextPROC = fn void(Enum texunit, Enum target, Uint texture);
alias PFNglmultitexcoordpointerextPROC = fn void(Enum texunit, Int size, Enum type, Sizei stride, void* pointer);
alias PFNglmultitexenvfextPROC = fn void(Enum texunit, Enum target, Enum pname, Float param);
alias PFNglmultitexenvfvextPROC = fn void(Enum texunit, Enum target, Enum pname, Float* params);
alias PFNglmultitexenviextPROC = fn void(Enum texunit, Enum target, Enum pname, Int param);
alias PFNglmultitexenvivextPROC = fn void(Enum texunit, Enum target, Enum pname, Int* params);
alias PFNglmultitexgendextPROC = fn void(Enum texunit, Enum coord, Enum pname, Double param);
alias PFNglmultitexgendvextPROC = fn void(Enum texunit, Enum coord, Enum pname, Double* params);
alias PFNglmultitexgenfextPROC = fn void(Enum texunit, Enum coord, Enum pname, Float param);
alias PFNglmultitexgenfvextPROC = fn void(Enum texunit, Enum coord, Enum pname, Float* params);
alias PFNglmultitexgeniextPROC = fn void(Enum texunit, Enum coord, Enum pname, Int param);
alias PFNglmultitexgenivextPROC = fn void(Enum texunit, Enum coord, Enum pname, Int* params);
alias PFNglgetmultitexenvfvextPROC = fn void(Enum texunit, Enum target, Enum pname, Float* params);
alias PFNglgetmultitexenvivextPROC = fn void(Enum texunit, Enum target, Enum pname, Int* params);
alias PFNglgetmultitexgendvextPROC = fn void(Enum texunit, Enum coord, Enum pname, Double* params);
alias PFNglgetmultitexgenfvextPROC = fn void(Enum texunit, Enum coord, Enum pname, Float* params);
alias PFNglgetmultitexgenivextPROC = fn void(Enum texunit, Enum coord, Enum pname, Int* params);
alias PFNglmultitexparameteriextPROC = fn void(Enum texunit, Enum target, Enum pname, Int param);
alias PFNglmultitexparameterivextPROC = fn void(Enum texunit, Enum target, Enum pname, Int* params);
alias PFNglmultitexparameterfextPROC = fn void(Enum texunit, Enum target, Enum pname, Float param);
alias PFNglmultitexparameterfvextPROC = fn void(Enum texunit, Enum target, Enum pname, Float* params);
alias PFNglmultiteximage1dextPROC = fn void(Enum texunit, Enum target, Int level, Int internalformat, Sizei width, Int border, Enum format, Enum type, void* pixels);
alias PFNglmultiteximage2dextPROC = fn void(Enum texunit, Enum target, Int level, Int internalformat, Sizei width, Sizei height, Int border, Enum format, Enum type, void* pixels);
alias PFNglmultitexsubimage1dextPROC = fn void(Enum texunit, Enum target, Int level, Int xoffset, Sizei width, Enum format, Enum type, void* pixels);
alias PFNglmultitexsubimage2dextPROC = fn void(Enum texunit, Enum target, Int level, Int xoffset, Int yoffset, Sizei width, Sizei height, Enum format, Enum type, void* pixels);
alias PFNglcopymultiteximage1dextPROC = fn void(Enum texunit, Enum target, Int level, Enum internalformat, Int x, Int y, Sizei width, Int border);
alias PFNglcopymultiteximage2dextPROC = fn void(Enum texunit, Enum target, Int level, Enum internalformat, Int x, Int y, Sizei width, Sizei height, Int border);
alias PFNglcopymultitexsubimage1dextPROC = fn void(Enum texunit, Enum target, Int level, Int xoffset, Int x, Int y, Sizei width);
alias PFNglcopymultitexsubimage2dextPROC = fn void(Enum texunit, Enum target, Int level, Int xoffset, Int yoffset, Int x, Int y, Sizei width, Sizei height);
alias PFNglgetmultiteximageextPROC = fn void(Enum texunit, Enum target, Int level, Enum format, Enum type, void* pixels);
alias PFNglgetmultitexparameterfvextPROC = fn void(Enum texunit, Enum target, Enum pname, Float* params);
alias PFNglgetmultitexparameterivextPROC = fn void(Enum texunit, Enum target, Enum pname, Int* params);
alias PFNglgetmultitexlevelparameterfvextPROC = fn void(Enum texunit, Enum target, Int level, Enum pname, Float* params);
alias PFNglgetmultitexlevelparameterivextPROC = fn void(Enum texunit, Enum target, Int level, Enum pname, Int* params);
alias PFNglmultiteximage3dextPROC = fn void(Enum texunit, Enum target, Int level, Int internalformat, Sizei width, Sizei height, Sizei depth, Int border, Enum format, Enum type, void* pixels);
alias PFNglmultitexsubimage3dextPROC = fn void(Enum texunit, Enum target, Int level, Int xoffset, Int yoffset, Int zoffset, Sizei width, Sizei height, Sizei depth, Enum format, Enum type, void* pixels);
alias PFNglcopymultitexsubimage3dextPROC = fn void(Enum texunit, Enum target, Int level, Int xoffset, Int yoffset, Int zoffset, Int x, Int y, Sizei width, Sizei height);
alias PFNglenableclientstateindexedextPROC = fn void(Enum array, Uint index);
alias PFNgldisableclientstateindexedextPROC = fn void(Enum array, Uint index);
alias PFNglgetfloatindexedvextPROC = fn void(Enum target, Uint index, Float* data);
alias PFNglgetdoubleindexedvextPROC = fn void(Enum target, Uint index, Double* data);
alias PFNglgetpointerindexedvextPROC = fn void(Enum target, Uint index, void** data);
alias PFNglenableindexedextPROC = fn void(Enum target, Uint index);
alias PFNgldisableindexedextPROC = fn void(Enum target, Uint index);
alias PFNglisenabledindexedextPROC = fn Boolean(Enum target, Uint index);
alias PFNglgetintegerindexedvextPROC = fn void(Enum target, Uint index, Int* data);
alias PFNglgetbooleanindexedvextPROC = fn void(Enum target, Uint index, Boolean* data);
alias PFNglcompressedtextureimage3dextPROC = fn void(Uint texture, Enum target, Int level, Enum internalformat, Sizei width, Sizei height, Sizei depth, Int border, Sizei imageSize, void* bits);
alias PFNglcompressedtextureimage2dextPROC = fn void(Uint texture, Enum target, Int level, Enum internalformat, Sizei width, Sizei height, Int border, Sizei imageSize, void* bits);
alias PFNglcompressedtextureimage1dextPROC = fn void(Uint texture, Enum target, Int level, Enum internalformat, Sizei width, Int border, Sizei imageSize, void* bits);
alias PFNglcompressedtexturesubimage3dextPROC = fn void(Uint texture, Enum target, Int level, Int xoffset, Int yoffset, Int zoffset, Sizei width, Sizei height, Sizei depth, Enum format, Sizei imageSize, void* bits);
alias PFNglcompressedtexturesubimage2dextPROC = fn void(Uint texture, Enum target, Int level, Int xoffset, Int yoffset, Sizei width, Sizei height, Enum format, Sizei imageSize, void* bits);
alias PFNglcompressedtexturesubimage1dextPROC = fn void(Uint texture, Enum target, Int level, Int xoffset, Sizei width, Enum format, Sizei imageSize, void* bits);
alias PFNglgetcompressedtextureimageextPROC = fn void(Uint texture, Enum target, Int lod, void* img);
alias PFNglcompressedmultiteximage3dextPROC = fn void(Enum texunit, Enum target, Int level, Enum internalformat, Sizei width, Sizei height, Sizei depth, Int border, Sizei imageSize, void* bits);
alias PFNglcompressedmultiteximage2dextPROC = fn void(Enum texunit, Enum target, Int level, Enum internalformat, Sizei width, Sizei height, Int border, Sizei imageSize, void* bits);
alias PFNglcompressedmultiteximage1dextPROC = fn void(Enum texunit, Enum target, Int level, Enum internalformat, Sizei width, Int border, Sizei imageSize, void* bits);
alias PFNglcompressedmultitexsubimage3dextPROC = fn void(Enum texunit, Enum target, Int level, Int xoffset, Int yoffset, Int zoffset, Sizei width, Sizei height, Sizei depth, Enum format, Sizei imageSize, void* bits);
alias PFNglcompressedmultitexsubimage2dextPROC = fn void(Enum texunit, Enum target, Int level, Int xoffset, Int yoffset, Sizei width, Sizei height, Enum format, Sizei imageSize, void* bits);
alias PFNglcompressedmultitexsubimage1dextPROC = fn void(Enum texunit, Enum target, Int level, Int xoffset, Sizei width, Enum format, Sizei imageSize, void* bits);
alias PFNglgetcompressedmultiteximageextPROC = fn void(Enum texunit, Enum target, Int lod, void* img);
alias PFNglmatrixloadtransposefextPROC = fn void(Enum mode, Float* m);
alias PFNglmatrixloadtransposedextPROC = fn void(Enum mode, Double* m);
alias PFNglmatrixmulttransposefextPROC = fn void(Enum mode, Float* m);
alias PFNglmatrixmulttransposedextPROC = fn void(Enum mode, Double* m);
alias PFNglnamedbufferdataextPROC = fn void(Uint buffer, Sizeiptr size, void* data, Enum usage);
alias PFNglnamedbuffersubdataextPROC = fn void(Uint buffer, Intptr offset, Sizeiptr size, void* data);
alias PFNglmapnamedbufferextPROC = fn void*(Uint buffer, Enum access);
alias PFNglunmapnamedbufferextPROC = fn Boolean(Uint buffer);
alias PFNglgetnamedbufferparameterivextPROC = fn void(Uint buffer, Enum pname, Int* params);
alias PFNglgetnamedbufferpointervextPROC = fn void(Uint buffer, Enum pname, void** params);
alias PFNglgetnamedbuffersubdataextPROC = fn void(Uint buffer, Intptr offset, Sizeiptr size, void* data);
alias PFNglprogramuniform1fextPROC = fn void(Uint program, Int location, Float v0);
alias PFNglprogramuniform2fextPROC = fn void(Uint program, Int location, Float v0, Float v1);
alias PFNglprogramuniform3fextPROC = fn void(Uint program, Int location, Float v0, Float v1, Float v2);
alias PFNglprogramuniform4fextPROC = fn void(Uint program, Int location, Float v0, Float v1, Float v2, Float v3);
alias PFNglprogramuniform1iextPROC = fn void(Uint program, Int location, Int v0);
alias PFNglprogramuniform2iextPROC = fn void(Uint program, Int location, Int v0, Int v1);
alias PFNglprogramuniform3iextPROC = fn void(Uint program, Int location, Int v0, Int v1, Int v2);
alias PFNglprogramuniform4iextPROC = fn void(Uint program, Int location, Int v0, Int v1, Int v2, Int v3);
alias PFNglprogramuniform1fvextPROC = fn void(Uint program, Int location, Sizei count, Float* value);
alias PFNglprogramuniform2fvextPROC = fn void(Uint program, Int location, Sizei count, Float* value);
alias PFNglprogramuniform3fvextPROC = fn void(Uint program, Int location, Sizei count, Float* value);
alias PFNglprogramuniform4fvextPROC = fn void(Uint program, Int location, Sizei count, Float* value);
alias PFNglprogramuniform1ivextPROC = fn void(Uint program, Int location, Sizei count, Int* value);
alias PFNglprogramuniform2ivextPROC = fn void(Uint program, Int location, Sizei count, Int* value);
alias PFNglprogramuniform3ivextPROC = fn void(Uint program, Int location, Sizei count, Int* value);
alias PFNglprogramuniform4ivextPROC = fn void(Uint program, Int location, Sizei count, Int* value);
alias PFNglprogramuniformmatrix2fvextPROC = fn void(Uint program, Int location, Sizei count, Boolean transpose, Float* value);
alias PFNglprogramuniformmatrix3fvextPROC = fn void(Uint program, Int location, Sizei count, Boolean transpose, Float* value);
alias PFNglprogramuniformmatrix4fvextPROC = fn void(Uint program, Int location, Sizei count, Boolean transpose, Float* value);
alias PFNglprogramuniformmatrix2x3fvextPROC = fn void(Uint program, Int location, Sizei count, Boolean transpose, Float* value);
alias PFNglprogramuniformmatrix3x2fvextPROC = fn void(Uint program, Int location, Sizei count, Boolean transpose, Float* value);
alias PFNglprogramuniformmatrix2x4fvextPROC = fn void(Uint program, Int location, Sizei count, Boolean transpose, Float* value);
alias PFNglprogramuniformmatrix4x2fvextPROC = fn void(Uint program, Int location, Sizei count, Boolean transpose, Float* value);
alias PFNglprogramuniformmatrix3x4fvextPROC = fn void(Uint program, Int location, Sizei count, Boolean transpose, Float* value);
alias PFNglprogramuniformmatrix4x3fvextPROC = fn void(Uint program, Int location, Sizei count, Boolean transpose, Float* value);
alias PFNgltexturebufferextPROC = fn void(Uint texture, Enum target, Enum internalformat, Uint buffer);
alias PFNglmultitexbufferextPROC = fn void(Enum texunit, Enum target, Enum internalformat, Uint buffer);
alias PFNgltextureparameteriivextPROC = fn void(Uint texture, Enum target, Enum pname, Int* params);
alias PFNgltextureparameteriuivextPROC = fn void(Uint texture, Enum target, Enum pname, Uint* params);
alias PFNglgettextureparameteriivextPROC = fn void(Uint texture, Enum target, Enum pname, Int* params);
alias PFNglgettextureparameteriuivextPROC = fn void(Uint texture, Enum target, Enum pname, Uint* params);
alias PFNglmultitexparameteriivextPROC = fn void(Enum texunit, Enum target, Enum pname, Int* params);
alias PFNglmultitexparameteriuivextPROC = fn void(Enum texunit, Enum target, Enum pname, Uint* params);
alias PFNglgetmultitexparameteriivextPROC = fn void(Enum texunit, Enum target, Enum pname, Int* params);
alias PFNglgetmultitexparameteriuivextPROC = fn void(Enum texunit, Enum target, Enum pname, Uint* params);
alias PFNglprogramuniform1uiextPROC = fn void(Uint program, Int location, Uint v0);
alias PFNglprogramuniform2uiextPROC = fn void(Uint program, Int location, Uint v0, Uint v1);
alias PFNglprogramuniform3uiextPROC = fn void(Uint program, Int location, Uint v0, Uint v1, Uint v2);
alias PFNglprogramuniform4uiextPROC = fn void(Uint program, Int location, Uint v0, Uint v1, Uint v2, Uint v3);
alias PFNglprogramuniform1uivextPROC = fn void(Uint program, Int location, Sizei count, Uint* value);
alias PFNglprogramuniform2uivextPROC = fn void(Uint program, Int location, Sizei count, Uint* value);
alias PFNglprogramuniform3uivextPROC = fn void(Uint program, Int location, Sizei count, Uint* value);
alias PFNglprogramuniform4uivextPROC = fn void(Uint program, Int location, Sizei count, Uint* value);
alias PFNglnamedprogramlocalparameters4fvextPROC = fn void(Uint program, Enum target, Uint index, Sizei count, Float* params);
alias PFNglnamedprogramlocalparameteri4iextPROC = fn void(Uint program, Enum target, Uint index, Int x, Int y, Int z, Int w);
alias PFNglnamedprogramlocalparameteri4ivextPROC = fn void(Uint program, Enum target, Uint index, Int* params);
alias PFNglnamedprogramlocalparametersi4ivextPROC = fn void(Uint program, Enum target, Uint index, Sizei count, Int* params);
alias PFNglnamedprogramlocalparameteri4uiextPROC = fn void(Uint program, Enum target, Uint index, Uint x, Uint y, Uint z, Uint w);
alias PFNglnamedprogramlocalparameteri4uivextPROC = fn void(Uint program, Enum target, Uint index, Uint* params);
alias PFNglnamedprogramlocalparametersi4uivextPROC = fn void(Uint program, Enum target, Uint index, Sizei count, Uint* params);
alias PFNglgetnamedprogramlocalparameteriivextPROC = fn void(Uint program, Enum target, Uint index, Int* params);
alias PFNglgetnamedprogramlocalparameteriuivextPROC = fn void(Uint program, Enum target, Uint index, Uint* params);
alias PFNglenableclientstateiextPROC = fn void(Enum array, Uint index);
alias PFNgldisableclientstateiextPROC = fn void(Enum array, Uint index);
alias PFNglgetfloati_vextPROC = fn void(Enum pname, Uint index, Float* params);
alias PFNglgetdoublei_vextPROC = fn void(Enum pname, Uint index, Double* params);
alias PFNglgetpointeri_vextPROC = fn void(Enum pname, Uint index, void** params);
alias PFNglnamedprogramstringextPROC = fn void(Uint program, Enum target, Enum format, Sizei len, void* string);
alias PFNglnamedprogramlocalparameter4dextPROC = fn void(Uint program, Enum target, Uint index, Double x, Double y, Double z, Double w);
alias PFNglnamedprogramlocalparameter4dvextPROC = fn void(Uint program, Enum target, Uint index, Double* params);
alias PFNglnamedprogramlocalparameter4fextPROC = fn void(Uint program, Enum target, Uint index, Float x, Float y, Float z, Float w);
alias PFNglnamedprogramlocalparameter4fvextPROC = fn void(Uint program, Enum target, Uint index, Float* params);
alias PFNglgetnamedprogramlocalparameterdvextPROC = fn void(Uint program, Enum target, Uint index, Double* params);
alias PFNglgetnamedprogramlocalparameterfvextPROC = fn void(Uint program, Enum target, Uint index, Float* params);
alias PFNglgetnamedprogramivextPROC = fn void(Uint program, Enum target, Enum pname, Int* params);
alias PFNglgetnamedprogramstringextPROC = fn void(Uint program, Enum target, Enum pname, void* string);
alias PFNglnamedrenderbufferstorageextPROC = fn void(Uint renderbuffer, Enum internalformat, Sizei width, Sizei height);
alias PFNglgetnamedrenderbufferparameterivextPROC = fn void(Uint renderbuffer, Enum pname, Int* params);
alias PFNglnamedrenderbufferstoragemultisampleextPROC = fn void(Uint renderbuffer, Sizei samples, Enum internalformat, Sizei width, Sizei height);
alias PFNglnamedrenderbufferstoragemultisamplecoverageextPROC = fn void(Uint renderbuffer, Sizei coverageSamples, Sizei colorSamples, Enum internalformat, Sizei width, Sizei height);
alias PFNglchecknamedframebufferstatusextPROC = fn Enum(Uint framebuffer, Enum target);
alias PFNglnamedframebuffertexture1dextPROC = fn void(Uint framebuffer, Enum attachment, Enum textarget, Uint texture, Int level);
alias PFNglnamedframebuffertexture2dextPROC = fn void(Uint framebuffer, Enum attachment, Enum textarget, Uint texture, Int level);
alias PFNglnamedframebuffertexture3dextPROC = fn void(Uint framebuffer, Enum attachment, Enum textarget, Uint texture, Int level, Int zoffset);
alias PFNglnamedframebufferrenderbufferextPROC = fn void(Uint framebuffer, Enum attachment, Enum renderbuffertarget, Uint renderbuffer);
alias PFNglgetnamedframebufferattachmentparameterivextPROC = fn void(Uint framebuffer, Enum attachment, Enum pname, Int* params);
alias PFNglgeneratetexturemipmapextPROC = fn void(Uint texture, Enum target);
alias PFNglgeneratemultitexmipmapextPROC = fn void(Enum texunit, Enum target);
alias PFNglframebufferdrawbufferextPROC = fn void(Uint framebuffer, Enum mode);
alias PFNglframebufferdrawbuffersextPROC = fn void(Uint framebuffer, Sizei n, Enum* bufs);
alias PFNglframebufferreadbufferextPROC = fn void(Uint framebuffer, Enum mode);
alias PFNglgetframebufferparameterivextPROC = fn void(Uint framebuffer, Enum pname, Int* params);
alias PFNglnamedcopybuffersubdataextPROC = fn void(Uint readBuffer, Uint writeBuffer, Intptr readOffset, Intptr writeOffset, Sizeiptr size);
alias PFNglnamedframebuffertextureextPROC = fn void(Uint framebuffer, Enum attachment, Uint texture, Int level);
alias PFNglnamedframebuffertexturelayerextPROC = fn void(Uint framebuffer, Enum attachment, Uint texture, Int level, Int layer);
alias PFNglnamedframebuffertexturefaceextPROC = fn void(Uint framebuffer, Enum attachment, Uint texture, Int level, Enum face);
alias PFNgltexturerenderbufferextPROC = fn void(Uint texture, Enum target, Uint renderbuffer);
alias PFNglmultitexrenderbufferextPROC = fn void(Enum texunit, Enum target, Uint renderbuffer);
alias PFNglvertexarrayvertexoffsetextPROC = fn void(Uint vaobj, Uint buffer, Int size, Enum type, Sizei stride, Intptr offset);
alias PFNglvertexarraycoloroffsetextPROC = fn void(Uint vaobj, Uint buffer, Int size, Enum type, Sizei stride, Intptr offset);
alias PFNglvertexarrayedgeflagoffsetextPROC = fn void(Uint vaobj, Uint buffer, Sizei stride, Intptr offset);
alias PFNglvertexarrayindexoffsetextPROC = fn void(Uint vaobj, Uint buffer, Enum type, Sizei stride, Intptr offset);
alias PFNglvertexarraynormaloffsetextPROC = fn void(Uint vaobj, Uint buffer, Enum type, Sizei stride, Intptr offset);
alias PFNglvertexarraytexcoordoffsetextPROC = fn void(Uint vaobj, Uint buffer, Int size, Enum type, Sizei stride, Intptr offset);
alias PFNglvertexarraymultitexcoordoffsetextPROC = fn void(Uint vaobj, Uint buffer, Enum texunit, Int size, Enum type, Sizei stride, Intptr offset);
alias PFNglvertexarrayfogcoordoffsetextPROC = fn void(Uint vaobj, Uint buffer, Enum type, Sizei stride, Intptr offset);
alias PFNglvertexarraysecondarycoloroffsetextPROC = fn void(Uint vaobj, Uint buffer, Int size, Enum type, Sizei stride, Intptr offset);
alias PFNglvertexarrayvertexattriboffsetextPROC = fn void(Uint vaobj, Uint buffer, Uint index, Int size, Enum type, Boolean normalized, Sizei stride, Intptr offset);
alias PFNglvertexarrayvertexattribioffsetextPROC = fn void(Uint vaobj, Uint buffer, Uint index, Int size, Enum type, Sizei stride, Intptr offset);
alias PFNglenablevertexarrayextPROC = fn void(Uint vaobj, Enum array);
alias PFNgldisablevertexarrayextPROC = fn void(Uint vaobj, Enum array);
alias PFNglenablevertexarrayattribextPROC = fn void(Uint vaobj, Uint index);
alias PFNgldisablevertexarrayattribextPROC = fn void(Uint vaobj, Uint index);
alias PFNglgetvertexarrayintegervextPROC = fn void(Uint vaobj, Enum pname, Int* param);
alias PFNglgetvertexarraypointervextPROC = fn void(Uint vaobj, Enum pname, void** param);
alias PFNglgetvertexarrayintegeri_vextPROC = fn void(Uint vaobj, Uint index, Enum pname, Int* param);
alias PFNglgetvertexarraypointeri_vextPROC = fn void(Uint vaobj, Uint index, Enum pname, void** param);
alias PFNglmapnamedbufferrangeextPROC = fn void*(Uint buffer, Intptr offset, Sizeiptr length, Bitfield access);
alias PFNglflushmappednamedbufferrangeextPROC = fn void(Uint buffer, Intptr offset, Sizeiptr length);
alias PFNglnamedbufferstorageextPROC = fn void(Uint buffer, Sizeiptr size, void* data, Bitfield flags);
alias PFNglclearnamedbufferdataextPROC = fn void(Uint buffer, Enum internalformat, Enum format, Enum type, void* data);
alias PFNglclearnamedbuffersubdataextPROC = fn void(Uint buffer, Enum internalformat, Sizeiptr offset, Sizeiptr size, Enum format, Enum type, void* data);
alias PFNglnamedframebufferparameteriextPROC = fn void(Uint framebuffer, Enum pname, Int param);
alias PFNglgetnamedframebufferparameterivextPROC = fn void(Uint framebuffer, Enum pname, Int* params);
alias PFNglprogramuniform1dextPROC = fn void(Uint program, Int location, Double x);
alias PFNglprogramuniform2dextPROC = fn void(Uint program, Int location, Double x, Double y);
alias PFNglprogramuniform3dextPROC = fn void(Uint program, Int location, Double x, Double y, Double z);
alias PFNglprogramuniform4dextPROC = fn void(Uint program, Int location, Double x, Double y, Double z, Double w);
alias PFNglprogramuniform1dvextPROC = fn void(Uint program, Int location, Sizei count, Double* value);
alias PFNglprogramuniform2dvextPROC = fn void(Uint program, Int location, Sizei count, Double* value);
alias PFNglprogramuniform3dvextPROC = fn void(Uint program, Int location, Sizei count, Double* value);
alias PFNglprogramuniform4dvextPROC = fn void(Uint program, Int location, Sizei count, Double* value);
alias PFNglprogramuniformmatrix2dvextPROC = fn void(Uint program, Int location, Sizei count, Boolean transpose, Double* value);
alias PFNglprogramuniformmatrix3dvextPROC = fn void(Uint program, Int location, Sizei count, Boolean transpose, Double* value);
alias PFNglprogramuniformmatrix4dvextPROC = fn void(Uint program, Int location, Sizei count, Boolean transpose, Double* value);
alias PFNglprogramuniformmatrix2x3dvextPROC = fn void(Uint program, Int location, Sizei count, Boolean transpose, Double* value);
alias PFNglprogramuniformmatrix2x4dvextPROC = fn void(Uint program, Int location, Sizei count, Boolean transpose, Double* value);
alias PFNglprogramuniformmatrix3x2dvextPROC = fn void(Uint program, Int location, Sizei count, Boolean transpose, Double* value);
alias PFNglprogramuniformmatrix3x4dvextPROC = fn void(Uint program, Int location, Sizei count, Boolean transpose, Double* value);
alias PFNglprogramuniformmatrix4x2dvextPROC = fn void(Uint program, Int location, Sizei count, Boolean transpose, Double* value);
alias PFNglprogramuniformmatrix4x3dvextPROC = fn void(Uint program, Int location, Sizei count, Boolean transpose, Double* value);
alias PFNgltexturebufferrangeextPROC = fn void(Uint texture, Enum target, Enum internalformat, Uint buffer, Intptr offset, Sizeiptr size);
alias PFNgltexturestorage1dextPROC = fn void(Uint texture, Enum target, Sizei levels, Enum internalformat, Sizei width);
alias PFNgltexturestorage2dextPROC = fn void(Uint texture, Enum target, Sizei levels, Enum internalformat, Sizei width, Sizei height);
alias PFNgltexturestorage3dextPROC = fn void(Uint texture, Enum target, Sizei levels, Enum internalformat, Sizei width, Sizei height, Sizei depth);
alias PFNgltexturestorage2dmultisampleextPROC = fn void(Uint texture, Enum target, Sizei samples, Enum internalformat, Sizei width, Sizei height, Boolean fixedsamplelocations);
alias PFNgltexturestorage3dmultisampleextPROC = fn void(Uint texture, Enum target, Sizei samples, Enum internalformat, Sizei width, Sizei height, Sizei depth, Boolean fixedsamplelocations);
alias PFNglvertexarraybindvertexbufferextPROC = fn void(Uint vaobj, Uint bindingindex, Uint buffer, Intptr offset, Sizei stride);
alias PFNglvertexarrayvertexattribformatextPROC = fn void(Uint vaobj, Uint attribindex, Int size, Enum type, Boolean normalized, Uint relativeoffset);
alias PFNglvertexarrayvertexattribiformatextPROC = fn void(Uint vaobj, Uint attribindex, Int size, Enum type, Uint relativeoffset);
alias PFNglvertexarrayvertexattriblformatextPROC = fn void(Uint vaobj, Uint attribindex, Int size, Enum type, Uint relativeoffset);
alias PFNglvertexarrayvertexattribbindingextPROC = fn void(Uint vaobj, Uint attribindex, Uint bindingindex);
alias PFNglvertexarrayvertexbindingdivisorextPROC = fn void(Uint vaobj, Uint bindingindex, Uint divisor);
alias PFNglvertexarrayvertexattribloffsetextPROC = fn void(Uint vaobj, Uint buffer, Uint index, Int size, Enum type, Sizei stride, Intptr offset);
alias PFNgltexturepagecommitmentextPROC = fn void(Uint texture, Int level, Int xoffset, Int yoffset, Int zoffset, Sizei width, Sizei height, Sizei depth, Boolean commit);
alias PFNglvertexarrayvertexattribdivisorextPROC = fn void(Uint vaobj, Uint index, Uint divisor);
#ifdef GLEXT_PROTOTYPES
void glMatrixLoadfEXT (Enum mode, Float* m);
void glMatrixLoaddEXT (Enum mode, Double* m);
void glMatrixMultfEXT (Enum mode, Float* m);
void glMatrixMultdEXT (Enum mode, Double* m);
void glMatrixLoadIdentityEXT (Enum mode);
void glMatrixRotatefEXT (Enum mode, Float angle, Float x, Float y, Float z);
void glMatrixRotatedEXT (Enum mode, Double angle, Double x, Double y, Double z);
void glMatrixScalefEXT (Enum mode, Float x, Float y, Float z);
void glMatrixScaledEXT (Enum mode, Double x, Double y, Double z);
void glMatrixTranslatefEXT (Enum mode, Float x, Float y, Float z);
void glMatrixTranslatedEXT (Enum mode, Double x, Double y, Double z);
void glMatrixFrustumEXT (Enum mode, Double left, Double right, Double bottom, Double top, Double zNear, Double zFar);
void glMatrixOrthoEXT (Enum mode, Double left, Double right, Double bottom, Double top, Double zNear, Double zFar);
void glMatrixPopEXT (Enum mode);
void glMatrixPushEXT (Enum mode);
void glClientAttribDefaultEXT (Bitfield mask);
void glPushClientAttribDefaultEXT (Bitfield mask);
void glTextureParameterfEXT (Uint texture, Enum target, Enum pname, Float param);
void glTextureParameterfvEXT (Uint texture, Enum target, Enum pname, Float* params);
void glTextureParameteriEXT (Uint texture, Enum target, Enum pname, Int param);
void glTextureParameterivEXT (Uint texture, Enum target, Enum pname, Int* params);
void glTextureImage1DEXT (Uint texture, Enum target, Int level, Int internalformat, Sizei width, Int border, Enum format, Enum type, void* pixels);
void glTextureImage2DEXT (Uint texture, Enum target, Int level, Int internalformat, Sizei width, Sizei height, Int border, Enum format, Enum type, void* pixels);
void glTextureSubImage1DEXT (Uint texture, Enum target, Int level, Int xoffset, Sizei width, Enum format, Enum type, void* pixels);
void glTextureSubImage2DEXT (Uint texture, Enum target, Int level, Int xoffset, Int yoffset, Sizei width, Sizei height, Enum format, Enum type, void* pixels);
void glCopyTextureImage1DEXT (Uint texture, Enum target, Int level, Enum internalformat, Int x, Int y, Sizei width, Int border);
void glCopyTextureImage2DEXT (Uint texture, Enum target, Int level, Enum internalformat, Int x, Int y, Sizei width, Sizei height, Int border);
void glCopyTextureSubImage1DEXT (Uint texture, Enum target, Int level, Int xoffset, Int x, Int y, Sizei width);
void glCopyTextureSubImage2DEXT (Uint texture, Enum target, Int level, Int xoffset, Int yoffset, Int x, Int y, Sizei width, Sizei height);
void glGetTextureImageEXT (Uint texture, Enum target, Int level, Enum format, Enum type, void* pixels);
void glGetTextureParameterfvEXT (Uint texture, Enum target, Enum pname, Float* params);
void glGetTextureParameterivEXT (Uint texture, Enum target, Enum pname, Int* params);
void glGetTextureLevelParameterfvEXT (Uint texture, Enum target, Int level, Enum pname, Float* params);
void glGetTextureLevelParameterivEXT (Uint texture, Enum target, Int level, Enum pname, Int* params);
void glTextureImage3DEXT (Uint texture, Enum target, Int level, Int internalformat, Sizei width, Sizei height, Sizei depth, Int border, Enum format, Enum type, void* pixels);
void glTextureSubImage3DEXT (Uint texture, Enum target, Int level, Int xoffset, Int yoffset, Int zoffset, Sizei width, Sizei height, Sizei depth, Enum format, Enum type, void* pixels);
void glCopyTextureSubImage3DEXT (Uint texture, Enum target, Int level, Int xoffset, Int yoffset, Int zoffset, Int x, Int y, Sizei width, Sizei height);
void glBindMultiTextureEXT (Enum texunit, Enum target, Uint texture);
void glMultiTexCoordPointerEXT (Enum texunit, Int size, Enum type, Sizei stride, void* pointer);
void glMultiTexEnvfEXT (Enum texunit, Enum target, Enum pname, Float param);
void glMultiTexEnvfvEXT (Enum texunit, Enum target, Enum pname, Float* params);
void glMultiTexEnviEXT (Enum texunit, Enum target, Enum pname, Int param);
void glMultiTexEnvivEXT (Enum texunit, Enum target, Enum pname, Int* params);
void glMultiTexGendEXT (Enum texunit, Enum coord, Enum pname, Double param);
void glMultiTexGendvEXT (Enum texunit, Enum coord, Enum pname, Double* params);
void glMultiTexGenfEXT (Enum texunit, Enum coord, Enum pname, Float param);
void glMultiTexGenfvEXT (Enum texunit, Enum coord, Enum pname, Float* params);
void glMultiTexGeniEXT (Enum texunit, Enum coord, Enum pname, Int param);
void glMultiTexGenivEXT (Enum texunit, Enum coord, Enum pname, Int* params);
void glGetMultiTexEnvfvEXT (Enum texunit, Enum target, Enum pname, Float* params);
void glGetMultiTexEnvivEXT (Enum texunit, Enum target, Enum pname, Int* params);
void glGetMultiTexGendvEXT (Enum texunit, Enum coord, Enum pname, Double* params);
void glGetMultiTexGenfvEXT (Enum texunit, Enum coord, Enum pname, Float* params);
void glGetMultiTexGenivEXT (Enum texunit, Enum coord, Enum pname, Int* params);
void glMultiTexParameteriEXT (Enum texunit, Enum target, Enum pname, Int param);
void glMultiTexParameterivEXT (Enum texunit, Enum target, Enum pname, Int* params);
void glMultiTexParameterfEXT (Enum texunit, Enum target, Enum pname, Float param);
void glMultiTexParameterfvEXT (Enum texunit, Enum target, Enum pname, Float* params);
void glMultiTexImage1DEXT (Enum texunit, Enum target, Int level, Int internalformat, Sizei width, Int border, Enum format, Enum type, void* pixels);
void glMultiTexImage2DEXT (Enum texunit, Enum target, Int level, Int internalformat, Sizei width, Sizei height, Int border, Enum format, Enum type, void* pixels);
void glMultiTexSubImage1DEXT (Enum texunit, Enum target, Int level, Int xoffset, Sizei width, Enum format, Enum type, void* pixels);
void glMultiTexSubImage2DEXT (Enum texunit, Enum target, Int level, Int xoffset, Int yoffset, Sizei width, Sizei height, Enum format, Enum type, void* pixels);
void glCopyMultiTexImage1DEXT (Enum texunit, Enum target, Int level, Enum internalformat, Int x, Int y, Sizei width, Int border);
void glCopyMultiTexImage2DEXT (Enum texunit, Enum target, Int level, Enum internalformat, Int x, Int y, Sizei width, Sizei height, Int border);
void glCopyMultiTexSubImage1DEXT (Enum texunit, Enum target, Int level, Int xoffset, Int x, Int y, Sizei width);
void glCopyMultiTexSubImage2DEXT (Enum texunit, Enum target, Int level, Int xoffset, Int yoffset, Int x, Int y, Sizei width, Sizei height);
void glGetMultiTexImageEXT (Enum texunit, Enum target, Int level, Enum format, Enum type, void* pixels);
void glGetMultiTexParameterfvEXT (Enum texunit, Enum target, Enum pname, Float* params);
void glGetMultiTexParameterivEXT (Enum texunit, Enum target, Enum pname, Int* params);
void glGetMultiTexLevelParameterfvEXT (Enum texunit, Enum target, Int level, Enum pname, Float* params);
void glGetMultiTexLevelParameterivEXT (Enum texunit, Enum target, Int level, Enum pname, Int* params);
void glMultiTexImage3DEXT (Enum texunit, Enum target, Int level, Int internalformat, Sizei width, Sizei height, Sizei depth, Int border, Enum format, Enum type, void* pixels);
void glMultiTexSubImage3DEXT (Enum texunit, Enum target, Int level, Int xoffset, Int yoffset, Int zoffset, Sizei width, Sizei height, Sizei depth, Enum format, Enum type, void* pixels);
void glCopyMultiTexSubImage3DEXT (Enum texunit, Enum target, Int level, Int xoffset, Int yoffset, Int zoffset, Int x, Int y, Sizei width, Sizei height);
void glEnableClientStateIndexedEXT (Enum array, Uint index);
void glDisableClientStateIndexedEXT (Enum array, Uint index);
void glGetFloatIndexedvEXT (Enum target, Uint index, Float* data);
void glGetDoubleIndexedvEXT (Enum target, Uint index, Double* data);
void glGetPointerIndexedvEXT (Enum target, Uint index, void** data);
void glEnableIndexedEXT (Enum target, Uint index);
void glDisableIndexedEXT (Enum target, Uint index);
Boolean glIsEnabledIndexedEXT (Enum target, Uint index);
void glGetIntegerIndexedvEXT (Enum target, Uint index, Int* data);
void glGetBooleanIndexedvEXT (Enum target, Uint index, Boolean* data);
void glCompressedTextureImage3DEXT (Uint texture, Enum target, Int level, Enum internalformat, Sizei width, Sizei height, Sizei depth, Int border, Sizei imageSize, void* bits);
void glCompressedTextureImage2DEXT (Uint texture, Enum target, Int level, Enum internalformat, Sizei width, Sizei height, Int border, Sizei imageSize, void* bits);
void glCompressedTextureImage1DEXT (Uint texture, Enum target, Int level, Enum internalformat, Sizei width, Int border, Sizei imageSize, void* bits);
void glCompressedTextureSubImage3DEXT (Uint texture, Enum target, Int level, Int xoffset, Int yoffset, Int zoffset, Sizei width, Sizei height, Sizei depth, Enum format, Sizei imageSize, void* bits);
void glCompressedTextureSubImage2DEXT (Uint texture, Enum target, Int level, Int xoffset, Int yoffset, Sizei width, Sizei height, Enum format, Sizei imageSize, void* bits);
void glCompressedTextureSubImage1DEXT (Uint texture, Enum target, Int level, Int xoffset, Sizei width, Enum format, Sizei imageSize, void* bits);
void glGetCompressedTextureImageEXT (Uint texture, Enum target, Int lod, void* img);
void glCompressedMultiTexImage3DEXT (Enum texunit, Enum target, Int level, Enum internalformat, Sizei width, Sizei height, Sizei depth, Int border, Sizei imageSize, void* bits);
void glCompressedMultiTexImage2DEXT (Enum texunit, Enum target, Int level, Enum internalformat, Sizei width, Sizei height, Int border, Sizei imageSize, void* bits);
void glCompressedMultiTexImage1DEXT (Enum texunit, Enum target, Int level, Enum internalformat, Sizei width, Int border, Sizei imageSize, void* bits);
void glCompressedMultiTexSubImage3DEXT (Enum texunit, Enum target, Int level, Int xoffset, Int yoffset, Int zoffset, Sizei width, Sizei height, Sizei depth, Enum format, Sizei imageSize, void* bits);
void glCompressedMultiTexSubImage2DEXT (Enum texunit, Enum target, Int level, Int xoffset, Int yoffset, Sizei width, Sizei height, Enum format, Sizei imageSize, void* bits);
void glCompressedMultiTexSubImage1DEXT (Enum texunit, Enum target, Int level, Int xoffset, Sizei width, Enum format, Sizei imageSize, void* bits);
void glGetCompressedMultiTexImageEXT (Enum texunit, Enum target, Int lod, void* img);
void glMatrixLoadTransposefEXT (Enum mode, Float* m);
void glMatrixLoadTransposedEXT (Enum mode, Double* m);
void glMatrixMultTransposefEXT (Enum mode, Float* m);
void glMatrixMultTransposedEXT (Enum mode, Double* m);
void glNamedBufferDataEXT (Uint buffer, Sizeiptr size, void* data, Enum usage);
void glNamedBufferSubDataEXT (Uint buffer, Intptr offset, Sizeiptr size, void* data);
void* glMapNamedBufferEXT (Uint buffer, Enum access);
Boolean glUnmapNamedBufferEXT (Uint buffer);
void glGetNamedBufferParameterivEXT (Uint buffer, Enum pname, Int* params);
void glGetNamedBufferPointervEXT (Uint buffer, Enum pname, void** params);
void glGetNamedBufferSubDataEXT (Uint buffer, Intptr offset, Sizeiptr size, void* data);
void glProgramUniform1fEXT (Uint program, Int location, Float v0);
void glProgramUniform2fEXT (Uint program, Int location, Float v0, Float v1);
void glProgramUniform3fEXT (Uint program, Int location, Float v0, Float v1, Float v2);
void glProgramUniform4fEXT (Uint program, Int location, Float v0, Float v1, Float v2, Float v3);
void glProgramUniform1iEXT (Uint program, Int location, Int v0);
void glProgramUniform2iEXT (Uint program, Int location, Int v0, Int v1);
void glProgramUniform3iEXT (Uint program, Int location, Int v0, Int v1, Int v2);
void glProgramUniform4iEXT (Uint program, Int location, Int v0, Int v1, Int v2, Int v3);
void glProgramUniform1fvEXT (Uint program, Int location, Sizei count, Float* value);
void glProgramUniform2fvEXT (Uint program, Int location, Sizei count, Float* value);
void glProgramUniform3fvEXT (Uint program, Int location, Sizei count, Float* value);
void glProgramUniform4fvEXT (Uint program, Int location, Sizei count, Float* value);
void glProgramUniform1ivEXT (Uint program, Int location, Sizei count, Int* value);
void glProgramUniform2ivEXT (Uint program, Int location, Sizei count, Int* value);
void glProgramUniform3ivEXT (Uint program, Int location, Sizei count, Int* value);
void glProgramUniform4ivEXT (Uint program, Int location, Sizei count, Int* value);
void glProgramUniformMatrix2fvEXT (Uint program, Int location, Sizei count, Boolean transpose, Float* value);
void glProgramUniformMatrix3fvEXT (Uint program, Int location, Sizei count, Boolean transpose, Float* value);
void glProgramUniformMatrix4fvEXT (Uint program, Int location, Sizei count, Boolean transpose, Float* value);
void glProgramUniformMatrix2x3fvEXT (Uint program, Int location, Sizei count, Boolean transpose, Float* value);
void glProgramUniformMatrix3x2fvEXT (Uint program, Int location, Sizei count, Boolean transpose, Float* value);
void glProgramUniformMatrix2x4fvEXT (Uint program, Int location, Sizei count, Boolean transpose, Float* value);
void glProgramUniformMatrix4x2fvEXT (Uint program, Int location, Sizei count, Boolean transpose, Float* value);
void glProgramUniformMatrix3x4fvEXT (Uint program, Int location, Sizei count, Boolean transpose, Float* value);
void glProgramUniformMatrix4x3fvEXT (Uint program, Int location, Sizei count, Boolean transpose, Float* value);
void glTextureBufferEXT (Uint texture, Enum target, Enum internalformat, Uint buffer);
void glMultiTexBufferEXT (Enum texunit, Enum target, Enum internalformat, Uint buffer);
void glTextureParameterIivEXT (Uint texture, Enum target, Enum pname, Int* params);
void glTextureParameterIuivEXT (Uint texture, Enum target, Enum pname, Uint* params);
void glGetTextureParameterIivEXT (Uint texture, Enum target, Enum pname, Int* params);
void glGetTextureParameterIuivEXT (Uint texture, Enum target, Enum pname, Uint* params);
void glMultiTexParameterIivEXT (Enum texunit, Enum target, Enum pname, Int* params);
void glMultiTexParameterIuivEXT (Enum texunit, Enum target, Enum pname, Uint* params);
void glGetMultiTexParameterIivEXT (Enum texunit, Enum target, Enum pname, Int* params);
void glGetMultiTexParameterIuivEXT (Enum texunit, Enum target, Enum pname, Uint* params);
void glProgramUniform1uiEXT (Uint program, Int location, Uint v0);
void glProgramUniform2uiEXT (Uint program, Int location, Uint v0, Uint v1);
void glProgramUniform3uiEXT (Uint program, Int location, Uint v0, Uint v1, Uint v2);
void glProgramUniform4uiEXT (Uint program, Int location, Uint v0, Uint v1, Uint v2, Uint v3);
void glProgramUniform1uivEXT (Uint program, Int location, Sizei count, Uint* value);
void glProgramUniform2uivEXT (Uint program, Int location, Sizei count, Uint* value);
void glProgramUniform3uivEXT (Uint program, Int location, Sizei count, Uint* value);
void glProgramUniform4uivEXT (Uint program, Int location, Sizei count, Uint* value);
void glNamedProgramLocalParameters4fvEXT (Uint program, Enum target, Uint index, Sizei count, Float* params);
void glNamedProgramLocalParameterI4iEXT (Uint program, Enum target, Uint index, Int x, Int y, Int z, Int w);
void glNamedProgramLocalParameterI4ivEXT (Uint program, Enum target, Uint index, Int* params);
void glNamedProgramLocalParametersI4ivEXT (Uint program, Enum target, Uint index, Sizei count, Int* params);
void glNamedProgramLocalParameterI4uiEXT (Uint program, Enum target, Uint index, Uint x, Uint y, Uint z, Uint w);
void glNamedProgramLocalParameterI4uivEXT (Uint program, Enum target, Uint index, Uint* params);
void glNamedProgramLocalParametersI4uivEXT (Uint program, Enum target, Uint index, Sizei count, Uint* params);
void glGetNamedProgramLocalParameterIivEXT (Uint program, Enum target, Uint index, Int* params);
void glGetNamedProgramLocalParameterIuivEXT (Uint program, Enum target, Uint index, Uint* params);
void glEnableClientStateiEXT (Enum array, Uint index);
void glDisableClientStateiEXT (Enum array, Uint index);
void glGetFloati_vEXT (Enum pname, Uint index, Float* params);
void glGetDoublei_vEXT (Enum pname, Uint index, Double* params);
void glGetPointeri_vEXT (Enum pname, Uint index, void** params);
void glNamedProgramStringEXT (Uint program, Enum target, Enum format, Sizei len, void* string);
void glNamedProgramLocalParameter4dEXT (Uint program, Enum target, Uint index, Double x, Double y, Double z, Double w);
void glNamedProgramLocalParameter4dvEXT (Uint program, Enum target, Uint index, Double* params);
void glNamedProgramLocalParameter4fEXT (Uint program, Enum target, Uint index, Float x, Float y, Float z, Float w);
void glNamedProgramLocalParameter4fvEXT (Uint program, Enum target, Uint index, Float* params);
void glGetNamedProgramLocalParameterdvEXT (Uint program, Enum target, Uint index, Double* params);
void glGetNamedProgramLocalParameterfvEXT (Uint program, Enum target, Uint index, Float* params);
void glGetNamedProgramivEXT (Uint program, Enum target, Enum pname, Int* params);
void glGetNamedProgramStringEXT (Uint program, Enum target, Enum pname, void* string);
void glNamedRenderbufferStorageEXT (Uint renderbuffer, Enum internalformat, Sizei width, Sizei height);
void glGetNamedRenderbufferParameterivEXT (Uint renderbuffer, Enum pname, Int* params);
void glNamedRenderbufferStorageMultisampleEXT (Uint renderbuffer, Sizei samples, Enum internalformat, Sizei width, Sizei height);
void glNamedRenderbufferStorageMultisampleCoverageEXT (Uint renderbuffer, Sizei coverageSamples, Sizei colorSamples, Enum internalformat, Sizei width, Sizei height);
Enum glCheckNamedFramebufferStatusEXT (Uint framebuffer, Enum target);
void glNamedFramebufferTexture1DEXT (Uint framebuffer, Enum attachment, Enum textarget, Uint texture, Int level);
void glNamedFramebufferTexture2DEXT (Uint framebuffer, Enum attachment, Enum textarget, Uint texture, Int level);
void glNamedFramebufferTexture3DEXT (Uint framebuffer, Enum attachment, Enum textarget, Uint texture, Int level, Int zoffset);
void glNamedFramebufferRenderbufferEXT (Uint framebuffer, Enum attachment, Enum renderbuffertarget, Uint renderbuffer);
void glGetNamedFramebufferAttachmentParameterivEXT (Uint framebuffer, Enum attachment, Enum pname, Int* params);
void glGenerateTextureMipmapEXT (Uint texture, Enum target);
void glGenerateMultiTexMipmapEXT (Enum texunit, Enum target);
void glFramebufferDrawBufferEXT (Uint framebuffer, Enum mode);
void glFramebufferDrawBuffersEXT (Uint framebuffer, Sizei n, Enum* bufs);
void glFramebufferReadBufferEXT (Uint framebuffer, Enum mode);
void glGetFramebufferParameterivEXT (Uint framebuffer, Enum pname, Int* params);
void glNamedCopyBufferSubDataEXT (Uint readBuffer, Uint writeBuffer, Intptr readOffset, Intptr writeOffset, Sizeiptr size);
void glNamedFramebufferTextureEXT (Uint framebuffer, Enum attachment, Uint texture, Int level);
void glNamedFramebufferTextureLayerEXT (Uint framebuffer, Enum attachment, Uint texture, Int level, Int layer);
void glNamedFramebufferTextureFaceEXT (Uint framebuffer, Enum attachment, Uint texture, Int level, Enum face);
void glTextureRenderbufferEXT (Uint texture, Enum target, Uint renderbuffer);
void glMultiTexRenderbufferEXT (Enum texunit, Enum target, Uint renderbuffer);
void glVertexArrayVertexOffsetEXT (Uint vaobj, Uint buffer, Int size, Enum type, Sizei stride, Intptr offset);
void glVertexArrayColorOffsetEXT (Uint vaobj, Uint buffer, Int size, Enum type, Sizei stride, Intptr offset);
void glVertexArrayEdgeFlagOffsetEXT (Uint vaobj, Uint buffer, Sizei stride, Intptr offset);
void glVertexArrayIndexOffsetEXT (Uint vaobj, Uint buffer, Enum type, Sizei stride, Intptr offset);
void glVertexArrayNormalOffsetEXT (Uint vaobj, Uint buffer, Enum type, Sizei stride, Intptr offset);
void glVertexArrayTexCoordOffsetEXT (Uint vaobj, Uint buffer, Int size, Enum type, Sizei stride, Intptr offset);
void glVertexArrayMultiTexCoordOffsetEXT (Uint vaobj, Uint buffer, Enum texunit, Int size, Enum type, Sizei stride, Intptr offset);
void glVertexArrayFogCoordOffsetEXT (Uint vaobj, Uint buffer, Enum type, Sizei stride, Intptr offset);
void glVertexArraySecondaryColorOffsetEXT (Uint vaobj, Uint buffer, Int size, Enum type, Sizei stride, Intptr offset);
void glVertexArrayVertexAttribOffsetEXT (Uint vaobj, Uint buffer, Uint index, Int size, Enum type, Boolean normalized, Sizei stride, Intptr offset);
void glVertexArrayVertexAttribIOffsetEXT (Uint vaobj, Uint buffer, Uint index, Int size, Enum type, Sizei stride, Intptr offset);
void glEnableVertexArrayEXT (Uint vaobj, Enum array);
void glDisableVertexArrayEXT (Uint vaobj, Enum array);
void glEnableVertexArrayAttribEXT (Uint vaobj, Uint index);
void glDisableVertexArrayAttribEXT (Uint vaobj, Uint index);
void glGetVertexArrayIntegervEXT (Uint vaobj, Enum pname, Int* param);
void glGetVertexArrayPointervEXT (Uint vaobj, Enum pname, void** param);
void glGetVertexArrayIntegeri_vEXT (Uint vaobj, Uint index, Enum pname, Int* param);
void glGetVertexArrayPointeri_vEXT (Uint vaobj, Uint index, Enum pname, void** param);
void* glMapNamedBufferRangeEXT (Uint buffer, Intptr offset, Sizeiptr length, Bitfield access);
void glFlushMappedNamedBufferRangeEXT (Uint buffer, Intptr offset, Sizeiptr length);
void glNamedBufferStorageEXT (Uint buffer, Sizeiptr size, void* data, Bitfield flags);
void glClearNamedBufferDataEXT (Uint buffer, Enum internalformat, Enum format, Enum type, void* data);
void glClearNamedBufferSubDataEXT (Uint buffer, Enum internalformat, Sizeiptr offset, Sizeiptr size, Enum format, Enum type, void* data);
void glNamedFramebufferParameteriEXT (Uint framebuffer, Enum pname, Int param);
void glGetNamedFramebufferParameterivEXT (Uint framebuffer, Enum pname, Int* params);
void glProgramUniform1dEXT (Uint program, Int location, Double x);
void glProgramUniform2dEXT (Uint program, Int location, Double x, Double y);
void glProgramUniform3dEXT (Uint program, Int location, Double x, Double y, Double z);
void glProgramUniform4dEXT (Uint program, Int location, Double x, Double y, Double z, Double w);
void glProgramUniform1dvEXT (Uint program, Int location, Sizei count, Double* value);
void glProgramUniform2dvEXT (Uint program, Int location, Sizei count, Double* value);
void glProgramUniform3dvEXT (Uint program, Int location, Sizei count, Double* value);
void glProgramUniform4dvEXT (Uint program, Int location, Sizei count, Double* value);
void glProgramUniformMatrix2dvEXT (Uint program, Int location, Sizei count, Boolean transpose, Double* value);
void glProgramUniformMatrix3dvEXT (Uint program, Int location, Sizei count, Boolean transpose, Double* value);
void glProgramUniformMatrix4dvEXT (Uint program, Int location, Sizei count, Boolean transpose, Double* value);
void glProgramUniformMatrix2x3dvEXT (Uint program, Int location, Sizei count, Boolean transpose, Double* value);
void glProgramUniformMatrix2x4dvEXT (Uint program, Int location, Sizei count, Boolean transpose, Double* value);
void glProgramUniformMatrix3x2dvEXT (Uint program, Int location, Sizei count, Boolean transpose, Double* value);
void glProgramUniformMatrix3x4dvEXT (Uint program, Int location, Sizei count, Boolean transpose, Double* value);
void glProgramUniformMatrix4x2dvEXT (Uint program, Int location, Sizei count, Boolean transpose, Double* value);
void glProgramUniformMatrix4x3dvEXT (Uint program, Int location, Sizei count, Boolean transpose, Double* value);
void glTextureBufferRangeEXT (Uint texture, Enum target, Enum internalformat, Uint buffer, Intptr offset, Sizeiptr size);
void glTextureStorage1DEXT (Uint texture, Enum target, Sizei levels, Enum internalformat, Sizei width);
void glTextureStorage2DEXT (Uint texture, Enum target, Sizei levels, Enum internalformat, Sizei width, Sizei height);
void glTextureStorage3DEXT (Uint texture, Enum target, Sizei levels, Enum internalformat, Sizei width, Sizei height, Sizei depth);
void glTextureStorage2DMultisampleEXT (Uint texture, Enum target, Sizei samples, Enum internalformat, Sizei width, Sizei height, Boolean fixedsamplelocations);
void glTextureStorage3DMultisampleEXT (Uint texture, Enum target, Sizei samples, Enum internalformat, Sizei width, Sizei height, Sizei depth, Boolean fixedsamplelocations);
void glVertexArrayBindVertexBufferEXT (Uint vaobj, Uint bindingindex, Uint buffer, Intptr offset, Sizei stride);
void glVertexArrayVertexAttribFormatEXT (Uint vaobj, Uint attribindex, Int size, Enum type, Boolean normalized, Uint relativeoffset);
void glVertexArrayVertexAttribIFormatEXT (Uint vaobj, Uint attribindex, Int size, Enum type, Uint relativeoffset);
void glVertexArrayVertexAttribLFormatEXT (Uint vaobj, Uint attribindex, Int size, Enum type, Uint relativeoffset);
void glVertexArrayVertexAttribBindingEXT (Uint vaobj, Uint attribindex, Uint bindingindex);
void glVertexArrayVertexBindingDivisorEXT (Uint vaobj, Uint bindingindex, Uint divisor);
void glVertexArrayVertexAttribLOffsetEXT (Uint vaobj, Uint buffer, Uint index, Int size, Enum type, Sizei stride, Intptr offset);
void glTexturePageCommitmentEXT (Uint texture, Int level, Int xoffset, Int yoffset, Int zoffset, Sizei width, Sizei height, Sizei depth, Boolean commit);
void glVertexArrayVertexAttribDivisorEXT (Uint vaobj, Uint index, Uint divisor);
#endif
#endif /* EXT_direct_state_access* /

#ifndef EXT_draw_instanced
#define EXT_draw_instanced 1
alias PFNgldrawarraysinstancedextPROC = fn void(Enum mode, Int start, Sizei count, Sizei primcount);
alias PFNgldrawelementsinstancedextPROC = fn void(Enum mode, Sizei count, Enum type, void* indices, Sizei primcount);
#ifdef GLEXT_PROTOTYPES
void glDrawArraysInstancedEXT (Enum mode, Int start, Sizei count, Sizei primcount);
void glDrawElementsInstancedEXT (Enum mode, Sizei count, Enum type, void* indices, Sizei primcount);
#endif
#endif /* EXT_draw_instanced* /

#ifndef EXT_multiview_tessellation_geometry_shader
#define EXT_multiview_tessellation_geometry_shader 1
#endif /* EXT_multiview_tessellation_geometry_shader* /

#ifndef EXT_multiview_texture_multisample
#define EXT_multiview_texture_multisample 1
#endif /* EXT_multiview_texture_multisample* /

#ifndef EXT_multiview_timer_query
#define EXT_multiview_timer_query 1
#endif /* EXT_multiview_timer_query* /

#ifndef EXT_polygon_offset_clamp
#define EXT_polygon_offset_clamp 1
#define POLYGON_OFFSET_CLAMP_EXT       0x8E1B
alias PFNglpolygonoffsetclampextPROC = fn void(Float factor, Float units, Float clamp);
#ifdef GLEXT_PROTOTYPES
void glPolygonOffsetClampEXT (Float factor, Float units, Float clamp);
#endif
#endif /* EXT_polygon_offset_clamp* /

#ifndef EXT_post_depth_coverage
#define EXT_post_depth_coverage 1
#endif /* EXT_post_depth_coverage* /

#ifndef EXT_raster_multisample
#define EXT_raster_multisample 1
#define RASTER_MULTISAMPLE_EXT         0x9327
#define RASTER_SAMPLES_EXT             0x9328
#define MAX_RASTER_SAMPLES_EXT         0x9329
#define RASTER_FIXED_SAMPLE_LOCATIONS_EXT 0x932A
#define MULTISAMPLE_RASTERIZATION_ALLOWED_EXT 0x932B
#define EFFECTIVE_RASTER_SAMPLES_EXT   0x932C
alias PFNglrastersamplesextPROC = fn void(Uint samples, Boolean fixedsamplelocations);
#ifdef GLEXT_PROTOTYPES
void glRasterSamplesEXT (Uint samples, Boolean fixedsamplelocations);
#endif
#endif /* EXT_raster_multisample* /

#ifndef EXT_separate_shader_objects
#define EXT_separate_shader_objects 1
#define ACTIVE_PROGRAM_EXT             0x8B8D
alias PFNgluseshaderprogramextPROC = fn void(Enum type, Uint program);
alias PFNglactiveprogramextPROC = fn void(Uint program);
alias PFNglcreateshaderprogramextPROC = fn Uint(Enum type, ZString string);
#ifdef GLEXT_PROTOTYPES
void glUseShaderProgramEXT (Enum type, Uint program);
void glActiveProgramEXT (Uint program);
Uint glCreateShaderProgramEXT (Enum type, ZString string);
#endif
#endif /* EXT_separate_shader_objects* /

#ifndef EXT_shader_framebuffer_fetch
#define EXT_shader_framebuffer_fetch 1
#define FRAGMENT_SHADER_DISCARDS_SAMPLES_EXT 0x8A52
#endif /* EXT_shader_framebuffer_fetch* /

#ifndef EXT_shader_framebuffer_fetch_non_coherent
#define EXT_shader_framebuffer_fetch_non_coherent 1
alias PFNglframebufferfetchbarrierextPROC = fn void();
#ifdef GLEXT_PROTOTYPES
void glFramebufferFetchBarrierEXT ();
#endif
#endif /* EXT_shader_framebuffer_fetch_non_coherent* /

#ifndef EXT_shader_integer_mix
#define EXT_shader_integer_mix 1
#endif /* EXT_shader_integer_mix* /

#ifndef EXT_texture_compression_s3tc
#define EXT_texture_compression_s3tc 1
#define COMPRESSED_RGB_S3TC_DXT1_EXT   0x83F0
#define COMPRESSED_RGBA_S3TC_DXT1_EXT  0x83F1
#define COMPRESSED_RGBA_S3TC_DXT3_EXT  0x83F2
#define COMPRESSED_RGBA_S3TC_DXT5_EXT  0x83F3
#endif /* EXT_texture_compression_s3tc* /

#ifndef EXT_texture_filter_minmax
#define EXT_texture_filter_minmax 1
#define TEXTURE_REDUCTION_MODE_EXT     0x9366
#define WEIGHTED_AVERAGE_EXT           0x9367
#endif /* EXT_texture_filter_minmax* /

#ifndef EXT_texture_sRGB_R8
#define EXT_texture_sRGB_R8 1
#define SR8_EXT                        0x8FBD
#endif /* EXT_texture_sRGB_R8* /

#ifndef EXT_texture_sRGB_RG8
#define EXT_texture_sRGB_RG8 1
#define SRG8_EXT                       0x8FBE
#endif /* EXT_texture_sRGB_RG8* /

#ifndef EXT_texture_sRGB_decode
#define EXT_texture_sRGB_decode 1
#define TEXTURE_SRGB_DECODE_EXT        0x8A48
#define DECODE_EXT                     0x8A49
#define SKIP_DECODE_EXT                0x8A4A
#endif /* EXT_texture_sRGB_decode* /

#ifndef EXT_texture_shadow_lod
#define EXT_texture_shadow_lod 1
#endif /* EXT_texture_shadow_lod* /

#ifndef EXT_texture_storage
#define EXT_texture_storage 1
#define TEXTURE_IMMUTABLE_FORMAT_EXT   0x912F
#define ALPHA8_EXT                     0x803C
#define LUMINANCE8_EXT                 0x8040
#define LUMINANCE8_ALPHA8_EXT          0x8045
#define RGBA32F_EXT                    0x8814
#define RGB32F_EXT                     0x8815
#define ALPHA32F_EXT                   0x8816
#define LUMINANCE32F_EXT               0x8818
#define LUMINANCE_ALPHA32F_EXT         0x8819
#define RGBA16F_EXT                    0x881A
#define RGB16F_EXT                     0x881B
#define ALPHA16F_EXT                   0x881C
#define LUMINANCE16F_EXT               0x881E
#define LUMINANCE_ALPHA16F_EXT         0x881F
#define RGB10_A2_EXT                   0x8059
#define RGB10_EXT                      0x8052
#define BGRA8_EXT                      0x93A1
#define R8_EXT                         0x8229
#define RG8_EXT                        0x822B
#define R32F_EXT                       0x822E
#define RG32F_EXT                      0x8230
#define R16F_EXT                       0x822D
#define RG16F_EXT                      0x822F
alias PFNgltexstorage1dextPROC = fn void(Enum target, Sizei levels, Enum internalformat, Sizei width);
alias PFNgltexstorage2dextPROC = fn void(Enum target, Sizei levels, Enum internalformat, Sizei width, Sizei height);
alias PFNgltexstorage3dextPROC = fn void(Enum target, Sizei levels, Enum internalformat, Sizei width, Sizei height, Sizei depth);
#ifdef GLEXT_PROTOTYPES
void glTexStorage1DEXT (Enum target, Sizei levels, Enum internalformat, Sizei width);
void glTexStorage2DEXT (Enum target, Sizei levels, Enum internalformat, Sizei width, Sizei height);
void glTexStorage3DEXT (Enum target, Sizei levels, Enum internalformat, Sizei width, Sizei height, Sizei depth);
#endif
#endif /* EXT_texture_storage* /

#ifndef EXT_window_rectangles
#define EXT_window_rectangles 1
#define INCLUSIVE_EXT                  0x8F10
#define EXCLUSIVE_EXT                  0x8F11
#define WINDOW_RECTANGLE_EXT           0x8F12
#define WINDOW_RECTANGLE_MODE_EXT      0x8F13
#define MAX_WINDOW_RECTANGLES_EXT      0x8F14
#define NUM_WINDOW_RECTANGLES_EXT      0x8F15
alias PFNglwindowrectanglesextPROC = fn void(Enum mode, Sizei count, Int* box);
#ifdef GLEXT_PROTOTYPES
void glWindowRectanglesEXT (Enum mode, Sizei count, Int* box);
#endif
#endif /* EXT_window_rectangles* /

#ifndef INTEL_blackhole_render
#define INTEL_blackhole_render 1
#define BLACKHOLE_RENDER_INTEL         0x83FC
#endif /* INTEL_blackhole_render* /

#ifndef INTEL_conservative_rasterization
#define INTEL_conservative_rasterization 1
#define CONSERVATIVE_RASTERIZATION_INTEL 0x83FE
#endif /* INTEL_conservative_rasterization* /

#ifndef INTEL_framebuffer_CMAA
#define INTEL_framebuffer_CMAA 1
alias PFNglapplyframebufferattachmentcmaaintelPROC = fn void();
#ifdef GLEXT_PROTOTYPES
void glApplyFramebufferAttachmentCMAAINTEL ();
#endif
#endif /* INTEL_framebuffer_CMAA* /

#ifndef INTEL_performance_query
#define INTEL_performance_query 1
#define PERFQUERY_SINGLE_CONTEXT_INTEL 0x00000000
#define PERFQUERY_GLOBAL_CONTEXT_INTEL 0x00000001
#define PERFQUERY_WAIT_INTEL           0x83FB
#define PERFQUERY_FLUSH_INTEL          0x83FA
#define PERFQUERY_DONOT_FLUSH_INTEL    0x83F9
#define PERFQUERY_COUNTER_EVENT_INTEL  0x94F0
#define PERFQUERY_COUNTER_DURATION_NORM_INTEL 0x94F1
#define PERFQUERY_COUNTER_DURATION_RAW_INTEL 0x94F2
#define PERFQUERY_COUNTER_THROUGHPUT_INTEL 0x94F3
#define PERFQUERY_COUNTER_RAW_INTEL    0x94F4
#define PERFQUERY_COUNTER_TIMESTAMP_INTEL 0x94F5
#define PERFQUERY_COUNTER_DATA_UINT32_INTEL 0x94F8
#define PERFQUERY_COUNTER_DATA_UINT64_INTEL 0x94F9
#define PERFQUERY_COUNTER_DATA_FLOAT_INTEL 0x94FA
#define PERFQUERY_COUNTER_DATA_DOUBLE_INTEL 0x94FB
#define PERFQUERY_COUNTER_DATA_BOOL32_INTEL 0x94FC
#define PERFQUERY_QUERY_NAME_LENGTH_MAX_INTEL 0x94FD
#define PERFQUERY_COUNTER_NAME_LENGTH_MAX_INTEL 0x94FE
#define PERFQUERY_COUNTER_DESC_LENGTH_MAX_INTEL 0x94FF
#define PERFQUERY_GPA_EXTENDED_COUNTERS_INTEL 0x9500
alias PFNglbeginperfqueryintelPROC = fn void(Uint queryHandle);
alias PFNglcreateperfqueryintelPROC = fn void(Uint queryId, Uint* queryHandle);
alias PFNgldeleteperfqueryintelPROC = fn void(Uint queryHandle);
alias PFNglendperfqueryintelPROC = fn void(Uint queryHandle);
alias PFNglgetfirstperfqueryidintelPROC = fn void(Uint* queryId);
alias PFNglgetnextperfqueryidintelPROC = fn void(Uint queryId, Uint* nextQueryId);
alias PFNglgetperfcounterinfointelPROC = fn void(Uint queryId, Uint counterId, Uint counterNameLength, ZString counterName, Uint counterDescLength, ZString counterDesc, Uint* counterOffset, Uint* counterDataSize, Uint* counterTypeEnum, Uint* counterDataTypeEnum, Uint64* rawCounterMaxValue);
alias PFNglgetperfquerydataintelPROC = fn void(Uint queryHandle, Uint flags, Sizei dataSize, void* data, Uint* bytesWritten);
alias PFNglgetperfqueryidbynameintelPROC = fn void(ZString queryName, Uint* queryId);
alias PFNglgetperfqueryinfointelPROC = fn void(Uint queryId, Uint queryNameLength, ZString queryName, Uint* dataSize, Uint* noCounters, Uint* noInstances, Uint* capsMask);
#ifdef GLEXT_PROTOTYPES
void glBeginPerfQueryINTEL (Uint queryHandle);
void glCreatePerfQueryINTEL (Uint queryId, Uint* queryHandle);
void glDeletePerfQueryINTEL (Uint queryHandle);
void glEndPerfQueryINTEL (Uint queryHandle);
void glGetFirstPerfQueryIdINTEL (Uint* queryId);
void glGetNextPerfQueryIdINTEL (Uint queryId, Uint* nextQueryId);
void glGetPerfCounterInfoINTEL (Uint queryId, Uint counterId, Uint counterNameLength, ZString counterName, Uint counterDescLength, ZString counterDesc, Uint* counterOffset, Uint* counterDataSize, Uint* counterTypeEnum, Uint* counterDataTypeEnum, Uint64* rawCounterMaxValue);
void glGetPerfQueryDataINTEL (Uint queryHandle, Uint flags, Sizei dataSize, void* data, Uint* bytesWritten);
void glGetPerfQueryIdByNameINTEL (ZString queryName, Uint* queryId);
void glGetPerfQueryInfoINTEL (Uint queryId, Uint queryNameLength, ZString queryName, Uint* dataSize, Uint* noCounters, Uint* noInstances, Uint* capsMask);
#endif
#endif /* INTEL_performance_query* /

#ifndef MESA_framebuffer_flip_x
#define MESA_framebuffer_flip_x 1
#define FRAMEBUFFER_FLIP_X_MESA        0x8BBC
#endif /* MESA_framebuffer_flip_x* /

#ifndef MESA_framebuffer_flip_y
#define MESA_framebuffer_flip_y 1
#define FRAMEBUFFER_FLIP_Y_MESA        0x8BBB
alias PFNglframebufferparameterimesaPROC = fn void(Enum target, Enum pname, Int param);
alias PFNglgetframebufferparameterivmesaPROC = fn void(Enum target, Enum pname, Int* params);
#ifdef GLEXT_PROTOTYPES
void glFramebufferParameteriMESA (Enum target, Enum pname, Int param);
void glGetFramebufferParameterivMESA (Enum target, Enum pname, Int* params);
#endif
#endif /* MESA_framebuffer_flip_y* /

#ifndef MESA_framebuffer_swap_xy
#define MESA_framebuffer_swap_xy 1
#define FRAMEBUFFER_SWAP_XY_MESA       0x8BBD
#endif /* MESA_framebuffer_swap_xy* /

#ifndef NV_bindless_multi_draw_indirect
#define NV_bindless_multi_draw_indirect 1
alias PFNglmultidrawarraysindirectbindlessnvPROC = fn void(Enum mode, void* indirect, Sizei drawCount, Sizei stride, Int vertexBufferCount);
alias PFNglmultidrawelementsindirectbindlessnvPROC = fn void(Enum mode, Enum type, void* indirect, Sizei drawCount, Sizei stride, Int vertexBufferCount);
#ifdef GLEXT_PROTOTYPES
void glMultiDrawArraysIndirectBindlessNV (Enum mode, void* indirect, Sizei drawCount, Sizei stride, Int vertexBufferCount);
void glMultiDrawElementsIndirectBindlessNV (Enum mode, Enum type, void* indirect, Sizei drawCount, Sizei stride, Int vertexBufferCount);
#endif
#endif /* NV_bindless_multi_draw_indirect* /

#ifndef NV_bindless_multi_draw_indirect_count
#define NV_bindless_multi_draw_indirect_count 1
alias PFNglmultidrawarraysindirectbindlesscountnvPROC = fn void(Enum mode, void* indirect, Sizei drawCount, Sizei maxDrawCount, Sizei stride, Int vertexBufferCount);
alias PFNglmultidrawelementsindirectbindlesscountnvPROC = fn void(Enum mode, Enum type, void* indirect, Sizei drawCount, Sizei maxDrawCount, Sizei stride, Int vertexBufferCount);
#ifdef GLEXT_PROTOTYPES
void glMultiDrawArraysIndirectBindlessCountNV (Enum mode, void* indirect, Sizei drawCount, Sizei maxDrawCount, Sizei stride, Int vertexBufferCount);
void glMultiDrawElementsIndirectBindlessCountNV (Enum mode, Enum type, void* indirect, Sizei drawCount, Sizei maxDrawCount, Sizei stride, Int vertexBufferCount);
#endif
#endif /* NV_bindless_multi_draw_indirect_count* /

#ifndef NV_bindless_texture
#define NV_bindless_texture 1
alias PFNglgettexturehandlenvPROC = fn Uint64(Uint texture);
alias PFNglgettexturesamplerhandlenvPROC = fn Uint64(Uint texture, Uint sampler);
alias PFNglmaketexturehandleresidentnvPROC = fn void(Uint64 handle);
alias PFNglmaketexturehandlenonresidentnvPROC = fn void(Uint64 handle);
alias PFNglgetimagehandlenvPROC = fn Uint64(Uint texture, Int level, Boolean layered, Int layer, Enum format);
alias PFNglmakeimagehandleresidentnvPROC = fn void(Uint64 handle, Enum access);
alias PFNglmakeimagehandlenonresidentnvPROC = fn void(Uint64 handle);
alias PFNgluniformhandleui64nvPROC = fn void(Int location, Uint64 value);
alias PFNgluniformhandleui64vnvPROC = fn void(Int location, Sizei count, Uint64* value);
alias PFNglprogramuniformhandleui64nvPROC = fn void(Uint program, Int location, Uint64 value);
alias PFNglprogramuniformhandleui64vnvPROC = fn void(Uint program, Int location, Sizei count, Uint64* values);
alias PFNglistexturehandleresidentnvPROC = fn Boolean(Uint64 handle);
alias PFNglisimagehandleresidentnvPROC = fn Boolean(Uint64 handle);
#ifdef GLEXT_PROTOTYPES
Uint64 glGetTextureHandleNV (Uint texture);
Uint64 glGetTextureSamplerHandleNV (Uint texture, Uint sampler);
void glMakeTextureHandleResidentNV (Uint64 handle);
void glMakeTextureHandleNonResidentNV (Uint64 handle);
Uint64 glGetImageHandleNV (Uint texture, Int level, Boolean layered, Int layer, Enum format);
void glMakeImageHandleResidentNV (Uint64 handle, Enum access);
void glMakeImageHandleNonResidentNV (Uint64 handle);
void glUniformHandleui64NV (Int location, Uint64 value);
void glUniformHandleui64vNV (Int location, Sizei count, Uint64* value);
void glProgramUniformHandleui64NV (Uint program, Int location, Uint64 value);
void glProgramUniformHandleui64vNV (Uint program, Int location, Sizei count, Uint64* values);
Boolean glIsTextureHandleResidentNV (Uint64 handle);
Boolean glIsImageHandleResidentNV (Uint64 handle);
#endif
#endif /* NV_bindless_texture* /

#ifndef NV_blend_equation_advanced
#define NV_blend_equation_advanced 1
#define BLEND_OVERLAP_NV               0x9281
#define BLEND_PREMULTIPLIED_SRC_NV     0x9280
#define BLUE_NV                        0x1905
#define COLORBURN_NV                   0x929A
#define COLORDODGE_NV                  0x9299
#define CONJOINT_NV                    0x9284
#define CONTRAST_NV                    0x92A1
#define DARKEN_NV                      0x9297
#define DIFFERENCE_NV                  0x929E
#define DISJOINT_NV                    0x9283
#define DST_ATOP_NV                    0x928F
#define DST_IN_NV                      0x928B
#define DST_NV                         0x9287
#define DST_OUT_NV                     0x928D
#define DST_OVER_NV                    0x9289
#define EXCLUSION_NV                   0x92A0
#define GREEN_NV                       0x1904
#define HARDLIGHT_NV                   0x929B
#define HARDMIX_NV                     0x92A9
#define HSL_COLOR_NV                   0x92AF
#define HSL_HUE_NV                     0x92AD
#define HSL_LUMINOSITY_NV              0x92B0
#define HSL_SATURATION_NV              0x92AE
#define INVERT_OVG_NV                  0x92B4
#define INVERT_RGB_NV                  0x92A3
#define LIGHTEN_NV                     0x9298
#define LINEARBURN_NV                  0x92A5
#define LINEARDODGE_NV                 0x92A4
#define LINEARLIGHT_NV                 0x92A7
#define MINUS_CLAMPED_NV               0x92B3
#define MINUS_NV                       0x929F
#define MULTIPLY_NV                    0x9294
#define OVERLAY_NV                     0x9296
#define PINLIGHT_NV                    0x92A8
#define PLUS_CLAMPED_ALPHA_NV          0x92B2
#define PLUS_CLAMPED_NV                0x92B1
#define PLUS_DARKER_NV                 0x9292
#define PLUS_NV                        0x9291
#define RED_NV                         0x1903
#define SCREEN_NV                      0x9295
#define SOFTLIGHT_NV                   0x929C
#define SRC_ATOP_NV                    0x928E
#define SRC_IN_NV                      0x928A
#define SRC_NV                         0x9286
#define SRC_OUT_NV                     0x928C
#define SRC_OVER_NV                    0x9288
#define UNCORRELATED_NV                0x9282
#define VIVIDLIGHT_NV                  0x92A6
#define XOR_NV                         0x1506
alias PFNglblendparameterinvPROC = fn void(Enum pname, Int value);
alias PFNglblendbarriernvPROC = fn void();
#ifdef GLEXT_PROTOTYPES
void glBlendParameteriNV (Enum pname, Int value);
void glBlendBarrierNV ();
#endif
#endif /* NV_blend_equation_advanced* /

#ifndef NV_blend_equation_advanced_coherent
#define NV_blend_equation_advanced_coherent 1
#define BLEND_ADVANCED_COHERENT_NV     0x9285
#endif /* NV_blend_equation_advanced_coherent* /

#ifndef NV_blend_minmax_factor
#define NV_blend_minmax_factor 1
#define FACTOR_MIN_AMD                 0x901C
#define FACTOR_MAX_AMD                 0x901D
#endif /* NV_blend_minmax_factor* /

#ifndef NV_clip_space_w_scaling
#define NV_clip_space_w_scaling 1
#define VIEWPORT_POSITION_W_SCALE_NV   0x937C
#define VIEWPORT_POSITION_W_SCALE_X_COEFF_NV 0x937D
#define VIEWPORT_POSITION_W_SCALE_Y_COEFF_NV 0x937E
alias PFNglviewportpositionwscalenvPROC = fn void(Uint index, Float xcoeff, Float ycoeff);
#ifdef GLEXT_PROTOTYPES
void glViewportPositionWScaleNV (Uint index, Float xcoeff, Float ycoeff);
#endif
#endif /* NV_clip_space_w_scaling* /

#ifndef NV_command_list
#define NV_command_list 1
#define TERMINATE_SEQUENCE_COMMAND_NV  0x0000
#define NOP_COMMAND_NV                 0x0001
#define DRAW_ELEMENTS_COMMAND_NV       0x0002
#define DRAW_ARRAYS_COMMAND_NV         0x0003
#define DRAW_ELEMENTS_STRIP_COMMAND_NV 0x0004
#define DRAW_ARRAYS_STRIP_COMMAND_NV   0x0005
#define DRAW_ELEMENTS_INSTANCED_COMMAND_NV 0x0006
#define DRAW_ARRAYS_INSTANCED_COMMAND_NV 0x0007
#define ELEMENT_ADDRESS_COMMAND_NV     0x0008
#define ATTRIBUTE_ADDRESS_COMMAND_NV   0x0009
#define UNIFORM_ADDRESS_COMMAND_NV     0x000A
#define BLEND_COLOR_COMMAND_NV         0x000B
#define STENCIL_REF_COMMAND_NV         0x000C
#define LINE_WIDTH_COMMAND_NV          0x000D
#define POLYGON_OFFSET_COMMAND_NV      0x000E
#define ALPHA_REF_COMMAND_NV           0x000F
#define VIEWPORT_COMMAND_NV            0x0010
#define SCISSOR_COMMAND_NV             0x0011
#define FRONT_FACE_COMMAND_NV          0x0012
alias PFNglcreatestatesnvPROC = fn void(Sizei n, Uint* states);
alias PFNgldeletestatesnvPROC = fn void(Sizei n, Uint* states);
alias PFNglisstatenvPROC = fn Boolean(Uint state);
alias PFNglstatecapturenvPROC = fn void(Uint state, Enum mode);
alias PFNglgetcommandheadernvPROC = fn Uint(Enum tokenID, Uint size);
alias PFNglgetstageindexnvPROC = fn UShort(Enum shadertype);
alias PFNgldrawcommandsnvPROC = fn void(Enum primitiveMode, Uint buffer, Intptr* indirects, Sizei* sizes, Uint count);
alias PFNgldrawcommandsaddressnvPROC = fn void(Enum primitiveMode, Uint64* indirects, Sizei* sizes, Uint count);
alias PFNgldrawcommandsstatesnvPROC = fn void(Uint buffer, Intptr* indirects, Sizei* sizes, Uint* states, Uint* fbos, Uint count);
alias PFNgldrawcommandsstatesaddressnvPROC = fn void(Uint64* indirects, Sizei* sizes, Uint* states, Uint* fbos, Uint count);
alias PFNglcreatecommandlistsnvPROC = fn void(Sizei n, Uint* lists);
alias PFNgldeletecommandlistsnvPROC = fn void(Sizei n, Uint* lists);
alias PFNgliscommandlistnvPROC = fn Boolean(Uint list);
alias PFNgllistdrawcommandsstatesclientnvPROC = fn void(Uint list, Uint segment, void** indirects, Sizei* sizes, Uint* states, Uint* fbos, Uint count);
alias PFNglcommandlistsegmentsnvPROC = fn void(Uint list, Uint segments);
alias PFNglcompilecommandlistnvPROC = fn void(Uint list);
alias PFNglcallcommandlistnvPROC = fn void(Uint list);
#ifdef GLEXT_PROTOTYPES
void glCreateStatesNV (Sizei n, Uint* states);
void glDeleteStatesNV (Sizei n, Uint* states);
Boolean glIsStateNV (Uint state);
void glStateCaptureNV (Uint state, Enum mode);
Uint glGetCommandHeaderNV (Enum tokenID, Uint size);
UShort glGetStageIndexNV (Enum shadertype);
void glDrawCommandsNV (Enum primitiveMode, Uint buffer, Intptr* indirects, Sizei* sizes, Uint count);
void glDrawCommandsAddressNV (Enum primitiveMode, Uint64* indirects, Sizei* sizes, Uint count);
void glDrawCommandsStatesNV (Uint buffer, Intptr* indirects, Sizei* sizes, Uint* states, Uint* fbos, Uint count);
void glDrawCommandsStatesAddressNV (Uint64* indirects, Sizei* sizes, Uint* states, Uint* fbos, Uint count);
void glCreateCommandListsNV (Sizei n, Uint* lists);
void glDeleteCommandListsNV (Sizei n, Uint* lists);
Boolean glIsCommandListNV (Uint list);
void glListDrawCommandsStatesClientNV (Uint list, Uint segment, void** indirects, Sizei* sizes, Uint* states, Uint* fbos, Uint count);
void glCommandListSegmentsNV (Uint list, Uint segments);
void glCompileCommandListNV (Uint list);
void glCallCommandListNV (Uint list);
#endif
#endif /* NV_command_list* /

#ifndef NV_compute_shader_derivatives
#define NV_compute_shader_derivatives 1
#endif /* NV_compute_shader_derivatives* /

#ifndef NV_conditional_render
#define NV_conditional_render 1
#define QUERY_WAIT_NV                  0x8E13
#define QUERY_NO_WAIT_NV               0x8E14
#define QUERY_BY_REGION_WAIT_NV        0x8E15
#define QUERY_BY_REGION_NO_WAIT_NV     0x8E16
alias PFNglbeginconditionalrendernvPROC = fn void(Uint id, Enum mode);
alias PFNglendconditionalrendernvPROC = fn void();
#ifdef GLEXT_PROTOTYPES
void glBeginConditionalRenderNV (Uint id, Enum mode);
void glEndConditionalRenderNV ();
#endif
#endif /* NV_conditional_render* /

#ifndef NV_conservative_raster
#define NV_conservative_raster 1
#define CONSERVATIVE_RASTERIZATION_NV  0x9346
#define SUBPIXEL_PRECISION_BIAS_X_BITS_NV 0x9347
#define SUBPIXEL_PRECISION_BIAS_Y_BITS_NV 0x9348
#define MAX_SUBPIXEL_PRECISION_BIAS_BITS_NV 0x9349
alias PFNglsubpixelprecisionbiasnvPROC = fn void(Uint xbits, Uint ybits);
#ifdef GLEXT_PROTOTYPES
void glSubpixelPrecisionBiasNV (Uint xbits, Uint ybits);
#endif
#endif /* NV_conservative_raster* /

#ifndef NV_conservative_raster_dilate
#define NV_conservative_raster_dilate 1
#define CONSERVATIVE_RASTER_DILATE_NV  0x9379
#define CONSERVATIVE_RASTER_DILATE_RANGE_NV 0x937A
#define CONSERVATIVE_RASTER_DILATE_GRANULARITY_NV 0x937B
alias PFNglconservativerasterparameterfnvPROC = fn void(Enum pname, Float value);
#ifdef GLEXT_PROTOTYPES
void glConservativeRasterParameterfNV (Enum pname, Float value);
#endif
#endif /* NV_conservative_raster_dilate* /

#ifndef NV_conservative_raster_pre_snap
#define NV_conservative_raster_pre_snap 1
#define CONSERVATIVE_RASTER_MODE_PRE_SNAP_NV 0x9550
#endif /* NV_conservative_raster_pre_snap* /

#ifndef NV_conservative_raster_pre_snap_triangles
#define NV_conservative_raster_pre_snap_triangles 1
#define CONSERVATIVE_RASTER_MODE_NV    0x954D
#define CONSERVATIVE_RASTER_MODE_POST_SNAP_NV 0x954E
#define CONSERVATIVE_RASTER_MODE_PRE_SNAP_TRIANGLES_NV 0x954F
alias PFNglconservativerasterparameterinvPROC = fn void(Enum pname, Int param);
#ifdef GLEXT_PROTOTYPES
void glConservativeRasterParameteriNV (Enum pname, Int param);
#endif
#endif /* NV_conservative_raster_pre_snap_triangles* /

#ifndef NV_conservative_raster_underestimation
#define NV_conservative_raster_underestimation 1
#endif /* NV_conservative_raster_underestimation* /

#ifndef NV_depth_buffer_float
#define NV_depth_buffer_float 1
#define DEPTH_COMPONENT32F_NV          0x8DAB
#define DEPTH32F_STENCIL8_NV           0x8DAC
#define FLOAT_32_UNSIGNED_INT_24_8_REV_NV 0x8DAD
#define DEPTH_BUFFER_FLOAT_MODE_NV     0x8DAF
alias PFNgldepthrangednvPROC = fn void(Double zNear, Double zFar);
alias PFNglcleardepthdnvPROC = fn void(Double depth);
alias PFNgldepthboundsdnvPROC = fn void(Double zmin, Double zmax);
#ifdef GLEXT_PROTOTYPES
void glDepthRangedNV (Double zNear, Double zFar);
void glClearDepthdNV (Double depth);
void glDepthBoundsdNV (Double zmin, Double zmax);
#endif
#endif /* NV_depth_buffer_float* /

#ifndef NV_draw_vulkan_image
#define NV_draw_vulkan_image 1
typedef void (*GLVULKANPROCNV)();
alias PFNgldrawvkimagenvPROC = fn void(Uint64 vkImage, Uint sampler, Float x0, Float y0, Float x1, Float y1, Float z, Float s0, Float t0, Float s1, Float t1);
alias PFNglgetvkprocaddrnvPROC = fn GLVULKANPROCNV(ZString name);
alias PFNglwaitvksemaphorenvPROC = fn void(Uint64 vkSemaphore);
alias PFNglsignalvksemaphorenvPROC = fn void(Uint64 vkSemaphore);
alias PFNglsignalvkfencenvPROC = fn void(Uint64 vkFence);
#ifdef GLEXT_PROTOTYPES
void glDrawVkImageNV (Uint64 vkImage, Uint sampler, Float x0, Float y0, Float x1, Float y1, Float z, Float s0, Float t0, Float s1, Float t1);
GLVULKANPROCNV glGetVkProcAddrNV (ZString name);
void glWaitVkSemaphoreNV (Uint64 vkSemaphore);
void glSignalVkSemaphoreNV (Uint64 vkSemaphore);
void glSignalVkFenceNV (Uint64 vkFence);
#endif
#endif /* NV_draw_vulkan_image* /

#ifndef NV_fill_rectangle
#define NV_fill_rectangle 1
#define FILL_RECTANGLE_NV              0x933C
#endif /* NV_fill_rectangle* /

#ifndef NV_fragment_coverage_to_color
#define NV_fragment_coverage_to_color 1
#define FRAGMENT_COVERAGE_TO_COLOR_NV  0x92DD
#define FRAGMENT_COVERAGE_COLOR_NV     0x92DE
alias PFNglfragmentcoveragecolornvPROC = fn void(Uint color);
#ifdef GLEXT_PROTOTYPES
void glFragmentCoverageColorNV (Uint color);
#endif
#endif /* NV_fragment_coverage_to_color* /

#ifndef NV_fragment_shader_barycentric
#define NV_fragment_shader_barycentric 1
#endif /* NV_fragment_shader_barycentric* /

#ifndef NV_fragment_shader_interlock
#define NV_fragment_shader_interlock 1
#endif /* NV_fragment_shader_interlock* /

#ifndef NV_framebuffer_mixed_samples
#define NV_framebuffer_mixed_samples 1
#define COVERAGE_MODULATION_TABLE_NV   0x9331
#define COLOR_SAMPLES_NV               0x8E20
#define DEPTH_SAMPLES_NV               0x932D
#define STENCIL_SAMPLES_NV             0x932E
#define MIXED_DEPTH_SAMPLES_SUPPORTED_NV 0x932F
#define MIXED_STENCIL_SAMPLES_SUPPORTED_NV 0x9330
#define COVERAGE_MODULATION_NV         0x9332
#define COVERAGE_MODULATION_TABLE_SIZE_NV 0x9333
alias PFNglcoveragemodulationtablenvPROC = fn void(Sizei n, Float* v);
alias PFNglgetcoveragemodulationtablenvPROC = fn void(Sizei bufSize, Float* v);
alias PFNglcoveragemodulationnvPROC = fn void(Enum components);
#ifdef GLEXT_PROTOTYPES
void glCoverageModulationTableNV (Sizei n, Float* v);
void glGetCoverageModulationTableNV (Sizei bufSize, Float* v);
void glCoverageModulationNV (Enum components);
#endif
#endif /* NV_framebuffer_mixed_samples* /

#ifndef NV_framebuffer_multisample_coverage
#define NV_framebuffer_multisample_coverage 1
#define RENDERBUFFER_COVERAGE_SAMPLES_NV 0x8CAB
#define RENDERBUFFER_COLOR_SAMPLES_NV  0x8E10
#define MAX_MULTISAMPLE_COVERAGE_MODES_NV 0x8E11
#define MULTISAMPLE_COVERAGE_MODES_NV  0x8E12
alias PFNglrenderbufferstoragemultisamplecoveragenvPROC = fn void(Enum target, Sizei coverageSamples, Sizei colorSamples, Enum internalformat, Sizei width, Sizei height);
#ifdef GLEXT_PROTOTYPES
void glRenderbufferStorageMultisampleCoverageNV (Enum target, Sizei coverageSamples, Sizei colorSamples, Enum internalformat, Sizei width, Sizei height);
#endif
#endif /* NV_framebuffer_multisample_coverage* /

#ifndef NV_geometry_shader_passthrough
#define NV_geometry_shader_passthrough 1
#endif /* NV_geometry_shader_passthrough* /

#ifndef NV_gpu_shader5
#define NV_gpu_shader5 1
typedef khronos_int64_t Int64EXT;
#define INT64_NV                       0x140E
#define UNSIGNED_INT64_NV              0x140F
#define INT8_NV                        0x8FE0
#define INT8_VEC2_NV                   0x8FE1
#define INT8_VEC3_NV                   0x8FE2
#define INT8_VEC4_NV                   0x8FE3
#define INT16_NV                       0x8FE4
#define INT16_VEC2_NV                  0x8FE5
#define INT16_VEC3_NV                  0x8FE6
#define INT16_VEC4_NV                  0x8FE7
#define INT64_VEC2_NV                  0x8FE9
#define INT64_VEC3_NV                  0x8FEA
#define INT64_VEC4_NV                  0x8FEB
#define UNSIGNED_INT8_NV               0x8FEC
#define UNSIGNED_INT8_VEC2_NV          0x8FED
#define UNSIGNED_INT8_VEC3_NV          0x8FEE
#define UNSIGNED_INT8_VEC4_NV          0x8FEF
#define UNSIGNED_INT16_NV              0x8FF0
#define UNSIGNED_INT16_VEC2_NV         0x8FF1
#define UNSIGNED_INT16_VEC3_NV         0x8FF2
#define UNSIGNED_INT16_VEC4_NV         0x8FF3
#define UNSIGNED_INT64_VEC2_NV         0x8FF5
#define UNSIGNED_INT64_VEC3_NV         0x8FF6
#define UNSIGNED_INT64_VEC4_NV         0x8FF7
#define FLOAT16_NV                     0x8FF8
#define FLOAT16_VEC2_NV                0x8FF9
#define FLOAT16_VEC3_NV                0x8FFA
#define FLOAT16_VEC4_NV                0x8FFB
alias PFNgluniform1i64nvPROC = fn void(Int location, Int64EXT x);
alias PFNgluniform2i64nvPROC = fn void(Int location, Int64EXT x, Int64EXT y);
alias PFNgluniform3i64nvPROC = fn void(Int location, Int64EXT x, Int64EXT y, Int64EXT z);
alias PFNgluniform4i64nvPROC = fn void(Int location, Int64EXT x, Int64EXT y, Int64EXT z, Int64EXT w);
alias PFNgluniform1i64vnvPROC = fn void(Int location, Sizei count, Int64EXT* value);
alias PFNgluniform2i64vnvPROC = fn void(Int location, Sizei count, Int64EXT* value);
alias PFNgluniform3i64vnvPROC = fn void(Int location, Sizei count, Int64EXT* value);
alias PFNgluniform4i64vnvPROC = fn void(Int location, Sizei count, Int64EXT* value);
alias PFNgluniform1ui64nvPROC = fn void(Int location, Uint64EXT x);
alias PFNgluniform2ui64nvPROC = fn void(Int location, Uint64EXT x, Uint64EXT y);
alias PFNgluniform3ui64nvPROC = fn void(Int location, Uint64EXT x, Uint64EXT y, Uint64EXT z);
alias PFNgluniform4ui64nvPROC = fn void(Int location, Uint64EXT x, Uint64EXT y, Uint64EXT z, Uint64EXT w);
alias PFNgluniform1ui64vnvPROC = fn void(Int location, Sizei count, Uint64EXT* value);
alias PFNgluniform2ui64vnvPROC = fn void(Int location, Sizei count, Uint64EXT* value);
alias PFNgluniform3ui64vnvPROC = fn void(Int location, Sizei count, Uint64EXT* value);
alias PFNgluniform4ui64vnvPROC = fn void(Int location, Sizei count, Uint64EXT* value);
alias PFNglgetuniformi64vnvPROC = fn void(Uint program, Int location, Int64EXT* params);
alias PFNglprogramuniform1i64nvPROC = fn void(Uint program, Int location, Int64EXT x);
alias PFNglprogramuniform2i64nvPROC = fn void(Uint program, Int location, Int64EXT x, Int64EXT y);
alias PFNglprogramuniform3i64nvPROC = fn void(Uint program, Int location, Int64EXT x, Int64EXT y, Int64EXT z);
alias PFNglprogramuniform4i64nvPROC = fn void(Uint program, Int location, Int64EXT x, Int64EXT y, Int64EXT z, Int64EXT w);
alias PFNglprogramuniform1i64vnvPROC = fn void(Uint program, Int location, Sizei count, Int64EXT* value);
alias PFNglprogramuniform2i64vnvPROC = fn void(Uint program, Int location, Sizei count, Int64EXT* value);
alias PFNglprogramuniform3i64vnvPROC = fn void(Uint program, Int location, Sizei count, Int64EXT* value);
alias PFNglprogramuniform4i64vnvPROC = fn void(Uint program, Int location, Sizei count, Int64EXT* value);
alias PFNglprogramuniform1ui64nvPROC = fn void(Uint program, Int location, Uint64EXT x);
alias PFNglprogramuniform2ui64nvPROC = fn void(Uint program, Int location, Uint64EXT x, Uint64EXT y);
alias PFNglprogramuniform3ui64nvPROC = fn void(Uint program, Int location, Uint64EXT x, Uint64EXT y, Uint64EXT z);
alias PFNglprogramuniform4ui64nvPROC = fn void(Uint program, Int location, Uint64EXT x, Uint64EXT y, Uint64EXT z, Uint64EXT w);
alias PFNglprogramuniform1ui64vnvPROC = fn void(Uint program, Int location, Sizei count, Uint64EXT* value);
alias PFNglprogramuniform2ui64vnvPROC = fn void(Uint program, Int location, Sizei count, Uint64EXT* value);
alias PFNglprogramuniform3ui64vnvPROC = fn void(Uint program, Int location, Sizei count, Uint64EXT* value);
alias PFNglprogramuniform4ui64vnvPROC = fn void(Uint program, Int location, Sizei count, Uint64EXT* value);
#ifdef GLEXT_PROTOTYPES
void glUniform1i64NV (Int location, Int64EXT x);
void glUniform2i64NV (Int location, Int64EXT x, Int64EXT y);
void glUniform3i64NV (Int location, Int64EXT x, Int64EXT y, Int64EXT z);
void glUniform4i64NV (Int location, Int64EXT x, Int64EXT y, Int64EXT z, Int64EXT w);
void glUniform1i64vNV (Int location, Sizei count, Int64EXT* value);
void glUniform2i64vNV (Int location, Sizei count, Int64EXT* value);
void glUniform3i64vNV (Int location, Sizei count, Int64EXT* value);
void glUniform4i64vNV (Int location, Sizei count, Int64EXT* value);
void glUniform1ui64NV (Int location, Uint64EXT x);
void glUniform2ui64NV (Int location, Uint64EXT x, Uint64EXT y);
void glUniform3ui64NV (Int location, Uint64EXT x, Uint64EXT y, Uint64EXT z);
void glUniform4ui64NV (Int location, Uint64EXT x, Uint64EXT y, Uint64EXT z, Uint64EXT w);
void glUniform1ui64vNV (Int location, Sizei count, Uint64EXT* value);
void glUniform2ui64vNV (Int location, Sizei count, Uint64EXT* value);
void glUniform3ui64vNV (Int location, Sizei count, Uint64EXT* value);
void glUniform4ui64vNV (Int location, Sizei count, Uint64EXT* value);
void glGetUniformi64vNV (Uint program, Int location, Int64EXT* params);
void glProgramUniform1i64NV (Uint program, Int location, Int64EXT x);
void glProgramUniform2i64NV (Uint program, Int location, Int64EXT x, Int64EXT y);
void glProgramUniform3i64NV (Uint program, Int location, Int64EXT x, Int64EXT y, Int64EXT z);
void glProgramUniform4i64NV (Uint program, Int location, Int64EXT x, Int64EXT y, Int64EXT z, Int64EXT w);
void glProgramUniform1i64vNV (Uint program, Int location, Sizei count, Int64EXT* value);
void glProgramUniform2i64vNV (Uint program, Int location, Sizei count, Int64EXT* value);
void glProgramUniform3i64vNV (Uint program, Int location, Sizei count, Int64EXT* value);
void glProgramUniform4i64vNV (Uint program, Int location, Sizei count, Int64EXT* value);
void glProgramUniform1ui64NV (Uint program, Int location, Uint64EXT x);
void glProgramUniform2ui64NV (Uint program, Int location, Uint64EXT x, Uint64EXT y);
void glProgramUniform3ui64NV (Uint program, Int location, Uint64EXT x, Uint64EXT y, Uint64EXT z);
void glProgramUniform4ui64NV (Uint program, Int location, Uint64EXT x, Uint64EXT y, Uint64EXT z, Uint64EXT w);
void glProgramUniform1ui64vNV (Uint program, Int location, Sizei count, Uint64EXT* value);
void glProgramUniform2ui64vNV (Uint program, Int location, Sizei count, Uint64EXT* value);
void glProgramUniform3ui64vNV (Uint program, Int location, Sizei count, Uint64EXT* value);
void glProgramUniform4ui64vNV (Uint program, Int location, Sizei count, Uint64EXT* value);
#endif
#endif /* NV_gpu_shader5* /

#ifndef NV_internalformat_sample_query
#define NV_internalformat_sample_query 1
#define MULTISAMPLES_NV                0x9371
#define SUPERSAMPLE_SCALE_X_NV         0x9372
#define SUPERSAMPLE_SCALE_Y_NV         0x9373
#define CONFORMANT_NV                  0x9374
alias PFNglgetinternalformatsampleivnvPROC = fn void(Enum target, Enum internalformat, Sizei samples, Enum pname, Sizei count, Int* params);
#ifdef GLEXT_PROTOTYPES
void glGetInternalformatSampleivNV (Enum target, Enum internalformat, Sizei samples, Enum pname, Sizei count, Int* params);
#endif
#endif /* NV_internalformat_sample_query* /

#ifndef NV_memory_attachment
#define NV_memory_attachment 1
#define ATTACHED_MEMORY_OBJECT_NV      0x95A4
#define ATTACHED_MEMORY_OFFSET_NV      0x95A5
#define MEMORY_ATTACHABLE_ALIGNMENT_NV 0x95A6
#define MEMORY_ATTACHABLE_SIZE_NV      0x95A7
#define MEMORY_ATTACHABLE_NV           0x95A8
#define DETACHED_MEMORY_INCARNATION_NV 0x95A9
#define DETACHED_TEXTURES_NV           0x95AA
#define DETACHED_BUFFERS_NV            0x95AB
#define MAX_DETACHED_TEXTURES_NV       0x95AC
#define MAX_DETACHED_BUFFERS_NV        0x95AD
alias PFNglgetmemoryobjectdetachedresourcesuivnvPROC = fn void(Uint memory, Enum pname, Int first, Sizei count, Uint* params);
alias PFNglresetmemoryobjectparameternvPROC = fn void(Uint memory, Enum pname);
alias PFNgltexattachmemorynvPROC = fn void(Enum target, Uint memory, Uint64 offset);
alias PFNglbufferattachmemorynvPROC = fn void(Enum target, Uint memory, Uint64 offset);
alias PFNgltextureattachmemorynvPROC = fn void(Uint texture, Uint memory, Uint64 offset);
alias PFNglnamedbufferattachmemorynvPROC = fn void(Uint buffer, Uint memory, Uint64 offset);
#ifdef GLEXT_PROTOTYPES
void glGetMemoryObjectDetachedResourcesuivNV (Uint memory, Enum pname, Int first, Sizei count, Uint* params);
void glResetMemoryObjectParameterNV (Uint memory, Enum pname);
void glTexAttachMemoryNV (Enum target, Uint memory, Uint64 offset);
void glBufferAttachMemoryNV (Enum target, Uint memory, Uint64 offset);
void glTextureAttachMemoryNV (Uint texture, Uint memory, Uint64 offset);
void glNamedBufferAttachMemoryNV (Uint buffer, Uint memory, Uint64 offset);
#endif
#endif /* NV_memory_attachment* /

#ifndef NV_memory_object_sparse
#define NV_memory_object_sparse 1
alias PFNglbufferpagecommitmentmemnvPROC = fn void(Enum target, Intptr offset, Sizeiptr size, Uint memory, Uint64 memOffset, Boolean commit);
alias PFNgltexpagecommitmentmemnvPROC = fn void(Enum target, Int layer, Int level, Int xoffset, Int yoffset, Int zoffset, Sizei width, Sizei height, Sizei depth, Uint memory, Uint64 offset, Boolean commit);
alias PFNglnamedbufferpagecommitmentmemnvPROC = fn void(Uint buffer, Intptr offset, Sizeiptr size, Uint memory, Uint64 memOffset, Boolean commit);
alias PFNgltexturepagecommitmentmemnvPROC = fn void(Uint texture, Int layer, Int level, Int xoffset, Int yoffset, Int zoffset, Sizei width, Sizei height, Sizei depth, Uint memory, Uint64 offset, Boolean commit);
#ifdef GLEXT_PROTOTYPES
void glBufferPageCommitmentMemNV (Enum target, Intptr offset, Sizeiptr size, Uint memory, Uint64 memOffset, Boolean commit);
void glTexPageCommitmentMemNV (Enum target, Int layer, Int level, Int xoffset, Int yoffset, Int zoffset, Sizei width, Sizei height, Sizei depth, Uint memory, Uint64 offset, Boolean commit);
void glNamedBufferPageCommitmentMemNV (Uint buffer, Intptr offset, Sizeiptr size, Uint memory, Uint64 memOffset, Boolean commit);
void glTexturePageCommitmentMemNV (Uint texture, Int layer, Int level, Int xoffset, Int yoffset, Int zoffset, Sizei width, Sizei height, Sizei depth, Uint memory, Uint64 offset, Boolean commit);
#endif
#endif /* NV_memory_object_sparse* /

#ifndef NV_mesh_shader
#define NV_mesh_shader 1
#define MESH_SHADER_NV                 0x9559
#define TASK_SHADER_NV                 0x955A
#define MAX_MESH_UNIFORM_BLOCKS_NV     0x8E60
#define MAX_MESH_TEXTURE_IMAGE_UNITS_NV 0x8E61
#define MAX_MESH_IMAGE_UNIFORMS_NV     0x8E62
#define MAX_MESH_UNIFORM_COMPONENTS_NV 0x8E63
#define MAX_MESH_ATOMIC_COUNTER_BUFFERS_NV 0x8E64
#define MAX_MESH_ATOMIC_COUNTERS_NV    0x8E65
#define MAX_MESH_SHADER_STORAGE_BLOCKS_NV 0x8E66
#define MAX_COMBINED_MESH_UNIFORM_COMPONENTS_NV 0x8E67
#define MAX_TASK_UNIFORM_BLOCKS_NV     0x8E68
#define MAX_TASK_TEXTURE_IMAGE_UNITS_NV 0x8E69
#define MAX_TASK_IMAGE_UNIFORMS_NV     0x8E6A
#define MAX_TASK_UNIFORM_COMPONENTS_NV 0x8E6B
#define MAX_TASK_ATOMIC_COUNTER_BUFFERS_NV 0x8E6C
#define MAX_TASK_ATOMIC_COUNTERS_NV    0x8E6D
#define MAX_TASK_SHADER_STORAGE_BLOCKS_NV 0x8E6E
#define MAX_COMBINED_TASK_UNIFORM_COMPONENTS_NV 0x8E6F
#define MAX_MESH_WORK_GROUP_INVOCATIONS_NV 0x95A2
#define MAX_TASK_WORK_GROUP_INVOCATIONS_NV 0x95A3
#define MAX_MESH_TOTAL_MEMORY_SIZE_NV  0x9536
#define MAX_TASK_TOTAL_MEMORY_SIZE_NV  0x9537
#define MAX_MESH_OUTPUT_VERTICES_NV    0x9538
#define MAX_MESH_OUTPUT_PRIMITIVES_NV  0x9539
#define MAX_TASK_OUTPUT_COUNT_NV       0x953A
#define MAX_DRAW_MESH_TASKS_COUNT_NV   0x953D
#define MAX_MESH_VIEWS_NV              0x9557
#define MESH_OUTPUT_PER_VERTEX_GRANULARITY_NV 0x92DF
#define MESH_OUTPUT_PER_PRIMITIVE_GRANULARITY_NV 0x9543
#define MAX_MESH_WORK_GROUP_SIZE_NV    0x953B
#define MAX_TASK_WORK_GROUP_SIZE_NV    0x953C
#define MESH_WORK_GROUP_SIZE_NV        0x953E
#define TASK_WORK_GROUP_SIZE_NV        0x953F
#define MESH_VERTICES_OUT_NV           0x9579
#define MESH_PRIMITIVES_OUT_NV         0x957A
#define MESH_OUTPUT_TYPE_NV            0x957B
#define UNIFORM_BLOCK_REFERENCED_BY_MESH_SHADER_NV 0x959C
#define UNIFORM_BLOCK_REFERENCED_BY_TASK_SHADER_NV 0x959D
#define REFERENCED_BY_MESH_SHADER_NV   0x95A0
#define REFERENCED_BY_TASK_SHADER_NV   0x95A1
#define MESH_SHADER_BIT_NV             0x00000040
#define TASK_SHADER_BIT_NV             0x00000080
#define MESH_SUBROUTINE_NV             0x957C
#define TASK_SUBROUTINE_NV             0x957D
#define MESH_SUBROUTINE_UNIFORM_NV     0x957E
#define TASK_SUBROUTINE_UNIFORM_NV     0x957F
#define ATOMIC_COUNTER_BUFFER_REFERENCED_BY_MESH_SHADER_NV 0x959E
#define ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TASK_SHADER_NV 0x959F
alias PFNgldrawmeshtasksnvPROC = fn void(Uint first, Uint count);
alias PFNgldrawmeshtasksindirectnvPROC = fn void(Intptr indirect);
alias PFNglmultidrawmeshtasksindirectnvPROC = fn void(Intptr indirect, Sizei drawcount, Sizei stride);
alias PFNglmultidrawmeshtasksindirectcountnvPROC = fn void(Intptr indirect, Intptr drawcount, Sizei maxdrawcount, Sizei stride);
#ifdef GLEXT_PROTOTYPES
void glDrawMeshTasksNV (Uint first, Uint count);
void glDrawMeshTasksIndirectNV (Intptr indirect);
void glMultiDrawMeshTasksIndirectNV (Intptr indirect, Sizei drawcount, Sizei stride);
void glMultiDrawMeshTasksIndirectCountNV (Intptr indirect, Intptr drawcount, Sizei maxdrawcount, Sizei stride);
#endif
#endif /* NV_mesh_shader* /

#ifndef NV_path_rendering
#define NV_path_rendering 1
#define PATH_FORMAT_SVG_NV             0x9070
#define PATH_FORMAT_PS_NV              0x9071
#define STANDARD_FONT_NAME_NV          0x9072
#define SYSTEM_FONT_NAME_NV            0x9073
#define FILE_NAME_NV                   0x9074
#define PATH_STROKE_WIDTH_NV           0x9075
#define PATH_END_CAPS_NV               0x9076
#define PATH_INITIAL_END_CAP_NV        0x9077
#define PATH_TERMINAL_END_CAP_NV       0x9078
#define PATH_JOIN_STYLE_NV             0x9079
#define PATH_MITER_LIMIT_NV            0x907A
#define PATH_DASH_CAPS_NV              0x907B
#define PATH_INITIAL_DASH_CAP_NV       0x907C
#define PATH_TERMINAL_DASH_CAP_NV      0x907D
#define PATH_DASH_OFFSET_NV            0x907E
#define PATH_CLIENT_LENGTH_NV          0x907F
#define PATH_FILL_MODE_NV              0x9080
#define PATH_FILL_MASK_NV              0x9081
#define PATH_FILL_COVER_MODE_NV        0x9082
#define PATH_STROKE_COVER_MODE_NV      0x9083
#define PATH_STROKE_MASK_NV            0x9084
#define COUNT_UP_NV                    0x9088
#define COUNT_DOWN_NV                  0x9089
#define PATH_OBJECT_BOUNDING_BOX_NV    0x908A
#define CONVEX_HULL_NV                 0x908B
#define BOUNDING_BOX_NV                0x908D
#define TRANSLATE_X_NV                 0x908E
#define TRANSLATE_Y_NV                 0x908F
#define TRANSLATE_2D_NV                0x9090
#define TRANSLATE_3D_NV                0x9091
#define AFFINE_2D_NV                   0x9092
#define AFFINE_3D_NV                   0x9094
#define TRANSPOSE_AFFINE_2D_NV         0x9096
#define TRANSPOSE_AFFINE_3D_NV         0x9098
#define UTF8_NV                        0x909A
#define UTF16_NV                       0x909B
#define BOUNDING_BOX_OF_BOUNDING_BOXES_NV 0x909C
#define PATH_COMMAND_COUNT_NV          0x909D
#define PATH_COORD_COUNT_NV            0x909E
#define PATH_DASH_ARRAY_COUNT_NV       0x909F
#define PATH_COMPUTED_LENGTH_NV        0x90A0
#define PATH_FILL_BOUNDING_BOX_NV      0x90A1
#define PATH_STROKE_BOUNDING_BOX_NV    0x90A2
#define SQUARE_NV                      0x90A3
#define ROUND_NV                       0x90A4
#define TRIANGULAR_NV                  0x90A5
#define BEVEL_NV                       0x90A6
#define MITER_REVERT_NV                0x90A7
#define MITER_TRUNCATE_NV              0x90A8
#define SKIP_MISSING_GLYPH_NV          0x90A9
#define USE_MISSING_GLYPH_NV           0x90AA
#define PATH_ERROR_POSITION_NV         0x90AB
#define ACCUM_ADJACENT_PAIRS_NV        0x90AD
#define ADJACENT_PAIRS_NV              0x90AE
#define FIRST_TO_REST_NV               0x90AF
#define PATH_GEN_MODE_NV               0x90B0
#define PATH_GEN_COEFF_NV              0x90B1
#define PATH_GEN_COMPONENTS_NV         0x90B3
#define PATH_STENCIL_FUNC_NV           0x90B7
#define PATH_STENCIL_REF_NV            0x90B8
#define PATH_STENCIL_VALUE_MASK_NV     0x90B9
#define PATH_STENCIL_DEPTH_OFFSET_FACTOR_NV 0x90BD
#define PATH_STENCIL_DEPTH_OFFSET_UNITS_NV 0x90BE
#define PATH_COVER_DEPTH_FUNC_NV       0x90BF
#define PATH_DASH_OFFSET_RESET_NV      0x90B4
#define MOVE_TO_RESETS_NV              0x90B5
#define MOVE_TO_CONTINUES_NV           0x90B6
#define CLOSE_PATH_NV                  0x00
#define MOVE_TO_NV                     0x02
#define RELATIVE_MOVE_TO_NV            0x03
#define LINE_TO_NV                     0x04
#define RELATIVE_LINE_TO_NV            0x05
#define HORIZONTAL_LINE_TO_NV          0x06
#define RELATIVE_HORIZONTAL_LINE_TO_NV 0x07
#define VERTICAL_LINE_TO_NV            0x08
#define RELATIVE_VERTICAL_LINE_TO_NV   0x09
#define QUADRATIC_CURVE_TO_NV          0x0A
#define RELATIVE_QUADRATIC_CURVE_TO_NV 0x0B
#define CUBIC_CURVE_TO_NV              0x0C
#define RELATIVE_CUBIC_CURVE_TO_NV     0x0D
#define SMOOTH_QUADRATIC_CURVE_TO_NV   0x0E
#define RELATIVE_SMOOTH_QUADRATIC_CURVE_TO_NV 0x0F
#define SMOOTH_CUBIC_CURVE_TO_NV       0x10
#define RELATIVE_SMOOTH_CUBIC_CURVE_TO_NV 0x11
#define SMALL_CCW_ARC_TO_NV            0x12
#define RELATIVE_SMALL_CCW_ARC_TO_NV   0x13
#define SMALL_CW_ARC_TO_NV             0x14
#define RELATIVE_SMALL_CW_ARC_TO_NV    0x15
#define LARGE_CCW_ARC_TO_NV            0x16
#define RELATIVE_LARGE_CCW_ARC_TO_NV   0x17
#define LARGE_CW_ARC_TO_NV             0x18
#define RELATIVE_LARGE_CW_ARC_TO_NV    0x19
#define RESTART_PATH_NV                0xF0
#define DUP_FIRST_CUBIC_CURVE_TO_NV    0xF2
#define DUP_LAST_CUBIC_CURVE_TO_NV     0xF4
#define RECT_NV                        0xF6
#define CIRCULAR_CCW_ARC_TO_NV         0xF8
#define CIRCULAR_CW_ARC_TO_NV          0xFA
#define CIRCULAR_TANGENT_ARC_TO_NV     0xFC
#define ARC_TO_NV                      0xFE
#define RELATIVE_ARC_TO_NV             0xFF
#define BOLD_BIT_NV                    0x01
#define ITALIC_BIT_NV                  0x02
#define GLYPH_WIDTH_BIT_NV             0x01
#define GLYPH_HEIGHT_BIT_NV            0x02
#define GLYPH_HORIZONTAL_BEARING_X_BIT_NV 0x04
#define GLYPH_HORIZONTAL_BEARING_Y_BIT_NV 0x08
#define GLYPH_HORIZONTAL_BEARING_ADVANCE_BIT_NV 0x10
#define GLYPH_VERTICAL_BEARING_X_BIT_NV 0x20
#define GLYPH_VERTICAL_BEARING_Y_BIT_NV 0x40
#define GLYPH_VERTICAL_BEARING_ADVANCE_BIT_NV 0x80
#define GLYPH_HAS_KERNING_BIT_NV       0x100
#define FONT_X_MIN_BOUNDS_BIT_NV       0x00010000
#define FONT_Y_MIN_BOUNDS_BIT_NV       0x00020000
#define FONT_X_MAX_BOUNDS_BIT_NV       0x00040000
#define FONT_Y_MAX_BOUNDS_BIT_NV       0x00080000
#define FONT_UNITS_PER_EM_BIT_NV       0x00100000
#define FONT_ASCENDER_BIT_NV           0x00200000
#define FONT_DESCENDER_BIT_NV          0x00400000
#define FONT_HEIGHT_BIT_NV             0x00800000
#define FONT_MAX_ADVANCE_WIDTH_BIT_NV  0x01000000
#define FONT_MAX_ADVANCE_HEIGHT_BIT_NV 0x02000000
#define FONT_UNDERLINE_POSITION_BIT_NV 0x04000000
#define FONT_UNDERLINE_THICKNESS_BIT_NV 0x08000000
#define FONT_HAS_KERNING_BIT_NV        0x10000000
#define ROUNDED_RECT_NV                0xE8
#define RELATIVE_ROUNDED_RECT_NV       0xE9
#define ROUNDED_RECT2_NV               0xEA
#define RELATIVE_ROUNDED_RECT2_NV      0xEB
#define ROUNDED_RECT4_NV               0xEC
#define RELATIVE_ROUNDED_RECT4_NV      0xED
#define ROUNDED_RECT8_NV               0xEE
#define RELATIVE_ROUNDED_RECT8_NV      0xEF
#define RELATIVE_RECT_NV               0xF7
#define FONT_GLYPHS_AVAILABLE_NV       0x9368
#define FONT_TARGET_UNAVAILABLE_NV     0x9369
#define FONT_UNAVAILABLE_NV            0x936A
#define FONT_UNINTELLIGIBLE_NV         0x936B
#define CONIC_CURVE_TO_NV              0x1A
#define RELATIVE_CONIC_CURVE_TO_NV     0x1B
#define FONT_NUM_GLYPH_INDICES_BIT_NV  0x20000000
#define STANDARD_FONT_FORMAT_NV        0x936C
#define PATH_PROJECTION_NV             0x1701
#define PATH_MODELVIEW_NV              0x1700
#define PATH_MODELVIEW_STACK_DEPTH_NV  0x0BA3
#define PATH_MODELVIEW_MATRIX_NV       0x0BA6
#define PATH_MAX_MODELVIEW_STACK_DEPTH_NV 0x0D36
#define PATH_TRANSPOSE_MODELVIEW_MATRIX_NV 0x84E3
#define PATH_PROJECTION_STACK_DEPTH_NV 0x0BA4
#define PATH_PROJECTION_MATRIX_NV      0x0BA7
#define PATH_MAX_PROJECTION_STACK_DEPTH_NV 0x0D38
#define PATH_TRANSPOSE_PROJECTION_MATRIX_NV 0x84E4
#define FRAGMENT_INPUT_NV              0x936D
alias PFNglgenpathsnvPROC = fn Uint(Sizei range);
alias PFNgldeletepathsnvPROC = fn void(Uint path, Sizei range);
alias PFNglispathnvPROC = fn Boolean(Uint path);
alias PFNglpathcommandsnvPROC = fn void(Uint path, Sizei numCommands, Ubyte* commands, Sizei numCoords, Enum coordType, void* coords);
alias PFNglpathcoordsnvPROC = fn void(Uint path, Sizei numCoords, Enum coordType, void* coords);
alias PFNglpathsubcommandsnvPROC = fn void(Uint path, Sizei commandStart, Sizei commandsToDelete, Sizei numCommands, Ubyte* commands, Sizei numCoords, Enum coordType, void* coords);
alias PFNglpathsubcoordsnvPROC = fn void(Uint path, Sizei coordStart, Sizei numCoords, Enum coordType, void* coords);
alias PFNglpathstringnvPROC = fn void(Uint path, Enum format, Sizei length, void* pathString);
alias PFNglpathglyphsnvPROC = fn void(Uint firstPathName, Enum fontTarget, void* fontName, Bitfield fontStyle, Sizei numGlyphs, Enum type, void* charcodes, Enum handleMissingGlyphs, Uint pathParameterTemplate, Float emScale);
alias PFNglpathglyphrangenvPROC = fn void(Uint firstPathName, Enum fontTarget, void* fontName, Bitfield fontStyle, Uint firstGlyph, Sizei numGlyphs, Enum handleMissingGlyphs, Uint pathParameterTemplate, Float emScale);
alias PFNglweightpathsnvPROC = fn void(Uint resultPath, Sizei numPaths, Uint* paths, Float* weights);
alias PFNglcopypathnvPROC = fn void(Uint resultPath, Uint srcPath);
alias PFNglinterpolatepathsnvPROC = fn void(Uint resultPath, Uint pathA, Uint pathB, Float weight);
alias PFNgltransformpathnvPROC = fn void(Uint resultPath, Uint srcPath, Enum transformType, Float* transformValues);
alias PFNglpathparameterivnvPROC = fn void(Uint path, Enum pname, Int* value);
alias PFNglpathparameterinvPROC = fn void(Uint path, Enum pname, Int value);
alias PFNglpathparameterfvnvPROC = fn void(Uint path, Enum pname, Float* value);
alias PFNglpathparameterfnvPROC = fn void(Uint path, Enum pname, Float value);
alias PFNglpathdasharraynvPROC = fn void(Uint path, Sizei dashCount, Float* dashArray);
alias PFNglpathstencilfuncnvPROC = fn void(Enum func, Int ref, Uint mask);
alias PFNglpathstencildepthoffsetnvPROC = fn void(Float factor, Float units);
alias PFNglstencilfillpathnvPROC = fn void(Uint path, Enum fillMode, Uint mask);
alias PFNglstencilstrokepathnvPROC = fn void(Uint path, Int reference, Uint mask);
alias PFNglstencilfillpathinstancednvPROC = fn void(Sizei numPaths, Enum pathNameType, void* paths, Uint pathBase, Enum fillMode, Uint mask, Enum transformType, Float* transformValues);
alias PFNglstencilstrokepathinstancednvPROC = fn void(Sizei numPaths, Enum pathNameType, void* paths, Uint pathBase, Int reference, Uint mask, Enum transformType, Float* transformValues);
alias PFNglpathcoverdepthfuncnvPROC = fn void(Enum func);
alias PFNglcoverfillpathnvPROC = fn void(Uint path, Enum coverMode);
alias PFNglcoverstrokepathnvPROC = fn void(Uint path, Enum coverMode);
alias PFNglcoverfillpathinstancednvPROC = fn void(Sizei numPaths, Enum pathNameType, void* paths, Uint pathBase, Enum coverMode, Enum transformType, Float* transformValues);
alias PFNglcoverstrokepathinstancednvPROC = fn void(Sizei numPaths, Enum pathNameType, void* paths, Uint pathBase, Enum coverMode, Enum transformType, Float* transformValues);
alias PFNglgetpathparameterivnvPROC = fn void(Uint path, Enum pname, Int* value);
alias PFNglgetpathparameterfvnvPROC = fn void(Uint path, Enum pname, Float* value);
alias PFNglgetpathcommandsnvPROC = fn void(Uint path, Ubyte* commands);
alias PFNglgetpathcoordsnvPROC = fn void(Uint path, Float* coords);
alias PFNglgetpathdasharraynvPROC = fn void(Uint path, Float* dashArray);
alias PFNglgetpathmetricsnvPROC = fn void(Bitfield metricQueryMask, Sizei numPaths, Enum pathNameType, void* paths, Uint pathBase, Sizei stride, Float* metrics);
alias PFNglgetpathmetricrangenvPROC = fn void(Bitfield metricQueryMask, Uint firstPathName, Sizei numPaths, Sizei stride, Float* metrics);
alias PFNglgetpathspacingnvPROC = fn void(Enum pathListMode, Sizei numPaths, Enum pathNameType, void* paths, Uint pathBase, Float advanceScale, Float kerningScale, Enum transformType, Float* returnedSpacing);
alias PFNglispointinfillpathnvPROC = fn Boolean(Uint path, Uint mask, Float x, Float y);
alias PFNglispointinstrokepathnvPROC = fn Boolean(Uint path, Float x, Float y);
alias PFNglgetpathlengthnvPROC = fn Float(Uint path, Sizei startSegment, Sizei numSegments);
alias PFNglpointalongpathnvPROC = fn Boolean(Uint path, Sizei startSegment, Sizei numSegments, Float distance, Float* x, Float* y, Float* tangentX, Float* tangentY);
alias PFNglmatrixload3x2fnvPROC = fn void(Enum matrixMode, Float* m);
alias PFNglmatrixload3x3fnvPROC = fn void(Enum matrixMode, Float* m);
alias PFNglmatrixloadtranspose3x3fnvPROC = fn void(Enum matrixMode, Float* m);
alias PFNglmatrixmult3x2fnvPROC = fn void(Enum matrixMode, Float* m);
alias PFNglmatrixmult3x3fnvPROC = fn void(Enum matrixMode, Float* m);
alias PFNglmatrixmulttranspose3x3fnvPROC = fn void(Enum matrixMode, Float* m);
alias PFNglstencilthencoverfillpathnvPROC = fn void(Uint path, Enum fillMode, Uint mask, Enum coverMode);
alias PFNglstencilthencoverstrokepathnvPROC = fn void(Uint path, Int reference, Uint mask, Enum coverMode);
alias PFNglstencilthencoverfillpathinstancednvPROC = fn void(Sizei numPaths, Enum pathNameType, void* paths, Uint pathBase, Enum fillMode, Uint mask, Enum coverMode, Enum transformType, Float* transformValues);
alias PFNglstencilthencoverstrokepathinstancednvPROC = fn void(Sizei numPaths, Enum pathNameType, void* paths, Uint pathBase, Int reference, Uint mask, Enum coverMode, Enum transformType, Float* transformValues);
alias PFNglpathglyphindexrangenvPROC = fn Enum(Enum fontTarget, void* fontName, Bitfield fontStyle, Uint pathParameterTemplate, Float emScale, Uint* baseAndCount);
alias PFNglpathglyphindexarraynvPROC = fn Enum(Uint firstPathName, Enum fontTarget, void* fontName, Bitfield fontStyle, Uint firstGlyphIndex, Sizei numGlyphs, Uint pathParameterTemplate, Float emScale);
alias PFNglpathmemoryglyphindexarraynvPROC = fn Enum(Uint firstPathName, Enum fontTarget, Sizeiptr fontSize, void* fontData, Sizei faceIndex, Uint firstGlyphIndex, Sizei numGlyphs, Uint pathParameterTemplate, Float emScale);
alias PFNglprogrampathfragmentinputgennvPROC = fn void(Uint program, Int location, Enum genMode, Int components, Float* coeffs);
alias PFNglgetprogramresourcefvnvPROC = fn void(Uint program, Enum programInterface, Uint index, Sizei propCount, Enum* props, Sizei count, Sizei* length, Float* params);
#ifdef GLEXT_PROTOTYPES
Uint glGenPathsNV (Sizei range);
void glDeletePathsNV (Uint path, Sizei range);
Boolean glIsPathNV (Uint path);
void glPathCommandsNV (Uint path, Sizei numCommands, Ubyte* commands, Sizei numCoords, Enum coordType, void* coords);
void glPathCoordsNV (Uint path, Sizei numCoords, Enum coordType, void* coords);
void glPathSubCommandsNV (Uint path, Sizei commandStart, Sizei commandsToDelete, Sizei numCommands, Ubyte* commands, Sizei numCoords, Enum coordType, void* coords);
void glPathSubCoordsNV (Uint path, Sizei coordStart, Sizei numCoords, Enum coordType, void* coords);
void glPathStringNV (Uint path, Enum format, Sizei length, void* pathString);
void glPathGlyphsNV (Uint firstPathName, Enum fontTarget, void* fontName, Bitfield fontStyle, Sizei numGlyphs, Enum type, void* charcodes, Enum handleMissingGlyphs, Uint pathParameterTemplate, Float emScale);
void glPathGlyphRangeNV (Uint firstPathName, Enum fontTarget, void* fontName, Bitfield fontStyle, Uint firstGlyph, Sizei numGlyphs, Enum handleMissingGlyphs, Uint pathParameterTemplate, Float emScale);
void glWeightPathsNV (Uint resultPath, Sizei numPaths, Uint* paths, Float* weights);
void glCopyPathNV (Uint resultPath, Uint srcPath);
void glInterpolatePathsNV (Uint resultPath, Uint pathA, Uint pathB, Float weight);
void glTransformPathNV (Uint resultPath, Uint srcPath, Enum transformType, Float* transformValues);
void glPathParameterivNV (Uint path, Enum pname, Int* value);
void glPathParameteriNV (Uint path, Enum pname, Int value);
void glPathParameterfvNV (Uint path, Enum pname, Float* value);
void glPathParameterfNV (Uint path, Enum pname, Float value);
void glPathDashArrayNV (Uint path, Sizei dashCount, Float* dashArray);
void glPathStencilFuncNV (Enum func, Int ref, Uint mask);
void glPathStencilDepthOffsetNV (Float factor, Float units);
void glStencilFillPathNV (Uint path, Enum fillMode, Uint mask);
void glStencilStrokePathNV (Uint path, Int reference, Uint mask);
void glStencilFillPathInstancedNV (Sizei numPaths, Enum pathNameType, void* paths, Uint pathBase, Enum fillMode, Uint mask, Enum transformType, Float* transformValues);
void glStencilStrokePathInstancedNV (Sizei numPaths, Enum pathNameType, void* paths, Uint pathBase, Int reference, Uint mask, Enum transformType, Float* transformValues);
void glPathCoverDepthFuncNV (Enum func);
void glCoverFillPathNV (Uint path, Enum coverMode);
void glCoverStrokePathNV (Uint path, Enum coverMode);
void glCoverFillPathInstancedNV (Sizei numPaths, Enum pathNameType, void* paths, Uint pathBase, Enum coverMode, Enum transformType, Float* transformValues);
void glCoverStrokePathInstancedNV (Sizei numPaths, Enum pathNameType, void* paths, Uint pathBase, Enum coverMode, Enum transformType, Float* transformValues);
void glGetPathParameterivNV (Uint path, Enum pname, Int* value);
void glGetPathParameterfvNV (Uint path, Enum pname, Float* value);
void glGetPathCommandsNV (Uint path, Ubyte* commands);
void glGetPathCoordsNV (Uint path, Float* coords);
void glGetPathDashArrayNV (Uint path, Float* dashArray);
void glGetPathMetricsNV (Bitfield metricQueryMask, Sizei numPaths, Enum pathNameType, void* paths, Uint pathBase, Sizei stride, Float* metrics);
void glGetPathMetricRangeNV (Bitfield metricQueryMask, Uint firstPathName, Sizei numPaths, Sizei stride, Float* metrics);
void glGetPathSpacingNV (Enum pathListMode, Sizei numPaths, Enum pathNameType, void* paths, Uint pathBase, Float advanceScale, Float kerningScale, Enum transformType, Float* returnedSpacing);
Boolean glIsPointInFillPathNV (Uint path, Uint mask, Float x, Float y);
Boolean glIsPointInStrokePathNV (Uint path, Float x, Float y);
Float glGetPathLengthNV (Uint path, Sizei startSegment, Sizei numSegments);
Boolean glPointAlongPathNV (Uint path, Sizei startSegment, Sizei numSegments, Float distance, Float* x, Float* y, Float* tangentX, Float* tangentY);
void glMatrixLoad3x2fNV (Enum matrixMode, Float* m);
void glMatrixLoad3x3fNV (Enum matrixMode, Float* m);
void glMatrixLoadTranspose3x3fNV (Enum matrixMode, Float* m);
void glMatrixMult3x2fNV (Enum matrixMode, Float* m);
void glMatrixMult3x3fNV (Enum matrixMode, Float* m);
void glMatrixMultTranspose3x3fNV (Enum matrixMode, Float* m);
void glStencilThenCoverFillPathNV (Uint path, Enum fillMode, Uint mask, Enum coverMode);
void glStencilThenCoverStrokePathNV (Uint path, Int reference, Uint mask, Enum coverMode);
void glStencilThenCoverFillPathInstancedNV (Sizei numPaths, Enum pathNameType, void* paths, Uint pathBase, Enum fillMode, Uint mask, Enum coverMode, Enum transformType, Float* transformValues);
void glStencilThenCoverStrokePathInstancedNV (Sizei numPaths, Enum pathNameType, void* paths, Uint pathBase, Int reference, Uint mask, Enum coverMode, Enum transformType, Float* transformValues);
Enum glPathGlyphIndexRangeNV (Enum fontTarget, void* fontName, Bitfield fontStyle, Uint pathParameterTemplate, Float emScale, Uint* baseAndCount);
Enum glPathGlyphIndexArrayNV (Uint firstPathName, Enum fontTarget, void* fontName, Bitfield fontStyle, Uint firstGlyphIndex, Sizei numGlyphs, Uint pathParameterTemplate, Float emScale);
Enum glPathMemoryGlyphIndexArrayNV (Uint firstPathName, Enum fontTarget, Sizeiptr fontSize, void* fontData, Sizei faceIndex, Uint firstGlyphIndex, Sizei numGlyphs, Uint pathParameterTemplate, Float emScale);
void glProgramPathFragmentInputGenNV (Uint program, Int location, Enum genMode, Int components, Float* coeffs);
void glGetProgramResourcefvNV (Uint program, Enum programInterface, Uint index, Sizei propCount, Enum* props, Sizei count, Sizei* length, Float* params);
#endif
#endif /* NV_path_rendering* /

#ifndef NV_path_rendering_shared_edge
#define NV_path_rendering_shared_edge 1
#define SHARED_EDGE_NV                 0xC0
#endif /* NV_path_rendering_shared_edge* /

#ifndef NV_primitive_shading_rate
#define NV_primitive_shading_rate 1
#define SHADING_RATE_IMAGE_PER_PRIMITIVE_NV 0x95B1
#define SHADING_RATE_IMAGE_PALETTE_COUNT_NV 0x95B2
#endif /* NV_primitive_shading_rate* /

#ifndef NV_representative_fragment_test
#define NV_representative_fragment_test 1
#define REPRESENTATIVE_FRAGMENT_TEST_NV 0x937F
#endif /* NV_representative_fragment_test* /

#ifndef NV_sample_locations
#define NV_sample_locations 1
#define SAMPLE_LOCATION_SUBPIXEL_BITS_NV 0x933D
#define SAMPLE_LOCATION_PIXEL_GRID_WIDTH_NV 0x933E
#define SAMPLE_LOCATION_PIXEL_GRID_HEIGHT_NV 0x933F
#define PROGRAMMABLE_SAMPLE_LOCATION_TABLE_SIZE_NV 0x9340
#define SAMPLE_LOCATION_NV             0x8E50
#define PROGRAMMABLE_SAMPLE_LOCATION_NV 0x9341
#define FRAMEBUFFER_PROGRAMMABLE_SAMPLE_LOCATIONS_NV 0x9342
#define FRAMEBUFFER_SAMPLE_LOCATION_PIXEL_GRID_NV 0x9343
alias PFNglframebuffersamplelocationsfvnvPROC = fn void(Enum target, Uint start, Sizei count, Float* v);
alias PFNglnamedframebuffersamplelocationsfvnvPROC = fn void(Uint framebuffer, Uint start, Sizei count, Float* v);
alias PFNglresolvedepthvaluesnvPROC = fn void();
#ifdef GLEXT_PROTOTYPES
void glFramebufferSampleLocationsfvNV (Enum target, Uint start, Sizei count, Float* v);
void glNamedFramebufferSampleLocationsfvNV (Uint framebuffer, Uint start, Sizei count, Float* v);
void glResolveDepthValuesNV ();
#endif
#endif /* NV_sample_locations* /

#ifndef NV_sample_mask_override_coverage
#define NV_sample_mask_override_coverage 1
#endif /* NV_sample_mask_override_coverage* /

#ifndef NV_scissor_exclusive
#define NV_scissor_exclusive 1
#define SCISSOR_TEST_EXCLUSIVE_NV      0x9555
#define SCISSOR_BOX_EXCLUSIVE_NV       0x9556
alias PFNglscissorexclusivenvPROC = fn void(Int x, Int y, Sizei width, Sizei height);
alias PFNglscissorexclusivearrayvnvPROC = fn void(Uint first, Sizei count, Int* v);
#ifdef GLEXT_PROTOTYPES
void glScissorExclusiveNV (Int x, Int y, Sizei width, Sizei height);
void glScissorExclusiveArrayvNV (Uint first, Sizei count, Int* v);
#endif
#endif /* NV_scissor_exclusive* /

#ifndef NV_shader_atomic_counters
#define NV_shader_atomic_counters 1
#endif /* NV_shader_atomic_counters* /

#ifndef NV_shader_atomic_float
#define NV_shader_atomic_float 1
#endif /* NV_shader_atomic_float* /

#ifndef NV_shader_atomic_float64
#define NV_shader_atomic_float64 1
#endif /* NV_shader_atomic_float64* /

#ifndef NV_shader_atomic_fp16_vector
#define NV_shader_atomic_fp16_vector 1
#endif /* NV_shader_atomic_fp16_vector* /

#ifndef NV_shader_atomic_int64
#define NV_shader_atomic_int64 1
#endif /* NV_shader_atomic_int64* /

#ifndef NV_shader_buffer_load
#define NV_shader_buffer_load 1
#define BUFFER_GPU_ADDRESS_NV          0x8F1D
#define GPU_ADDRESS_NV                 0x8F34
#define MAX_SHADER_BUFFER_ADDRESS_NV   0x8F35
alias PFNglmakebufferresidentnvPROC = fn void(Enum target, Enum access);
alias PFNglmakebuffernonresidentnvPROC = fn void(Enum target);
alias PFNglisbufferresidentnvPROC = fn Boolean(Enum target);
alias PFNglmakenamedbufferresidentnvPROC = fn void(Uint buffer, Enum access);
alias PFNglmakenamedbuffernonresidentnvPROC = fn void(Uint buffer);
alias PFNglisnamedbufferresidentnvPROC = fn Boolean(Uint buffer);
alias PFNglgetbufferparameterui64vnvPROC = fn void(Enum target, Enum pname, Uint64EXT* params);
alias PFNglgetnamedbufferparameterui64vnvPROC = fn void(Uint buffer, Enum pname, Uint64EXT* params);
alias PFNglgetintegerui64vnvPROC = fn void(Enum value, Uint64EXT* result);
alias PFNgluniformui64nvPROC = fn void(Int location, Uint64EXT value);
alias PFNgluniformui64vnvPROC = fn void(Int location, Sizei count, Uint64EXT* value);
alias PFNglgetuniformui64vnvPROC = fn void(Uint program, Int location, Uint64EXT* params);
alias PFNglprogramuniformui64nvPROC = fn void(Uint program, Int location, Uint64EXT value);
alias PFNglprogramuniformui64vnvPROC = fn void(Uint program, Int location, Sizei count, Uint64EXT* value);
#ifdef GLEXT_PROTOTYPES
void glMakeBufferResidentNV (Enum target, Enum access);
void glMakeBufferNonResidentNV (Enum target);
Boolean glIsBufferResidentNV (Enum target);
void glMakeNamedBufferResidentNV (Uint buffer, Enum access);
void glMakeNamedBufferNonResidentNV (Uint buffer);
Boolean glIsNamedBufferResidentNV (Uint buffer);
void glGetBufferParameterui64vNV (Enum target, Enum pname, Uint64EXT* params);
void glGetNamedBufferParameterui64vNV (Uint buffer, Enum pname, Uint64EXT* params);
void glGetIntegerui64vNV (Enum value, Uint64EXT* result);
void glUniformui64NV (Int location, Uint64EXT value);
void glUniformui64vNV (Int location, Sizei count, Uint64EXT* value);
void glGetUniformui64vNV (Uint program, Int location, Uint64EXT* params);
void glProgramUniformui64NV (Uint program, Int location, Uint64EXT value);
void glProgramUniformui64vNV (Uint program, Int location, Sizei count, Uint64EXT* value);
#endif
#endif /* NV_shader_buffer_load* /

#ifndef NV_shader_buffer_store
#define NV_shader_buffer_store 1
#define SHADER_GLOBAL_ACCESS_BARRIER_BIT_NV 0x00000010
#endif /* NV_shader_buffer_store* /

#ifndef NV_shader_subgroup_partitioned
#define NV_shader_subgroup_partitioned 1
#define SUBGROUP_FEATURE_PARTITIONED_BIT_NV 0x00000100
#endif /* NV_shader_subgroup_partitioned* /

#ifndef NV_shader_texture_footprint
#define NV_shader_texture_footprint 1
#endif /* NV_shader_texture_footprint* /

#ifndef NV_shader_thread_group
#define NV_shader_thread_group 1
#define WARP_SIZE_NV                   0x9339
#define WARPS_PER_SM_NV                0x933A
#define SM_COUNT_NV                    0x933B
#endif /* NV_shader_thread_group* /

#ifndef NV_shader_thread_shuffle
#define NV_shader_thread_shuffle 1
#endif /* NV_shader_thread_shuffle* /

#ifndef NV_shading_rate_image
#define NV_shading_rate_image 1
#define SHADING_RATE_IMAGE_NV          0x9563
#define SHADING_RATE_NO_INVOCATIONS_NV 0x9564
#define SHADING_RATE_1_INVOCATION_PER_PIXEL_NV 0x9565
#define SHADING_RATE_1_INVOCATION_PER_1X2_PIXELS_NV 0x9566
#define SHADING_RATE_1_INVOCATION_PER_2X1_PIXELS_NV 0x9567
#define SHADING_RATE_1_INVOCATION_PER_2X2_PIXELS_NV 0x9568
#define SHADING_RATE_1_INVOCATION_PER_2X4_PIXELS_NV 0x9569
#define SHADING_RATE_1_INVOCATION_PER_4X2_PIXELS_NV 0x956A
#define SHADING_RATE_1_INVOCATION_PER_4X4_PIXELS_NV 0x956B
#define SHADING_RATE_2_INVOCATIONS_PER_PIXEL_NV 0x956C
#define SHADING_RATE_4_INVOCATIONS_PER_PIXEL_NV 0x956D
#define SHADING_RATE_8_INVOCATIONS_PER_PIXEL_NV 0x956E
#define SHADING_RATE_16_INVOCATIONS_PER_PIXEL_NV 0x956F
#define SHADING_RATE_IMAGE_BINDING_NV  0x955B
#define SHADING_RATE_IMAGE_TEXEL_WIDTH_NV 0x955C
#define SHADING_RATE_IMAGE_TEXEL_HEIGHT_NV 0x955D
#define SHADING_RATE_IMAGE_PALETTE_SIZE_NV 0x955E
#define MAX_COARSE_FRAGMENT_SAMPLES_NV 0x955F
#define SHADING_RATE_SAMPLE_ORDER_DEFAULT_NV 0x95AE
#define SHADING_RATE_SAMPLE_ORDER_PIXEL_MAJOR_NV 0x95AF
#define SHADING_RATE_SAMPLE_ORDER_SAMPLE_MAJOR_NV 0x95B0
alias PFNglbindshadingrateimagenvPROC = fn void(Uint texture);
alias PFNglgetshadingrateimagepalettenvPROC = fn void(Uint viewport, Uint entry, Enum* rate);
alias PFNglgetshadingratesamplelocationivnvPROC = fn void(Enum rate, Uint samples, Uint index, Int* location);
alias PFNglshadingrateimagebarriernvPROC = fn void(Boolean synchronize);
alias PFNglshadingrateimagepalettenvPROC = fn void(Uint viewport, Uint first, Sizei count, Enum* rates);
alias PFNglshadingratesampleordernvPROC = fn void(Enum order);
alias PFNglshadingratesampleordercustomnvPROC = fn void(Enum rate, Uint samples, Int* locations);
#ifdef GLEXT_PROTOTYPES
void glBindShadingRateImageNV (Uint texture);
void glGetShadingRateImagePaletteNV (Uint viewport, Uint entry, Enum* rate);
void glGetShadingRateSampleLocationivNV (Enum rate, Uint samples, Uint index, Int* location);
void glShadingRateImageBarrierNV (Boolean synchronize);
void glShadingRateImagePaletteNV (Uint viewport, Uint first, Sizei count, Enum* rates);
void glShadingRateSampleOrderNV (Enum order);
void glShadingRateSampleOrderCustomNV (Enum rate, Uint samples, Int* locations);
#endif
#endif /* NV_shading_rate_image* /

#ifndef NV_stereo_view_rendering
#define NV_stereo_view_rendering 1
#endif /* NV_stereo_view_rendering* /

#ifndef NV_texture_barrier
#define NV_texture_barrier 1
alias PFNgltexturebarriernvPROC = fn void();
#ifdef GLEXT_PROTOTYPES
void glTextureBarrierNV ();
#endif
#endif /* NV_texture_barrier* /

#ifndef NV_texture_rectangle_compressed
#define NV_texture_rectangle_compressed 1
#endif /* NV_texture_rectangle_compressed* /

#ifndef NV_uniform_buffer_std430_layout
#define NV_uniform_buffer_std430_layout 1
#endif /* NV_uniform_buffer_std430_layout* /

#ifndef NV_uniform_buffer_unified_memory
#define NV_uniform_buffer_unified_memory 1
#define UNIFORM_BUFFER_UNIFIED_NV      0x936E
#define UNIFORM_BUFFER_ADDRESS_NV      0x936F
#define UNIFORM_BUFFER_LENGTH_NV       0x9370
#endif /* NV_uniform_buffer_unified_memory* /

#ifndef NV_vertex_attrib_integer_64bit
#define NV_vertex_attrib_integer_64bit 1
alias PFNglvertexattribl1i64nvPROC = fn void(Uint index, Int64EXT x);
alias PFNglvertexattribl2i64nvPROC = fn void(Uint index, Int64EXT x, Int64EXT y);
alias PFNglvertexattribl3i64nvPROC = fn void(Uint index, Int64EXT x, Int64EXT y, Int64EXT z);
alias PFNglvertexattribl4i64nvPROC = fn void(Uint index, Int64EXT x, Int64EXT y, Int64EXT z, Int64EXT w);
alias PFNglvertexattribl1i64vnvPROC = fn void(Uint index, Int64EXT* v);
alias PFNglvertexattribl2i64vnvPROC = fn void(Uint index, Int64EXT* v);
alias PFNglvertexattribl3i64vnvPROC = fn void(Uint index, Int64EXT* v);
alias PFNglvertexattribl4i64vnvPROC = fn void(Uint index, Int64EXT* v);
alias PFNglvertexattribl1ui64nvPROC = fn void(Uint index, Uint64EXT x);
alias PFNglvertexattribl2ui64nvPROC = fn void(Uint index, Uint64EXT x, Uint64EXT y);
alias PFNglvertexattribl3ui64nvPROC = fn void(Uint index, Uint64EXT x, Uint64EXT y, Uint64EXT z);
alias PFNglvertexattribl4ui64nvPROC = fn void(Uint index, Uint64EXT x, Uint64EXT y, Uint64EXT z, Uint64EXT w);
alias PFNglvertexattribl1ui64vnvPROC = fn void(Uint index, Uint64EXT* v);
alias PFNglvertexattribl2ui64vnvPROC = fn void(Uint index, Uint64EXT* v);
alias PFNglvertexattribl3ui64vnvPROC = fn void(Uint index, Uint64EXT* v);
alias PFNglvertexattribl4ui64vnvPROC = fn void(Uint index, Uint64EXT* v);
alias PFNglgetvertexattribli64vnvPROC = fn void(Uint index, Enum pname, Int64EXT* params);
alias PFNglgetvertexattriblui64vnvPROC = fn void(Uint index, Enum pname, Uint64EXT* params);
alias PFNglvertexattriblformatnvPROC = fn void(Uint index, Int size, Enum type, Sizei stride);
#ifdef GLEXT_PROTOTYPES
void glVertexAttribL1i64NV (Uint index, Int64EXT x);
void glVertexAttribL2i64NV (Uint index, Int64EXT x, Int64EXT y);
void glVertexAttribL3i64NV (Uint index, Int64EXT x, Int64EXT y, Int64EXT z);
void glVertexAttribL4i64NV (Uint index, Int64EXT x, Int64EXT y, Int64EXT z, Int64EXT w);
void glVertexAttribL1i64vNV (Uint index, Int64EXT* v);
void glVertexAttribL2i64vNV (Uint index, Int64EXT* v);
void glVertexAttribL3i64vNV (Uint index, Int64EXT* v);
void glVertexAttribL4i64vNV (Uint index, Int64EXT* v);
void glVertexAttribL1ui64NV (Uint index, Uint64EXT x);
void glVertexAttribL2ui64NV (Uint index, Uint64EXT x, Uint64EXT y);
void glVertexAttribL3ui64NV (Uint index, Uint64EXT x, Uint64EXT y, Uint64EXT z);
void glVertexAttribL4ui64NV (Uint index, Uint64EXT x, Uint64EXT y, Uint64EXT z, Uint64EXT w);
void glVertexAttribL1ui64vNV (Uint index, Uint64EXT* v);
void glVertexAttribL2ui64vNV (Uint index, Uint64EXT* v);
void glVertexAttribL3ui64vNV (Uint index, Uint64EXT* v);
void glVertexAttribL4ui64vNV (Uint index, Uint64EXT* v);
void glGetVertexAttribLi64vNV (Uint index, Enum pname, Int64EXT* params);
void glGetVertexAttribLui64vNV (Uint index, Enum pname, Uint64EXT* params);
void glVertexAttribLFormatNV (Uint index, Int size, Enum type, Sizei stride);
#endif
#endif /* NV_vertex_attrib_integer_64bit* /

#ifndef NV_vertex_buffer_unified_memory
#define NV_vertex_buffer_unified_memory 1
#define VERTEX_ATTRIB_ARRAY_UNIFIED_NV 0x8F1E
#define ELEMENT_ARRAY_UNIFIED_NV       0x8F1F
#define VERTEX_ATTRIB_ARRAY_ADDRESS_NV 0x8F20
#define VERTEX_ARRAY_ADDRESS_NV        0x8F21
#define NORMAL_ARRAY_ADDRESS_NV        0x8F22
#define COLOR_ARRAY_ADDRESS_NV         0x8F23
#define INDEX_ARRAY_ADDRESS_NV         0x8F24
#define TEXTURE_COORD_ARRAY_ADDRESS_NV 0x8F25
#define EDGE_FLAG_ARRAY_ADDRESS_NV     0x8F26
#define SECONDARY_COLOR_ARRAY_ADDRESS_NV 0x8F27
#define FOG_COORD_ARRAY_ADDRESS_NV     0x8F28
#define ELEMENT_ARRAY_ADDRESS_NV       0x8F29
#define VERTEX_ATTRIB_ARRAY_LENGTH_NV  0x8F2A
#define VERTEX_ARRAY_LENGTH_NV         0x8F2B
#define NORMAL_ARRAY_LENGTH_NV         0x8F2C
#define COLOR_ARRAY_LENGTH_NV          0x8F2D
#define INDEX_ARRAY_LENGTH_NV          0x8F2E
#define TEXTURE_COORD_ARRAY_LENGTH_NV  0x8F2F
#define EDGE_FLAG_ARRAY_LENGTH_NV      0x8F30
#define SECONDARY_COLOR_ARRAY_LENGTH_NV 0x8F31
#define FOG_COORD_ARRAY_LENGTH_NV      0x8F32
#define ELEMENT_ARRAY_LENGTH_NV        0x8F33
#define DRAW_INDIRECT_UNIFIED_NV       0x8F40
#define DRAW_INDIRECT_ADDRESS_NV       0x8F41
#define DRAW_INDIRECT_LENGTH_NV        0x8F42
alias PFNglbufferaddressrangenvPROC = fn void(Enum pname, Uint index, Uint64EXT address, Sizeiptr length);
alias PFNglvertexformatnvPROC = fn void(Int size, Enum type, Sizei stride);
alias PFNglnormalformatnvPROC = fn void(Enum type, Sizei stride);
alias PFNglcolorformatnvPROC = fn void(Int size, Enum type, Sizei stride);
alias PFNglindexformatnvPROC = fn void(Enum type, Sizei stride);
alias PFNgltexcoordformatnvPROC = fn void(Int size, Enum type, Sizei stride);
alias PFNgledgeflagformatnvPROC = fn void(Sizei stride);
alias PFNglsecondarycolorformatnvPROC = fn void(Int size, Enum type, Sizei stride);
alias PFNglfogcoordformatnvPROC = fn void(Enum type, Sizei stride);
alias PFNglvertexattribformatnvPROC = fn void(Uint index, Int size, Enum type, Boolean normalized, Sizei stride);
alias PFNglvertexattribiformatnvPROC = fn void(Uint index, Int size, Enum type, Sizei stride);
alias PFNglgetintegerui64i_vnvPROC = fn void(Enum value, Uint index, Uint64EXT* result);
#ifdef GLEXT_PROTOTYPES
void glBufferAddressRangeNV (Enum pname, Uint index, Uint64EXT address, Sizeiptr length);
void glVertexFormatNV (Int size, Enum type, Sizei stride);
void glNormalFormatNV (Enum type, Sizei stride);
void glColorFormatNV (Int size, Enum type, Sizei stride);
void glIndexFormatNV (Enum type, Sizei stride);
void glTexCoordFormatNV (Int size, Enum type, Sizei stride);
void glEdgeFlagFormatNV (Sizei stride);
void glSecondaryColorFormatNV (Int size, Enum type, Sizei stride);
void glFogCoordFormatNV (Enum type, Sizei stride);
void glVertexAttribFormatNV (Uint index, Int size, Enum type, Boolean normalized, Sizei stride);
void glVertexAttribIFormatNV (Uint index, Int size, Enum type, Sizei stride);
void glGetIntegerui64i_vNV (Enum value, Uint index, Uint64EXT* result);
#endif
#endif /* NV_vertex_buffer_unified_memory* /

#ifndef NV_viewport_array2
#define NV_viewport_array2 1
#endif /* NV_viewport_array2* /

#ifndef NV_viewport_swizzle
#define NV_viewport_swizzle 1
#define VIEWPORT_SWIZZLE_POSITIVE_X_NV 0x9350
#define VIEWPORT_SWIZZLE_NEGATIVE_X_NV 0x9351
#define VIEWPORT_SWIZZLE_POSITIVE_Y_NV 0x9352
#define VIEWPORT_SWIZZLE_NEGATIVE_Y_NV 0x9353
#define VIEWPORT_SWIZZLE_POSITIVE_Z_NV 0x9354
#define VIEWPORT_SWIZZLE_NEGATIVE_Z_NV 0x9355
#define VIEWPORT_SWIZZLE_POSITIVE_W_NV 0x9356
#define VIEWPORT_SWIZZLE_NEGATIVE_W_NV 0x9357
#define VIEWPORT_SWIZZLE_X_NV          0x9358
#define VIEWPORT_SWIZZLE_Y_NV          0x9359
#define VIEWPORT_SWIZZLE_Z_NV          0x935A
#define VIEWPORT_SWIZZLE_W_NV          0x935B
alias PFNglviewportswizzlenvPROC = fn void(Uint index, Enum swizzlex, Enum swizzley, Enum swizzlez, Enum swizzlew);
#ifdef GLEXT_PROTOTYPES
void glViewportSwizzleNV (Uint index, Enum swizzlex, Enum swizzley, Enum swizzlez, Enum swizzlew);
#endif
#endif /* NV_viewport_swizzle* /

#ifndef OVR_multiview
#define OVR_multiview 1
#define FRAMEBUFFER_ATTACHMENT_TEXTURE_NUM_VIEWS_OVR 0x9630
#define FRAMEBUFFER_ATTACHMENT_TEXTURE_BASE_VIEW_INDEX_OVR 0x9632
#define MAX_VIEWS_OVR                  0x9631
#define FRAMEBUFFER_INCOMPLETE_VIEW_TARGETS_OVR 0x9633
alias PFNglframebuffertexturemultiviewovrPROC = fn void(Enum target, Enum attachment, Uint texture, Int level, Int baseViewIndex, Sizei numViews);
alias PFNglnamedframebuffertexturemultiviewovrPROC = fn void(Uint framebuffer, Enum attachment, Uint texture, Int level, Int baseViewIndex, Sizei numViews);
#ifdef GLEXT_PROTOTYPES
void glFramebufferTextureMultiviewOVR (Enum target, Enum attachment, Uint texture, Int level, Int baseViewIndex, Sizei numViews);
void glNamedFramebufferTextureMultiviewOVR (Uint framebuffer, Enum attachment, Uint texture, Int level, Int baseViewIndex, Sizei numViews);
#endif
#endif /* OVR_multiview* /

#ifndef OVR_multiview2
#define OVR_multiview2 1
#endif /* OVR_multiview2* /

#ifdef __cplusplus
}
#endif

#endif
*/
