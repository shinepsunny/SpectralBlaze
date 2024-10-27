; ModuleID = '/home/shine/Documents/research/fft_story/hls/inv_fft/v10/v10/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::vector<std::complex<__fp16>, 4>" = type { %"struct.std::array<std::complex<__fp16>, 4>" }
%"struct.std::array<std::complex<__fp16>, 4>" = type { [4 x %"struct.std::complex<__fp16>"] }
%"struct.std::complex<__fp16>" = type { half, half }
%"class.hls::vector<__fp16, 8>" = type { %"struct.std::array<__fp16, 8>" }
%"struct.std::array<__fp16, 8>" = type { [8 x half] }
%struct.layer1_t = type { %"struct.ap_uint<16>", %"struct.ap_uint<16>" }
%"struct.ap_uint<16>" = type { %"struct.ap_int_base<16, false>" }
%"struct.ap_int_base<16, false>" = type { %"struct.ssdm_int<16, false>" }
%"struct.ssdm_int<16, false>" = type { i16 }
%struct.layer2_t = type { %"struct.ap_uint<8>", %"struct.ap_uint<8>", %"struct.ap_uint<16>" }
%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"class.std::ios_base::Init" }
%"class.std::ios_base::Init" = type { i8 }
%struct.ctrl1_t = type { %"struct.ap_uint<8>", %"struct.ap_uint<8>", %"struct.ap_uint<8>", %"struct.ap_uint<8>" }

; Function Attrs: noinline
define void @apatb_IFFT_AP_ir(%"class.hls::vector<std::complex<__fp16>, 4>"* noalias nocapture nonnull readonly align 16 %in, %"class.hls::vector<__fp16, 8>"* noalias nocapture nonnull align 16 %out1, %"class.hls::vector<__fp16, 8>"* noalias nocapture nonnull align 16 %out2, %struct.ctrl1_t* noalias nocapture nonnull readonly %ctrl1_regp, %struct.ctrl1_t* noalias nocapture nonnull readonly %ctrl2_regp, %struct.layer1_t* noalias nocapture nonnull readonly %layer1_regp, %struct.layer2_t* noalias nocapture nonnull readonly %layer2_regp, %struct.ctrl1_t* noalias nocapture nonnull readonly %actp_regp) local_unnamed_addr #0 {
entry:
  %malloccall = call i8* @malloc(i64 16384)
  %in_copy = bitcast i8* %malloccall to [1024 x i128]*
  %malloccall1 = call i8* @malloc(i64 16384)
  %out1_copy = bitcast i8* %malloccall1 to [1024 x i128]*
  %malloccall2 = call i8* @malloc(i64 16384)
  %out2_copy = bitcast i8* %malloccall2 to [1024 x i128]*
  %ctrl1_regp_copy = alloca %struct.ctrl1_t, align 512
  %ctrl2_regp_copy = alloca %struct.ctrl1_t, align 512
  %layer1_regp_copy = alloca %struct.layer1_t, align 512
  %layer2_regp_copy = alloca %struct.layer2_t, align 512
  %actp_regp_copy = alloca %struct.ctrl1_t, align 512
  %0 = bitcast %"class.hls::vector<std::complex<__fp16>, 4>"* %in to [1024 x %"class.hls::vector<std::complex<__fp16>, 4>"]*
  %1 = bitcast %"class.hls::vector<__fp16, 8>"* %out1 to [1024 x %"class.hls::vector<__fp16, 8>"]*
  %2 = bitcast %"class.hls::vector<__fp16, 8>"* %out2 to [1024 x %"class.hls::vector<__fp16, 8>"]*
  call fastcc void @copy_in([1024 x %"class.hls::vector<std::complex<__fp16>, 4>"]* nonnull align 16 %0, [1024 x i128]* %in_copy, [1024 x %"class.hls::vector<__fp16, 8>"]* nonnull align 16 %1, [1024 x i128]* %out1_copy, [1024 x %"class.hls::vector<__fp16, 8>"]* nonnull align 16 %2, [1024 x i128]* %out2_copy, %struct.ctrl1_t* nonnull %ctrl1_regp, %struct.ctrl1_t* nonnull align 512 %ctrl1_regp_copy, %struct.ctrl1_t* nonnull %ctrl2_regp, %struct.ctrl1_t* nonnull align 512 %ctrl2_regp_copy, %struct.layer1_t* nonnull %layer1_regp, %struct.layer1_t* nonnull align 512 %layer1_regp_copy, %struct.layer2_t* nonnull %layer2_regp, %struct.layer2_t* nonnull align 512 %layer2_regp_copy, %struct.ctrl1_t* nonnull %actp_regp, %struct.ctrl1_t* nonnull align 512 %actp_regp_copy)
  %3 = getelementptr [1024 x i128], [1024 x i128]* %in_copy, i32 0, i32 0
  %4 = getelementptr [1024 x i128], [1024 x i128]* %out1_copy, i32 0, i32 0
  %5 = getelementptr [1024 x i128], [1024 x i128]* %out2_copy, i32 0, i32 0
  call void @apatb_IFFT_AP_hw(i128* %3, i128* %4, i128* %5, %struct.ctrl1_t* %ctrl1_regp_copy, %struct.ctrl1_t* %ctrl2_regp_copy, %struct.layer1_t* %layer1_regp_copy, %struct.layer2_t* %layer2_regp_copy, %struct.ctrl1_t* %actp_regp_copy)
  call void @copy_back([1024 x %"class.hls::vector<std::complex<__fp16>, 4>"]* %0, [1024 x i128]* %in_copy, [1024 x %"class.hls::vector<__fp16, 8>"]* %1, [1024 x i128]* %out1_copy, [1024 x %"class.hls::vector<__fp16, 8>"]* %2, [1024 x i128]* %out2_copy, %struct.ctrl1_t* %ctrl1_regp, %struct.ctrl1_t* %ctrl1_regp_copy, %struct.ctrl1_t* %ctrl2_regp, %struct.ctrl1_t* %ctrl2_regp_copy, %struct.layer1_t* %layer1_regp, %struct.layer1_t* %layer1_regp_copy, %struct.layer2_t* %layer2_regp, %struct.layer2_t* %layer2_regp_copy, %struct.ctrl1_t* %actp_regp, %struct.ctrl1_t* %actp_regp_copy)
  call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1)
  call void @free(i8* %malloccall2)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([1024 x %"class.hls::vector<std::complex<__fp16>, 4>"]* noalias readonly align 16, [1024 x i128]* noalias, [1024 x %"class.hls::vector<__fp16, 8>"]* noalias readonly align 16, [1024 x i128]* noalias, [1024 x %"class.hls::vector<__fp16, 8>"]* noalias readonly align 16, [1024 x i128]* noalias, %struct.ctrl1_t* noalias readonly, %struct.ctrl1_t* noalias align 512, %struct.ctrl1_t* noalias readonly, %struct.ctrl1_t* noalias align 512, %struct.layer1_t* noalias readonly, %struct.layer1_t* noalias align 512, %struct.layer2_t* noalias readonly, %struct.layer2_t* noalias align 512, %struct.ctrl1_t* noalias readonly, %struct.ctrl1_t* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a1024class.hls::vector<std::complex<__fp16>, 4>"([1024 x i128]* %1, [1024 x %"class.hls::vector<std::complex<__fp16>, 4>"]* align 16 %0)
  call fastcc void @"onebyonecpy_hls.p0a1024class.hls::vector<__fp16, 8>"([1024 x i128]* %3, [1024 x %"class.hls::vector<__fp16, 8>"]* align 16 %2)
  call fastcc void @"onebyonecpy_hls.p0a1024class.hls::vector<__fp16, 8>"([1024 x i128]* %5, [1024 x %"class.hls::vector<__fp16, 8>"]* align 16 %4)
  call fastcc void @onebyonecpy_hls.p0struct.ctrl1_t(%struct.ctrl1_t* align 512 %7, %struct.ctrl1_t* %6)
  call fastcc void @onebyonecpy_hls.p0struct.ctrl1_t(%struct.ctrl1_t* align 512 %9, %struct.ctrl1_t* %8)
  call fastcc void @onebyonecpy_hls.p0struct.layer1_t(%struct.layer1_t* align 512 %11, %struct.layer1_t* %10)
  call fastcc void @onebyonecpy_hls.p0struct.layer2_t(%struct.layer2_t* align 512 %13, %struct.layer2_t* %12)
  call fastcc void @onebyonecpy_hls.p0struct.ctrl1_t(%struct.ctrl1_t* align 512 %15, %struct.ctrl1_t* %14)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a1024class.hls::vector<std::complex<__fp16>, 4>"([1024 x i128]* noalias, [1024 x %"class.hls::vector<std::complex<__fp16>, 4>"]* noalias readonly align 16) unnamed_addr #2 {
entry:
  %2 = icmp eq [1024 x i128]* %0, null
  %3 = icmp eq [1024 x %"class.hls::vector<std::complex<__fp16>, 4>"]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx18 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %5 = getelementptr [1024 x i128], [1024 x i128]* %0, i64 0, i64 %for.loop.idx18
  %.promoted = load i128, i128* %5, align 2
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %.partset2 = phi i128 [ %.promoted, %for.loop ], [ %.partset, %for.loop2 ]
  %for.loop.idx317 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %src.addr6.013 = getelementptr [1024 x %"class.hls::vector<std::complex<__fp16>, 4>"], [1024 x %"class.hls::vector<std::complex<__fp16>, 4>"]* %1, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i64 %for.loop.idx317, i32 0
  %6 = mul nuw nsw i64 32, %for.loop.idx317
  %7 = load half, half* %src.addr6.013, align 4
  %8 = call i16 @_llvm.fpga.pack.none.i16.f16(half %7)
  %9 = zext i64 %6 to i128
  %10 = shl i128 65535, %9
  %11 = zext i16 %8 to i128
  %12 = shl i128 %11, %9
  %13 = xor i128 %10, -1
  %14 = and i128 %.partset2, %13
  %.partset1 = or i128 %14, %12
  %src.addr6.115 = getelementptr [1024 x %"class.hls::vector<std::complex<__fp16>, 4>"], [1024 x %"class.hls::vector<std::complex<__fp16>, 4>"]* %1, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i64 %for.loop.idx317, i32 1
  %15 = add nuw nsw i64 %6, 16
  %16 = load half, half* %src.addr6.115, align 2
  %17 = call i16 @_llvm.fpga.pack.none.i16.f16(half %16)
  %18 = zext i64 %15 to i128
  %19 = shl i128 65535, %18
  %20 = zext i16 %17 to i128
  %21 = shl i128 %20, %18
  %22 = xor i128 %19, -1
  %23 = and i128 %.partset1, %22
  %.partset = or i128 %23, %21
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx317, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 4
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  store i128 %.partset, i128* %5, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx18, 1
  %exitcond19 = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond19, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0struct.ctrl1_t(%struct.ctrl1_t* noalias align 512, %struct.ctrl1_t* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq %struct.ctrl1_t* %0, null
  %3 = icmp eq %struct.ctrl1_t* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.0.09 = getelementptr %struct.ctrl1_t, %struct.ctrl1_t* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.010 = getelementptr %struct.ctrl1_t, %struct.ctrl1_t* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %5 = load i8, i8* %.0.0.0.09, align 1
  store i8 %5, i8* %.01.0.0.010, align 512
  %.1.0.0.015 = getelementptr %struct.ctrl1_t, %struct.ctrl1_t* %1, i32 0, i32 1, i32 0, i32 0, i32 0
  %.12.0.0.016 = getelementptr %struct.ctrl1_t, %struct.ctrl1_t* %0, i32 0, i32 1, i32 0, i32 0, i32 0
  %6 = load i8, i8* %.1.0.0.015, align 1
  store i8 %6, i8* %.12.0.0.016, align 1
  %.2.0.0.021 = getelementptr %struct.ctrl1_t, %struct.ctrl1_t* %1, i32 0, i32 2, i32 0, i32 0, i32 0
  %.23.0.0.022 = getelementptr %struct.ctrl1_t, %struct.ctrl1_t* %0, i32 0, i32 2, i32 0, i32 0, i32 0
  %7 = load i8, i8* %.2.0.0.021, align 1
  store i8 %7, i8* %.23.0.0.022, align 2
  %.3.0.0.027 = getelementptr %struct.ctrl1_t, %struct.ctrl1_t* %1, i32 0, i32 3, i32 0, i32 0, i32 0
  %.34.0.0.028 = getelementptr %struct.ctrl1_t, %struct.ctrl1_t* %0, i32 0, i32 3, i32 0, i32 0, i32 0
  %8 = load i8, i8* %.3.0.0.027, align 1
  store i8 %8, i8* %.34.0.0.028, align 1
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0struct.layer1_t(%struct.layer1_t* noalias align 512, %struct.layer1_t* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq %struct.layer1_t* %0, null
  %3 = icmp eq %struct.layer1_t* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.0.07 = getelementptr %struct.layer1_t, %struct.layer1_t* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.08 = getelementptr %struct.layer1_t, %struct.layer1_t* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %5 = load i16, i16* %.0.0.0.07, align 2
  store i16 %5, i16* %.01.0.0.08, align 512
  %.1.0.0.013 = getelementptr %struct.layer1_t, %struct.layer1_t* %1, i32 0, i32 1, i32 0, i32 0, i32 0
  %.12.0.0.014 = getelementptr %struct.layer1_t, %struct.layer1_t* %0, i32 0, i32 1, i32 0, i32 0, i32 0
  %6 = load i16, i16* %.1.0.0.013, align 2
  store i16 %6, i16* %.12.0.0.014, align 2
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0struct.layer2_t(%struct.layer2_t* noalias align 512, %struct.layer2_t* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq %struct.layer2_t* %0, null
  %3 = icmp eq %struct.layer2_t* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.0.08 = getelementptr %struct.layer2_t, %struct.layer2_t* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.09 = getelementptr %struct.layer2_t, %struct.layer2_t* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %5 = load i8, i8* %.0.0.0.08, align 1
  store i8 %5, i8* %.01.0.0.09, align 512
  %.1.0.0.014 = getelementptr %struct.layer2_t, %struct.layer2_t* %1, i32 0, i32 1, i32 0, i32 0, i32 0
  %.12.0.0.015 = getelementptr %struct.layer2_t, %struct.layer2_t* %0, i32 0, i32 1, i32 0, i32 0, i32 0
  %6 = load i8, i8* %.1.0.0.014, align 1
  store i8 %6, i8* %.12.0.0.015, align 1
  %.2.0.0.020 = getelementptr %struct.layer2_t, %struct.layer2_t* %1, i32 0, i32 2, i32 0, i32 0, i32 0
  %.23.0.0.021 = getelementptr %struct.layer2_t, %struct.layer2_t* %0, i32 0, i32 2, i32 0, i32 0, i32 0
  %7 = load i16, i16* %.2.0.0.020, align 2
  store i16 %7, i16* %.23.0.0.021, align 2
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([1024 x %"class.hls::vector<std::complex<__fp16>, 4>"]* noalias align 16, [1024 x i128]* noalias readonly, [1024 x %"class.hls::vector<__fp16, 8>"]* noalias align 16, [1024 x i128]* noalias readonly, [1024 x %"class.hls::vector<__fp16, 8>"]* noalias align 16, [1024 x i128]* noalias readonly, %struct.ctrl1_t* noalias, %struct.ctrl1_t* noalias readonly align 512, %struct.ctrl1_t* noalias, %struct.ctrl1_t* noalias readonly align 512, %struct.layer1_t* noalias, %struct.layer1_t* noalias readonly align 512, %struct.layer2_t* noalias, %struct.layer2_t* noalias readonly align 512, %struct.ctrl1_t* noalias, %struct.ctrl1_t* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a1024class.hls::vector<std::complex<__fp16>, 4>.269"([1024 x %"class.hls::vector<std::complex<__fp16>, 4>"]* align 16 %0, [1024 x i128]* %1)
  call fastcc void @"onebyonecpy_hls.p0a1024class.hls::vector<__fp16, 8>.279"([1024 x %"class.hls::vector<__fp16, 8>"]* align 16 %2, [1024 x i128]* %3)
  call fastcc void @"onebyonecpy_hls.p0a1024class.hls::vector<__fp16, 8>.279"([1024 x %"class.hls::vector<__fp16, 8>"]* align 16 %4, [1024 x i128]* %5)
  call fastcc void @onebyonecpy_hls.p0struct.ctrl1_t(%struct.ctrl1_t* %6, %struct.ctrl1_t* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0struct.ctrl1_t(%struct.ctrl1_t* %8, %struct.ctrl1_t* align 512 %9)
  call fastcc void @onebyonecpy_hls.p0struct.layer1_t(%struct.layer1_t* %10, %struct.layer1_t* align 512 %11)
  call fastcc void @onebyonecpy_hls.p0struct.layer2_t(%struct.layer2_t* %12, %struct.layer2_t* align 512 %13)
  call fastcc void @onebyonecpy_hls.p0struct.ctrl1_t(%struct.ctrl1_t* %14, %struct.ctrl1_t* align 512 %15)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a1024class.hls::vector<std::complex<__fp16>, 4>.269"([1024 x %"class.hls::vector<std::complex<__fp16>, 4>"]* noalias align 16, [1024 x i128]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1024 x %"class.hls::vector<std::complex<__fp16>, 4>"]* %0, null
  %3 = icmp eq [1024 x i128]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx18 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %5 = getelementptr [1024 x i128], [1024 x i128]* %1, i64 0, i64 %for.loop.idx18
  %6 = load i128, i128* %5, align 4
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx317 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %7 = mul nuw nsw i64 32, %for.loop.idx317
  %dst.addr5.014 = getelementptr [1024 x %"class.hls::vector<std::complex<__fp16>, 4>"], [1024 x %"class.hls::vector<std::complex<__fp16>, 4>"]* %0, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i64 %for.loop.idx317, i32 0
  %8 = zext i64 %7 to i128
  %9 = lshr i128 %6, %8
  %.partselect1 = trunc i128 %9 to i16
  %10 = call half @_llvm.fpga.unpack.none.f16.i16(i16 %.partselect1)
  store half %10, half* %dst.addr5.014, align 4
  %11 = add nuw nsw i64 %7, 16
  %dst.addr5.116 = getelementptr [1024 x %"class.hls::vector<std::complex<__fp16>, 4>"], [1024 x %"class.hls::vector<std::complex<__fp16>, 4>"]* %0, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i64 %for.loop.idx317, i32 1
  %12 = zext i64 %11 to i128
  %13 = lshr i128 %6, %12
  %.partselect = trunc i128 %13 to i16
  %14 = call half @_llvm.fpga.unpack.none.f16.i16(i16 %.partselect)
  store half %14, half* %dst.addr5.116, align 2
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx317, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 4
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx18, 1
  %exitcond19 = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond19, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal half @_llvm.fpga.unpack.none.f16.i16(i16 %A) #4 {
  %A.cast = bitcast i16 %A to half
  ret half %A.cast
}

; Function Attrs: alwaysinline nounwind readnone
define internal i16 @_llvm.fpga.pack.none.i16.f16(half %A) #4 {
  %A.cast = bitcast half %A to i16
  ret i16 %A.cast
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a1024class.hls::vector<__fp16, 8>"([1024 x i128]* noalias, [1024 x %"class.hls::vector<__fp16, 8>"]* noalias readonly align 16) unnamed_addr #2 {
entry:
  %2 = icmp eq [1024 x i128]* %0, null
  %3 = icmp eq [1024 x %"class.hls::vector<__fp16, 8>"]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx14 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %5 = getelementptr [1024 x i128], [1024 x i128]* %0, i64 0, i64 %for.loop.idx14
  %.promoted = load i128, i128* %5, align 2
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %.partset1 = phi i128 [ %.promoted, %for.loop ], [ %.partset, %for.loop2 ]
  %for.loop.idx313 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %6 = mul nuw nsw i64 16, %for.loop.idx313
  %src.addr612 = getelementptr [1024 x %"class.hls::vector<__fp16, 8>"], [1024 x %"class.hls::vector<__fp16, 8>"]* %1, i64 0, i64 %for.loop.idx14, i32 0, i32 0, i64 %for.loop.idx313
  %7 = load half, half* %src.addr612, align 2
  %8 = call i16 @_llvm.fpga.pack.none.i16.f16(half %7)
  %9 = zext i64 %6 to i128
  %10 = shl i128 65535, %9
  %11 = zext i16 %8 to i128
  %12 = shl i128 %11, %9
  %13 = xor i128 %10, -1
  %14 = and i128 %.partset1, %13
  %.partset = or i128 %14, %12
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx313, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 8
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  store i128 %.partset, i128* %5, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx14, 1
  %exitcond15 = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond15, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a1024class.hls::vector<__fp16, 8>.279"([1024 x %"class.hls::vector<__fp16, 8>"]* noalias align 16, [1024 x i128]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1024 x %"class.hls::vector<__fp16, 8>"]* %0, null
  %3 = icmp eq [1024 x i128]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx14 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %5 = getelementptr [1024 x i128], [1024 x i128]* %1, i64 0, i64 %for.loop.idx14
  %6 = load i128, i128* %5, align 2
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx313 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr511 = getelementptr [1024 x %"class.hls::vector<__fp16, 8>"], [1024 x %"class.hls::vector<__fp16, 8>"]* %0, i64 0, i64 %for.loop.idx14, i32 0, i32 0, i64 %for.loop.idx313
  %7 = mul nuw nsw i64 16, %for.loop.idx313
  %8 = zext i64 %7 to i128
  %9 = lshr i128 %6, %8
  %.partselect = trunc i128 %9 to i16
  %10 = call half @_llvm.fpga.unpack.none.f16.i16(i16 %.partselect)
  store half %10, half* %dst.addr511, align 2
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx313, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 8
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx14, 1
  %exitcond15 = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond15, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

declare void @apatb_IFFT_AP_hw(i128*, i128*, i128*, %struct.ctrl1_t*, %struct.ctrl1_t*, %struct.layer1_t*, %struct.layer2_t*, %struct.ctrl1_t*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([1024 x %"class.hls::vector<std::complex<__fp16>, 4>"]* noalias align 16, [1024 x i128]* noalias readonly, [1024 x %"class.hls::vector<__fp16, 8>"]* noalias align 16, [1024 x i128]* noalias readonly, [1024 x %"class.hls::vector<__fp16, 8>"]* noalias align 16, [1024 x i128]* noalias readonly, %struct.ctrl1_t* noalias, %struct.ctrl1_t* noalias readonly align 512, %struct.ctrl1_t* noalias, %struct.ctrl1_t* noalias readonly align 512, %struct.layer1_t* noalias, %struct.layer1_t* noalias readonly align 512, %struct.layer2_t* noalias, %struct.layer2_t* noalias readonly align 512, %struct.ctrl1_t* noalias, %struct.ctrl1_t* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a1024class.hls::vector<__fp16, 8>.279"([1024 x %"class.hls::vector<__fp16, 8>"]* align 16 %2, [1024 x i128]* %3)
  call fastcc void @"onebyonecpy_hls.p0a1024class.hls::vector<__fp16, 8>.279"([1024 x %"class.hls::vector<__fp16, 8>"]* align 16 %4, [1024 x i128]* %5)
  ret void
}

define void @IFFT_AP_hw_stub_wrapper(i128*, i128*, i128*, %struct.ctrl1_t*, %struct.ctrl1_t*, %struct.layer1_t*, %struct.layer2_t*, %struct.ctrl1_t*) #5 {
entry:
  %malloccall = tail call i8* @malloc(i64 16384)
  %8 = bitcast i8* %malloccall to [1024 x %"class.hls::vector<std::complex<__fp16>, 4>"]*
  %malloccall1 = tail call i8* @malloc(i64 16384)
  %9 = bitcast i8* %malloccall1 to [1024 x %"class.hls::vector<__fp16, 8>"]*
  %malloccall2 = tail call i8* @malloc(i64 16384)
  %10 = bitcast i8* %malloccall2 to [1024 x %"class.hls::vector<__fp16, 8>"]*
  %11 = bitcast i128* %0 to [1024 x i128]*
  %12 = bitcast i128* %1 to [1024 x i128]*
  %13 = bitcast i128* %2 to [1024 x i128]*
  call void @copy_out([1024 x %"class.hls::vector<std::complex<__fp16>, 4>"]* %8, [1024 x i128]* %11, [1024 x %"class.hls::vector<__fp16, 8>"]* %9, [1024 x i128]* %12, [1024 x %"class.hls::vector<__fp16, 8>"]* %10, [1024 x i128]* %13, %struct.ctrl1_t* null, %struct.ctrl1_t* %3, %struct.ctrl1_t* null, %struct.ctrl1_t* %4, %struct.layer1_t* null, %struct.layer1_t* %5, %struct.layer2_t* null, %struct.layer2_t* %6, %struct.ctrl1_t* null, %struct.ctrl1_t* %7)
  %14 = bitcast [1024 x %"class.hls::vector<std::complex<__fp16>, 4>"]* %8 to %"class.hls::vector<std::complex<__fp16>, 4>"*
  %15 = bitcast [1024 x %"class.hls::vector<__fp16, 8>"]* %9 to %"class.hls::vector<__fp16, 8>"*
  %16 = bitcast [1024 x %"class.hls::vector<__fp16, 8>"]* %10 to %"class.hls::vector<__fp16, 8>"*
  call void @IFFT_AP_hw_stub(%"class.hls::vector<std::complex<__fp16>, 4>"* %14, %"class.hls::vector<__fp16, 8>"* %15, %"class.hls::vector<__fp16, 8>"* %16, %struct.ctrl1_t* %3, %struct.ctrl1_t* %4, %struct.layer1_t* %5, %struct.layer2_t* %6, %struct.ctrl1_t* %7)
  call void @copy_in([1024 x %"class.hls::vector<std::complex<__fp16>, 4>"]* %8, [1024 x i128]* %11, [1024 x %"class.hls::vector<__fp16, 8>"]* %9, [1024 x i128]* %12, [1024 x %"class.hls::vector<__fp16, 8>"]* %10, [1024 x i128]* %13, %struct.ctrl1_t* null, %struct.ctrl1_t* %3, %struct.ctrl1_t* null, %struct.ctrl1_t* %4, %struct.layer1_t* null, %struct.layer1_t* %5, %struct.layer2_t* null, %struct.layer2_t* %6, %struct.ctrl1_t* null, %struct.ctrl1_t* %7)
  ret void
}

declare void @IFFT_AP_hw_stub(%"class.hls::vector<std::complex<__fp16>, 4>"*, %"class.hls::vector<__fp16, 8>"*, %"class.hls::vector<__fp16, 8>"*, %struct.ctrl1_t*, %struct.ctrl1_t*, %struct.layer1_t*, %struct.layer2_t*, %struct.ctrl1_t*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { alwaysinline nounwind readnone }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
