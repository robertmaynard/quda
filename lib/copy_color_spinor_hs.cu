#include <copy_color_spinor.cuh>

namespace quda {
  
  void copyGenericColorSpinorHS(ColorSpinorField &dst, const ColorSpinorField &src, 
				QudaFieldLocation location, void *Dst, void *Src, 
				void *dstNorm, void *srcNorm) {
    CopyGenericColorSpinor<3>(dst, src, location, (short*)Dst, (float*)Src, (float*)dstNorm, 0);
  }  

} // namespace quda
