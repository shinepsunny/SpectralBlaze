; ModuleID = '/home/shine/Desktop/fft_story/hls/inv_fft/vr_fft/v8/v8/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::vector" = type { %"struct.std::array" }
%"struct.std::array" = type { [4 x %"struct.std::complex"] }
%"struct.std::complex" = type { half, half }
%struct.ctrl1_t = type { %struct.ap_uint, %struct.ap_uint, %struct.ap_uint, %struct.ap_uint }
%struct.ap_uint = type { %struct.ap_int_base }
%struct.ap_int_base = type { %"class.std::ios_base::Init" }
%"class.std::ios_base::Init" = type { i8 }
%struct.layer1_t = type { %struct.ap_uint.3, %struct.ap_uint.3 }
%struct.ap_uint.3 = type { %struct.ap_int_base.4 }
%struct.ap_int_base.4 = type { %struct.ssdm_int.5 }
%struct.ssdm_int.5 = type { i16 }

; Function Attrs: noinline
define void @apatb_vr_ifft_ir(%"class.hls::vector"* %in, %"class.hls::vector"* %out, %struct.ctrl1_t* %ctrl1_reg, %struct.ctrl1_t* %ctrl2_reg, %struct.layer1_t* %layer1_reg) local_unnamed_addr #0 {
entry:
  %malloccall = call i8* @malloc(i64 16384)
  %in_copy = bitcast i8* %malloccall to [1024 x i128]*
  %malloccall1 = call i8* @malloc(i64 16384)
  %out_copy = bitcast i8* %malloccall1 to [1024 x i128]*
  %ctrl1_reg_copy = alloca %struct.ctrl1_t, align 512
  %ctrl2_reg_copy = alloca %struct.ctrl1_t, align 512
  %layer1_reg_copy = alloca %struct.layer1_t, align 512
  %0 = bitcast %"class.hls::vector"* %in to [1024 x %"class.hls::vector"]*
  %1 = bitcast %"class.hls::vector"* %out to [1024 x %"class.hls::vector"]*
  call fastcc void @copy_in([1024 x %"class.hls::vector"]* %0, [1024 x i128]* %in_copy, [1024 x %"class.hls::vector"]* %1, [1024 x i128]* %out_copy, %struct.ctrl1_t* %ctrl1_reg, %struct.ctrl1_t* nonnull align 512 %ctrl1_reg_copy, %struct.ctrl1_t* %ctrl2_reg, %struct.ctrl1_t* nonnull align 512 %ctrl2_reg_copy, %struct.layer1_t* %layer1_reg, %struct.layer1_t* nonnull align 512 %layer1_reg_copy)
  %2 = getelementptr [1024 x i128], [1024 x i128]* %in_copy, i32 0, i32 0
  %3 = getelementptr [1024 x i128], [1024 x i128]* %out_copy, i32 0, i32 0
  call void @apatb_vr_ifft_hw(i128* %2, i128* %3, %struct.ctrl1_t* %ctrl1_reg_copy, %struct.ctrl1_t* %ctrl2_reg_copy, %struct.layer1_t* %layer1_reg_copy)
  call fastcc void @copy_out([1024 x %"class.hls::vector"]* %0, [1024 x i128]* %in_copy, [1024 x %"class.hls::vector"]* %1, [1024 x i128]* %out_copy, %struct.ctrl1_t* %ctrl1_reg, %struct.ctrl1_t* nonnull align 512 %ctrl1_reg_copy, %struct.ctrl1_t* %ctrl2_reg, %struct.ctrl1_t* nonnull align 512 %ctrl2_reg_copy, %struct.layer1_t* %layer1_reg, %struct.layer1_t* nonnull align 512 %layer1_reg_copy)
  call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in([1024 x %"class.hls::vector"]* readonly, [1024 x i128]* noalias, [1024 x %"class.hls::vector"]* readonly, [1024 x i128]* noalias, %struct.ctrl1_t* readonly, %struct.ctrl1_t* noalias align 512, %struct.ctrl1_t* readonly, %struct.ctrl1_t* noalias align 512, %struct.layer1_t* readonly, %struct.layer1_t* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a1024class.hls::vector.81"([1024 x i128]* %1, [1024 x %"class.hls::vector"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a1024class.hls::vector.81"([1024 x i128]* %3, [1024 x %"class.hls::vector"]* %2)
  call fastcc void @onebyonecpy_hls.p0struct.ctrl1_t(%struct.ctrl1_t* align 512 %5, %struct.ctrl1_t* %4)
  call fastcc void @onebyonecpy_hls.p0struct.ctrl1_t(%struct.ctrl1_t* align 512 %7, %struct.ctrl1_t* %6)
  call fastcc void @onebyonecpy_hls.p0struct.layer1_t(%struct.layer1_t* align 512 %9, %struct.layer1_t* %8)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0struct.ctrl1_t(%struct.ctrl1_t* noalias align 512, %struct.ctrl1_t* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq %struct.ctrl1_t* %0, null
  %3 = icmp eq %struct.ctrl1_t* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.0.09 = getelementptr %struct.ctrl1_t, %struct.ctrl1_t* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.010 = getelementptr %struct.ctrl1_t, %struct.ctrl1_t* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %.01.0.0.010, i8* align 1 %.0.0.0.09, i64 1, i1 false)
  %.1.0.0.015 = getelementptr %struct.ctrl1_t, %struct.ctrl1_t* %1, i32 0, i32 1, i32 0, i32 0, i32 0
  %.12.0.0.016 = getelementptr %struct.ctrl1_t, %struct.ctrl1_t* %0, i32 0, i32 1, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %.12.0.0.016, i8* align 1 %.1.0.0.015, i64 1, i1 false)
  %.2.0.0.021 = getelementptr %struct.ctrl1_t, %struct.ctrl1_t* %1, i32 0, i32 2, i32 0, i32 0, i32 0
  %.23.0.0.022 = getelementptr %struct.ctrl1_t, %struct.ctrl1_t* %0, i32 0, i32 2, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %.23.0.0.022, i8* align 1 %.2.0.0.021, i64 1, i1 false)
  %.3.0.0.027 = getelementptr %struct.ctrl1_t, %struct.ctrl1_t* %1, i32 0, i32 3, i32 0, i32 0, i32 0
  %.34.0.0.028 = getelementptr %struct.ctrl1_t, %struct.ctrl1_t* %0, i32 0, i32 3, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %.34.0.0.028, i8* align 1 %.3.0.0.027, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0struct.layer1_t(%struct.layer1_t* noalias align 512, %struct.layer1_t* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq %struct.layer1_t* %0, null
  %3 = icmp eq %struct.layer1_t* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %struct.layer1_t* %0 to i8*
  %6 = bitcast %struct.layer1_t* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 2, i1 false)
  %.12.0.0.014.gep16 = getelementptr %struct.layer1_t, %struct.layer1_t* %0, i32 0, i32 1, i32 0, i32 0, i32 0
  %7 = bitcast i16* %.12.0.0.014.gep16 to i8*
  %.1.0.0.013.gep17 = getelementptr %struct.layer1_t, %struct.layer1_t* %1, i32 0, i32 1, i32 0, i32 0, i32 0
  %8 = bitcast i16* %.1.0.0.013.gep17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %8, i64 2, i1 false)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out([1024 x %"class.hls::vector"]*, [1024 x i128]* noalias readonly, [1024 x %"class.hls::vector"]*, [1024 x i128]* noalias readonly, %struct.ctrl1_t*, %struct.ctrl1_t* noalias readonly align 512, %struct.ctrl1_t*, %struct.ctrl1_t* noalias readonly align 512, %struct.layer1_t*, %struct.layer1_t* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a1024class.hls::vector"([1024 x %"class.hls::vector"]* %0, [1024 x i128]* %1)
  call fastcc void @"onebyonecpy_hls.p0a1024class.hls::vector"([1024 x %"class.hls::vector"]* %2, [1024 x i128]* %3)
  call fastcc void @onebyonecpy_hls.p0struct.ctrl1_t(%struct.ctrl1_t* %4, %struct.ctrl1_t* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0struct.ctrl1_t(%struct.ctrl1_t* %6, %struct.ctrl1_t* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0struct.layer1_t(%struct.layer1_t* %8, %struct.layer1_t* align 512 %9)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0a1024class.hls::vector"([1024 x %"class.hls::vector"]* noalias, [1024 x i128]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [1024 x %"class.hls::vector"]* %0, null
  %3 = icmp eq [1024 x i128]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx22 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %5 = getelementptr [1024 x i128], [1024 x i128]* %1, i64 0, i64 %for.loop.idx22
  %6 = load i128, i128* %5, align 16
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx321 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr5.014.gep17 = getelementptr [1024 x %"class.hls::vector"], [1024 x %"class.hls::vector"]* %0, i64 0, i64 %for.loop.idx22, i32 0, i32 0, i64 %for.loop.idx321, i32 0
  %7 = mul nuw nsw i64 32, %for.loop.idx321
  %8 = add nuw nsw i64 %7, 16
  %end1 = or i64 %7, 15
  %9 = zext i64 %7 to i128
  %10 = zext i64 %end1 to i128
  %11 = add nuw nsw i128 %10, 1
  %12 = shl i128 1, %11
  %13 = icmp uge i128 %11, 128
  %14 = select i1 %13, i128 0, i128 %12
  %15 = shl i128 1, %9
  %16 = sub i128 %14, %15
  %17 = and i128 %6, %16
  %18 = lshr i128 %17, %9
  %partselect2 = trunc i128 %18 to i16
  %19 = call half @_llvm.fpga.unpack.none.f16.i16(i16 %partselect2)
  store half %19, half* %dst.addr5.014.gep17, align 2
  %dst.addr5.116.gep19 = getelementptr [1024 x %"class.hls::vector"], [1024 x %"class.hls::vector"]* %0, i64 0, i64 %for.loop.idx22, i32 0, i32 0, i64 %for.loop.idx321, i32 1
  %end = or i64 %7, 31
  %20 = zext i64 %8 to i128
  %21 = zext i64 %end to i128
  %22 = add nuw nsw i128 %21, 1
  %23 = shl i128 1, %22
  %24 = icmp uge i128 %22, 128
  %25 = select i1 %24, i128 0, i128 %23
  %26 = shl i128 1, %20
  %27 = sub i128 %25, %26
  %28 = and i128 %6, %27
  %29 = lshr i128 %28, %20
  %partselect = trunc i128 %29 to i16
  %30 = call half @_llvm.fpga.unpack.none.f16.i16(i16 %partselect)
  store half %30, half* %dst.addr5.116.gep19, align 2
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx321, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 4
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx22, 1
  %exitcond23 = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond23, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal half @_llvm.fpga.unpack.none.f16.i16(i16 %A) #5 {
  %A.cast = bitcast i16 %A to half
  ret half %A.cast
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0a1024class.hls::vector.81"([1024 x i128]* noalias, [1024 x %"class.hls::vector"]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [1024 x i128]* %0, null
  %3 = icmp eq [1024 x %"class.hls::vector"]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx22 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %5 = getelementptr [1024 x i128], [1024 x i128]* %0, i64 0, i64 %for.loop.idx22
  %.promoted = load i128, i128* %5, align 16
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %partset3 = phi i128 [ %.promoted, %for.loop ], [ %partset, %for.loop2 ]
  %for.loop.idx321 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %6 = mul nuw nsw i64 32, %for.loop.idx321
  %src.addr6.013.gep18 = getelementptr [1024 x %"class.hls::vector"], [1024 x %"class.hls::vector"]* %1, i64 0, i64 %for.loop.idx22, i32 0, i32 0, i64 %for.loop.idx321, i32 0
  %7 = load half, half* %src.addr6.013.gep18, align 2
  %8 = add nuw nsw i64 %6, 16
  %end1 = or i64 %6, 15
  %9 = call i16 @_llvm.fpga.pack.none.i16.f16(half %7)
  %10 = zext i64 %6 to i128
  %11 = zext i16 %9 to i128
  %12 = shl i128 %11, %10
  %13 = zext i64 %end1 to i128
  %14 = add nuw nsw i128 %13, 1
  %15 = shl i128 1, %14
  %16 = icmp uge i128 %14, 128
  %17 = select i1 %16, i128 0, i128 %15
  %18 = shl i128 1, %10
  %19 = sub i128 %17, %18
  %20 = xor i128 %19, -1
  %21 = and i128 %partset3, %20
  %partset2 = or i128 %21, %12
  %src.addr6.115.gep20 = getelementptr [1024 x %"class.hls::vector"], [1024 x %"class.hls::vector"]* %1, i64 0, i64 %for.loop.idx22, i32 0, i32 0, i64 %for.loop.idx321, i32 1
  %22 = load half, half* %src.addr6.115.gep20, align 2
  %end = or i64 %6, 31
  %23 = call i16 @_llvm.fpga.pack.none.i16.f16(half %22)
  %24 = zext i64 %8 to i128
  %25 = zext i16 %23 to i128
  %26 = shl i128 %25, %24
  %27 = zext i64 %end to i128
  %28 = add nuw nsw i128 %27, 1
  %29 = shl i128 1, %28
  %30 = icmp uge i128 %28, 128
  %31 = select i1 %30, i128 0, i128 %29
  %32 = shl i128 1, %24
  %33 = sub i128 %31, %32
  %34 = xor i128 %33, -1
  %35 = and i128 %partset2, %34
  %partset = or i128 %35, %26
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx321, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 4
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  store i128 %partset, i128* %5, align 16
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx22, 1
  %exitcond23 = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond23, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal i16 @_llvm.fpga.pack.none.i16.f16(half %A) #5 {
  %A.cast = bitcast half %A to i16
  ret i16 %A.cast
}

declare void @apatb_vr_ifft_hw(i128*, i128*, %struct.ctrl1_t*, %struct.ctrl1_t*, %struct.layer1_t*)

define void @vr_ifft_hw_stub_wrapper(i128*, i128*, %struct.ctrl1_t*, %struct.ctrl1_t*, %struct.layer1_t*) #6 {
entry:
  %malloccall = tail call i8* @malloc(i64 16384)
  %5 = bitcast i8* %malloccall to [1024 x %"class.hls::vector"]*
  %malloccall1 = tail call i8* @malloc(i64 16384)
  %6 = bitcast i8* %malloccall1 to [1024 x %"class.hls::vector"]*
  %7 = bitcast i128* %0 to [1024 x i128]*
  %8 = bitcast i128* %1 to [1024 x i128]*
  call void @copy_out([1024 x %"class.hls::vector"]* %5, [1024 x i128]* %7, [1024 x %"class.hls::vector"]* %6, [1024 x i128]* %8, %struct.ctrl1_t* null, %struct.ctrl1_t* %2, %struct.ctrl1_t* null, %struct.ctrl1_t* %3, %struct.layer1_t* null, %struct.layer1_t* %4)
  %9 = bitcast [1024 x %"class.hls::vector"]* %5 to %"class.hls::vector"*
  %10 = bitcast [1024 x %"class.hls::vector"]* %6 to %"class.hls::vector"*
  call void @vr_ifft_hw_stub(%"class.hls::vector"* %9, %"class.hls::vector"* %10, %struct.ctrl1_t* %2, %struct.ctrl1_t* %3, %struct.layer1_t* %4)
  call void @copy_in([1024 x %"class.hls::vector"]* %5, [1024 x i128]* %7, [1024 x %"class.hls::vector"]* %6, [1024 x i128]* %8, %struct.ctrl1_t* null, %struct.ctrl1_t* %2, %struct.ctrl1_t* null, %struct.ctrl1_t* %3, %struct.layer1_t* null, %struct.layer1_t* %4)
  ret void
}

declare void @vr_ifft_hw_stub(%"class.hls::vector"*, %"class.hls::vector"*, %struct.ctrl1_t*, %struct.ctrl1_t*, %struct.layer1_t*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #5 = { alwaysinline nounwind readnone }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
