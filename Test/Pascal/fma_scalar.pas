unit fma_scalar;

interface

uses uTestCase, UnivDisasm.Cnsts;

procedure Test_fma_scalar();

implementation

procedure Test_fma_scalar();
var
  TestCase: TTestCase;
begin
  TestCase := TTestCase.Create('fma_scalar');
  // -------------------------------------------------------------------
  TestCase.Start();
  TestCase.Arch := CPUX32;
  TestCase.TestCase(0, [$C4, $E2, $CD, $99, $D4], 'vfmadd132sd xmm2,xmm6,xmm4');
  TestCase.TestCase(1, [$C4, $E2, $CD, $99, $11], 'vfmadd132sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(2, [$C4, $E2, $CD, $A9, $D4], 'vfmadd213sd xmm2,xmm6,xmm4');
  TestCase.TestCase(3, [$C4, $E2, $CD, $A9, $11], 'vfmadd213sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(4, [$C4, $E2, $CD, $B9, $D4], 'vfmadd231sd xmm2,xmm6,xmm4');
  TestCase.TestCase(5, [$C4, $E2, $CD, $B9, $11], 'vfmadd231sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(6, [$C4, $E2, $CD, $9B, $D4], 'vfmsub132sd xmm2,xmm6,xmm4');
  TestCase.TestCase(7, [$C4, $E2, $CD, $9B, $11], 'vfmsub132sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(8, [$C4, $E2, $CD, $AB, $D4], 'vfmsub213sd xmm2,xmm6,xmm4');
  TestCase.TestCase(9, [$C4, $E2, $CD, $AB, $11], 'vfmsub213sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(10, [$C4, $E2, $CD, $BB, $D4], 'vfmsub231sd xmm2,xmm6,xmm4');
  TestCase.TestCase(11, [$C4, $E2, $CD, $BB, $11], 'vfmsub231sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(12, [$C4, $E2, $CD, $9D, $D4], 'vfnmadd132sd xmm2,xmm6,xmm4');
  TestCase.TestCase(13, [$C4, $E2, $CD, $9D, $11], 'vfnmadd132sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(14, [$C4, $E2, $CD, $AD, $D4], 'vfnmadd213sd xmm2,xmm6,xmm4');
  TestCase.TestCase(15, [$C4, $E2, $CD, $AD, $11], 'vfnmadd213sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(16, [$C4, $E2, $CD, $BD, $D4], 'vfnmadd231sd xmm2,xmm6,xmm4');
  TestCase.TestCase(17, [$C4, $E2, $CD, $BD, $11], 'vfnmadd231sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(18, [$C4, $E2, $CD, $9F, $D4], 'vfnmsub132sd xmm2,xmm6,xmm4');
  TestCase.TestCase(19, [$C4, $E2, $CD, $9F, $11], 'vfnmsub132sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(20, [$C4, $E2, $CD, $AF, $D4], 'vfnmsub213sd xmm2,xmm6,xmm4');
  TestCase.TestCase(21, [$C4, $E2, $CD, $AF, $11], 'vfnmsub213sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(22, [$C4, $E2, $CD, $BF, $D4], 'vfnmsub231sd xmm2,xmm6,xmm4');
  TestCase.TestCase(23, [$C4, $E2, $CD, $BF, $11], 'vfnmsub231sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(24, [$C4, $E2, $4D, $99, $D4], 'vfmadd132ss xmm2,xmm6,xmm4');
  TestCase.TestCase(25, [$C4, $E2, $4D, $99, $11], 'vfmadd132ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(26, [$C4, $E2, $4D, $A9, $D4], 'vfmadd213ss xmm2,xmm6,xmm4');
  TestCase.TestCase(27, [$C4, $E2, $4D, $A9, $11], 'vfmadd213ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(28, [$C4, $E2, $4D, $B9, $D4], 'vfmadd231ss xmm2,xmm6,xmm4');
  TestCase.TestCase(29, [$C4, $E2, $4D, $B9, $11], 'vfmadd231ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(30, [$C4, $E2, $4D, $9B, $D4], 'vfmsub132ss xmm2,xmm6,xmm4');
  TestCase.TestCase(31, [$C4, $E2, $4D, $9B, $11], 'vfmsub132ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(32, [$C4, $E2, $4D, $AB, $D4], 'vfmsub213ss xmm2,xmm6,xmm4');
  TestCase.TestCase(33, [$C4, $E2, $4D, $AB, $11], 'vfmsub213ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(34, [$C4, $E2, $4D, $BB, $D4], 'vfmsub231ss xmm2,xmm6,xmm4');
  TestCase.TestCase(35, [$C4, $E2, $4D, $BB, $11], 'vfmsub231ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(36, [$C4, $E2, $4D, $9D, $D4], 'vfnmadd132ss xmm2,xmm6,xmm4');
  TestCase.TestCase(37, [$C4, $E2, $4D, $9D, $11], 'vfnmadd132ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(38, [$C4, $E2, $4D, $AD, $D4], 'vfnmadd213ss xmm2,xmm6,xmm4');
  TestCase.TestCase(39, [$C4, $E2, $4D, $AD, $11], 'vfnmadd213ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(40, [$C4, $E2, $4D, $BD, $D4], 'vfnmadd231ss xmm2,xmm6,xmm4');
  TestCase.TestCase(41, [$C4, $E2, $4D, $BD, $11], 'vfnmadd231ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(42, [$C4, $E2, $4D, $9F, $D4], 'vfnmsub132ss xmm2,xmm6,xmm4');
  TestCase.TestCase(43, [$C4, $E2, $4D, $9F, $11], 'vfnmsub132ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(44, [$C4, $E2, $4D, $AF, $D4], 'vfnmsub213ss xmm2,xmm6,xmm4');
  TestCase.TestCase(45, [$C4, $E2, $4D, $AF, $11], 'vfnmsub213ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(46, [$C4, $E2, $4D, $BF, $D4], 'vfnmsub231ss xmm2,xmm6,xmm4');
  TestCase.TestCase(47, [$C4, $E2, $4D, $BF, $11], 'vfnmsub231ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(48, [$C4, $E2, $CD, $99, $D4], 'vfmadd132sd xmm2,xmm6,xmm4');
  TestCase.TestCase(49, [$C4, $E2, $CD, $99, $11], 'vfmadd132sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(50, [$C4, $E2, $CD, $99, $11], 'vfmadd132sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(51, [$C4, $E2, $CD, $A9, $D4], 'vfmadd213sd xmm2,xmm6,xmm4');
  TestCase.TestCase(52, [$C4, $E2, $CD, $A9, $11], 'vfmadd213sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(53, [$C4, $E2, $CD, $A9, $11], 'vfmadd213sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(54, [$C4, $E2, $CD, $B9, $D4], 'vfmadd231sd xmm2,xmm6,xmm4');
  TestCase.TestCase(55, [$C4, $E2, $CD, $B9, $11], 'vfmadd231sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(56, [$C4, $E2, $CD, $B9, $11], 'vfmadd231sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(57, [$C4, $E2, $CD, $9B, $D4], 'vfmsub132sd xmm2,xmm6,xmm4');
  TestCase.TestCase(58, [$C4, $E2, $CD, $9B, $11], 'vfmsub132sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(59, [$C4, $E2, $CD, $9B, $11], 'vfmsub132sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(60, [$C4, $E2, $CD, $AB, $D4], 'vfmsub213sd xmm2,xmm6,xmm4');
  TestCase.TestCase(61, [$C4, $E2, $CD, $AB, $11], 'vfmsub213sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(62, [$C4, $E2, $CD, $AB, $11], 'vfmsub213sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(63, [$C4, $E2, $CD, $BB, $D4], 'vfmsub231sd xmm2,xmm6,xmm4');
  TestCase.TestCase(64, [$C4, $E2, $CD, $BB, $11], 'vfmsub231sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(65, [$C4, $E2, $CD, $BB, $11], 'vfmsub231sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(66, [$C4, $E2, $CD, $9D, $D4], 'vfnmadd132sd xmm2,xmm6,xmm4');
  TestCase.TestCase(67, [$C4, $E2, $CD, $9D, $11], 'vfnmadd132sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(68, [$C4, $E2, $CD, $9D, $11], 'vfnmadd132sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(69, [$C4, $E2, $CD, $AD, $D4], 'vfnmadd213sd xmm2,xmm6,xmm4');
  TestCase.TestCase(70, [$C4, $E2, $CD, $AD, $11], 'vfnmadd213sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(71, [$C4, $E2, $CD, $AD, $11], 'vfnmadd213sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(72, [$C4, $E2, $CD, $BD, $D4], 'vfnmadd231sd xmm2,xmm6,xmm4');
  TestCase.TestCase(73, [$C4, $E2, $CD, $BD, $11], 'vfnmadd231sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(74, [$C4, $E2, $CD, $BD, $11], 'vfnmadd231sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(75, [$C4, $E2, $CD, $9F, $D4], 'vfnmsub132sd xmm2,xmm6,xmm4');
  TestCase.TestCase(76, [$C4, $E2, $CD, $9F, $11], 'vfnmsub132sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(77, [$C4, $E2, $CD, $9F, $11], 'vfnmsub132sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(78, [$C4, $E2, $CD, $AF, $D4], 'vfnmsub213sd xmm2,xmm6,xmm4');
  TestCase.TestCase(79, [$C4, $E2, $CD, $AF, $11], 'vfnmsub213sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(80, [$C4, $E2, $CD, $AF, $11], 'vfnmsub213sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(81, [$C4, $E2, $CD, $BF, $D4], 'vfnmsub231sd xmm2,xmm6,xmm4');
  TestCase.TestCase(82, [$C4, $E2, $CD, $BF, $11], 'vfnmsub231sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(83, [$C4, $E2, $CD, $BF, $11], 'vfnmsub231sd xmm2,xmm6,QWORD [ecx]');
  TestCase.TestCase(84, [$C4, $E2, $4D, $99, $D4], 'vfmadd132ss xmm2,xmm6,xmm4');
  TestCase.TestCase(85, [$C4, $E2, $4D, $99, $11], 'vfmadd132ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(86, [$C4, $E2, $4D, $99, $11], 'vfmadd132ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(87, [$C4, $E2, $4D, $A9, $D4], 'vfmadd213ss xmm2,xmm6,xmm4');
  TestCase.TestCase(88, [$C4, $E2, $4D, $A9, $11], 'vfmadd213ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(89, [$C4, $E2, $4D, $A9, $11], 'vfmadd213ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(90, [$C4, $E2, $4D, $B9, $D4], 'vfmadd231ss xmm2,xmm6,xmm4');
  TestCase.TestCase(91, [$C4, $E2, $4D, $B9, $11], 'vfmadd231ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(92, [$C4, $E2, $4D, $B9, $11], 'vfmadd231ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(93, [$C4, $E2, $4D, $9B, $D4], 'vfmsub132ss xmm2,xmm6,xmm4');
  TestCase.TestCase(94, [$C4, $E2, $4D, $9B, $11], 'vfmsub132ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(95, [$C4, $E2, $4D, $9B, $11], 'vfmsub132ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(96, [$C4, $E2, $4D, $AB, $D4], 'vfmsub213ss xmm2,xmm6,xmm4');
  TestCase.TestCase(97, [$C4, $E2, $4D, $AB, $11], 'vfmsub213ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(98, [$C4, $E2, $4D, $AB, $11], 'vfmsub213ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(99, [$C4, $E2, $4D, $BB, $D4], 'vfmsub231ss xmm2,xmm6,xmm4');
  TestCase.TestCase(100, [$C4, $E2, $4D, $BB, $11], 'vfmsub231ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(101, [$C4, $E2, $4D, $BB, $11], 'vfmsub231ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(102, [$C4, $E2, $4D, $9D, $D4], 'vfnmadd132ss xmm2,xmm6,xmm4');
  TestCase.TestCase(103, [$C4, $E2, $4D, $9D, $11], 'vfnmadd132ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(104, [$C4, $E2, $4D, $9D, $11], 'vfnmadd132ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(105, [$C4, $E2, $4D, $AD, $D4], 'vfnmadd213ss xmm2,xmm6,xmm4');
  TestCase.TestCase(106, [$C4, $E2, $4D, $AD, $11], 'vfnmadd213ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(107, [$C4, $E2, $4D, $AD, $11], 'vfnmadd213ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(108, [$C4, $E2, $4D, $BD, $D4], 'vfnmadd231ss xmm2,xmm6,xmm4');
  TestCase.TestCase(109, [$C4, $E2, $4D, $BD, $11], 'vfnmadd231ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(110, [$C4, $E2, $4D, $BD, $11], 'vfnmadd231ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(111, [$C4, $E2, $4D, $9F, $D4], 'vfnmsub132ss xmm2,xmm6,xmm4');
  TestCase.TestCase(112, [$C4, $E2, $4D, $9F, $11], 'vfnmsub132ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(113, [$C4, $E2, $4D, $9F, $11], 'vfnmsub132ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(114, [$C4, $E2, $4D, $AF, $D4], 'vfnmsub213ss xmm2,xmm6,xmm4');
  TestCase.TestCase(115, [$C4, $E2, $4D, $AF, $11], 'vfnmsub213ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(116, [$C4, $E2, $4D, $AF, $11], 'vfnmsub213ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(117, [$C4, $E2, $4D, $BF, $D4], 'vfnmsub231ss xmm2,xmm6,xmm4');
  TestCase.TestCase(118, [$C4, $E2, $4D, $BF, $11], 'vfnmsub231ss xmm2,xmm6,DWORD [ecx]');
  TestCase.TestCase(119, [$C4, $E2, $4D, $BF, $11], 'vfnmsub231ss xmm2,xmm6,DWORD [ecx]');
  TestCase.Stop();
  TestCase.SaveToFile('log\fma_scalar.log');
  TestCase.Free;
end;

end.