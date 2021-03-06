unit GlobalTest;

// This unit was generated by d2p.pl script.

interface

uses
  x32.avx,
  x32.avx2,
  x32.avx256int,
  x32.avx512cd,
  x32.avx512er,
  x32.avx512f,
  x32.avx_gather,
  x32.avx_scalar,
  x32.bmi,
  x32.bmi2,
  x32.evex_lig256,
  x32.evex_lig512,
  x32.evex_wig1,
  x32.fma,
  x32.fma_scalar,
  x32.hle,
  x32.simd,
  x32.sse4_1,
  x32.sse4_2,
  x64.avx,
  x64.avx2,
  x64.avx512cd,
  x64.avx512er,
  x64.avx512f,
  x64.avx512pf,
  x64.avx_gather,
  x64.avx_scalar,
  x64.bmi,
  x64.bmi2,
  x64.evex_lig256,
  x64.evex_lig512,
  x64.evex_wig1,
  x64.fma,
  x64.fma_scalar,
  x64.hle,
  x64.simd,
  x64.sse4_1,
  x64.sse4_2;
  
procedure TestAll();

implementation

procedure TestAll();
begin
  x32.avx.Test();
  x32.avx2.Test();
  x32.avx256int.Test();
  x32.avx512cd.Test();
  x32.avx512er.Test();
  x32.avx512f.Test();
  x32.avx_gather.Test();
  x32.avx_scalar.Test();
  x32.bmi.Test();
  x32.bmi2.Test();
  x32.evex_lig256.Test();
  x32.evex_lig512.Test();
  x32.evex_wig1.Test();
  x32.fma.Test();
  x32.fma_scalar.Test();
  x32.hle.Test();
  x32.simd.Test();
  x32.sse4_1.Test();
  x32.sse4_2.Test();
  x64.avx.Test();
  x64.avx2.Test();
  x64.avx512cd.Test();
  x64.avx512er.Test();
  x64.avx512f.Test();
  x64.avx512pf.Test();
  x64.avx_gather.Test();
  x64.avx_scalar.Test();
  x64.bmi.Test();
  x64.bmi2.Test();
  x64.evex_lig256.Test();
  x64.evex_lig512.Test();
  x64.evex_wig1.Test();
  x64.fma.Test();
  x64.fma_scalar.Test();
  x64.hle.Test();
  x64.simd.Test();
  x64.sse4_1.Test();
  x64.sse4_2.Test();
end;

end.

