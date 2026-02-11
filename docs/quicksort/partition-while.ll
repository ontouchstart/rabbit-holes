; ModuleID = 'partition-while.c'
source_filename = "partition-while.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx26.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @partition(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  store i32 %1, ptr %8, align 4
  store i32 %2, ptr %9, align 4
  store i32 %3, ptr %10, align 4
  store ptr %4, ptr %11, align 8
  store ptr %5, ptr %12, align 8
  %16 = load ptr, ptr %7, align 8
  %17 = load i32, ptr %10, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %16, i64 %18
  %20 = load i8, ptr %19, align 1
  store i8 %20, ptr %13, align 1
  %21 = load i32, ptr %8, align 4
  store i32 %21, ptr %14, align 4
  %22 = load i32, ptr %9, align 4
  store i32 %22, ptr %15, align 4
  br label %23

23:                                               ; preds = %6, %112
  br label %24

24:                                               ; preds = %40, %23
  %25 = load i32, ptr %14, align 4
  %26 = load i32, ptr %9, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load ptr, ptr %7, align 8
  %30 = load i32, ptr %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, ptr %29, i64 %31
  %33 = load i8, ptr %32, align 1
  %34 = sext i8 %33 to i32
  %35 = load i8, ptr %13, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp sle i32 %34, %36
  br label %38

38:                                               ; preds = %28, %24
  %39 = phi i1 [ false, %24 ], [ %37, %28 ]
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = load i32, ptr %14, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %14, align 4
  br label %24, !llvm.loop !6

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %60, %43
  %45 = load i32, ptr %15, align 4
  %46 = load i32, ptr %8, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load ptr, ptr %7, align 8
  %50 = load i32, ptr %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %49, i64 %51
  %53 = load i8, ptr %52, align 1
  %54 = sext i8 %53 to i32
  %55 = load i8, ptr %13, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp sge i32 %54, %56
  br label %58

58:                                               ; preds = %48, %44
  %59 = phi i1 [ false, %44 ], [ %57, %48 ]
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = load i32, ptr %15, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, ptr %15, align 4
  br label %44, !llvm.loop !8

63:                                               ; preds = %58
  %64 = load i32, ptr %14, align 4
  %65 = load i32, ptr %15, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = load ptr, ptr %7, align 8
  %69 = load i32, ptr %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, ptr %68, i64 %70
  %72 = load ptr, ptr %7, align 8
  %73 = load i32, ptr %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, ptr %72, i64 %74
  call void @exchange(ptr noundef %71, ptr noundef %75)
  %76 = load i32, ptr %14, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, ptr %14, align 4
  %78 = load i32, ptr %15, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, ptr %15, align 4
  br label %112

80:                                               ; preds = %63
  %81 = load i32, ptr %14, align 4
  %82 = load i32, ptr %10, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %80
  %85 = load ptr, ptr %7, align 8
  %86 = load i32, ptr %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, ptr %85, i64 %87
  %89 = load ptr, ptr %7, align 8
  %90 = load i32, ptr %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, ptr %89, i64 %91
  call void @exchange(ptr noundef %88, ptr noundef %92)
  %93 = load i32, ptr %14, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, ptr %14, align 4
  br label %111

95:                                               ; preds = %80
  %96 = load i32, ptr %10, align 4
  %97 = load i32, ptr %15, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %95
  %100 = load ptr, ptr %7, align 8
  %101 = load i32, ptr %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, ptr %100, i64 %102
  %104 = load ptr, ptr %7, align 8
  %105 = load i32, ptr %15, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, ptr %104, i64 %106
  call void @exchange(ptr noundef %103, ptr noundef %107)
  %108 = load i32, ptr %15, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, ptr %15, align 4
  br label %110

110:                                              ; preds = %99, %95
  br label %111

111:                                              ; preds = %110, %84
  br label %113

112:                                              ; preds = %67
  br label %23

113:                                              ; preds = %111
  %114 = load i32, ptr %14, align 4
  %115 = load ptr, ptr %11, align 8
  store i32 %114, ptr %115, align 4
  %116 = load i32, ptr %15, align 4
  %117 = load ptr, ptr %12, align 8
  store i32 %116, ptr %117, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @exchange(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load i8, ptr %6, align 1
  store i8 %7, ptr %5, align 1
  %8 = load ptr, ptr %4, align 8
  %9 = load i8, ptr %8, align 1
  %10 = load ptr, ptr %3, align 8
  store i8 %9, ptr %10, align 1
  %11 = load i8, ptr %5, align 1
  %12 = load ptr, ptr %4, align 8
  store i8 %11, ptr %12, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Apple clang version 17.0.0 (clang-1700.4.4.1)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
