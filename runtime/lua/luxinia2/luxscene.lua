local ffi = require "ffi"
require "luxinia2.luxplatform"
require "luxinia2.luxmath"
require "luxinia2.luxcore"
require "luxinia2.luxgfx"

ffi.cdef [[
// lxs | Lux Scene
typedef enum lxMeshIndexType_e
{
    LUX_MESH_INDEX_UINT16 , LUX_MESH_INDEX_UINT32 , LUX_MESH_INDICES , }
lxMeshIndexType_t ;
void lxMeshPlane_getCounts ( int segs [ 2 ] , int * numVertices , int * numTriangleIndices , int * numOutlineIndices ) ;
void lxMeshPlane_initTriangles ( int segs [ 2 ] , lxVector3 * pos , lxVector3 * normal , lxVector2 * uv , uint32 * indices ) ;
void lxMeshPlane_initOutline ( int segs [ 2 ] , uint32 * indices ) ;
void lxMeshDisc_getCounts ( int segs [ 2 ] , int * numVertices , int * numTriangleIndices , int * numOutlineIndices ) ;
void lxMeshDisc_initTriangles ( int segs [ 2 ] , lxVector3 * pos , lxVector3 * normal , lxVector2 * uv , uint32 * indices ) ;
void lxMeshDisc_initOutline ( int segs [ 2 ] , uint32 * indices ) ;
void lxMeshBox_getCounts ( int segs [ 3 ] , int * numVertices , int * numTriangleIndices , int * numOutlineIndices ) ;
void lxMeshBox_initTriangles ( int segs [ 3 ] , lxVector3 * pos , lxVector3 * normal , lxVector2 * uv , uint32 * indices ) ;
void lxMeshBox_initOutline ( int segs [ 3 ] , uint32 * indices ) ;
void lxMeshSphere_getCounts ( int segs [ 2 ] , int * numVertices , int * numTriangleIndices , int * numOutlineIndices ) ;
void lxMeshSphere_initTriangles ( int segs [ 2 ] , lxVector3 * pos , lxVector3 * normal , lxVector2 * uv , uint32 * indices ) ;
void lxMeshSphere_initOutline ( int segs [ 2 ] , uint32 * indices ) ;
void lxMeshCylinder_getCounts ( int segs [ 3 ] , int * numVertices , int * numTriangleIndices , int * numOutlineIndices ) ;
void lxMeshCylinder_initTriangles ( int segs [ 3 ] , lxVector3 * pos , lxVector3 * normal , lxVector2 * uv , uint32 * indices ) ;
void lxMeshCylinder_initOutline ( int segs [ 3 ] , uint32 * indices ) ;
void * lxVertexCacheOptimize_tipsify ( void * indices , int nTriangles , int nVertices , int k , lxMeshIndexType_t type ) ;
void * lxVertexCacheOptimize_forsyth ( void * indices , int nTriangles , int nVertices , int vcache , lxMeshIndexType_t type ) ;
void * lxVertexCacheOptimize_grid_castano ( void * indices , int maxTriangles , int width , int height , int vcache , lxMeshIndexType_t type , int * writtenTriangles ) ;
]]

return ffi.load("luxbackend")
