; ModuleID = 'partition.c'
source_filename = "partition.c"
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

23:                                               ; preds = %71, %6
  br label %24

24:                                               ; preds = %40, %23
  %25 = load i32, ptr %14, align 4
  %26 = load i32, ptr %9, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = load i8, ptr %13, align 1
  %30 = sext i8 %29 to i32
  %31 = load ptr, ptr %7, align 8
  %32 = load i32, ptr %14, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, ptr %31, i64 %33
  %35 = load i8, ptr %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp slt i32 %30, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %45

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39
  %41 = load i32, ptr %14, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %14, align 4
  br label %24, !llvm.loop !6

43:                                               ; preds = %24
  %44 = load i32, ptr %9, align 4
  store i32 %44, ptr %14, align 4
  br label %45

45:                                               ; preds = %43, %38
  br label %46

46:                                               ; preds = %62, %45
  %47 = load i32, ptr %15, align 4
  %48 = load i32, ptr %8, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = load ptr, ptr %7, align 8
  %52 = load i32, ptr %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, ptr %51, i64 %53
  %55 = load i8, ptr %54, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8, ptr %13, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %67

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61
  %63 = load i32, ptr %15, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, ptr %15, align 4
  br label %46, !llvm.loop !8

65:                                               ; preds = %46
  %66 = load i32, ptr %8, align 4
  store i32 %66, ptr %15, align 4
  br label %67

67:                                               ; preds = %65, %60
  %68 = load i32, ptr %14, align 4
  %69 = load i32, ptr %15, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %67
  %72 = load ptr, ptr %7, align 8
  %73 = load i32, ptr %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, ptr %72, i64 %74
  %76 = load ptr, ptr %7, align 8
  %77 = load i32, ptr %15, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, ptr %76, i64 %78
  call void @exchange(ptr noundef %75, ptr noundef %79)
  %80 = load i32, ptr %14, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, ptr %14, align 4
  %82 = load i32, ptr %15, align 4
  %83 = sub nsw i32 %82, 1
  store i32 %83, ptr %15, align 4
  br label %23

84:                                               ; preds = %67
  %85 = load i32, ptr %14, align 4
  %86 = load i32, ptr %10, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %84
  %89 = load ptr, ptr %7, align 8
  %90 = load i32, ptr %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, ptr %89, i64 %91
  %93 = load ptr, ptr %7, align 8
  %94 = load i32, ptr %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, ptr %93, i64 %95
  call void @exchange(ptr noundef %92, ptr noundef %96)
  %97 = load i32, ptr %14, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, ptr %14, align 4
  br label %115

99:                                               ; preds = %84
  %100 = load i32, ptr %10, align 4
  %101 = load i32, ptr %15, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %99
  %104 = load ptr, ptr %7, align 8
  %105 = load i32, ptr %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, ptr %104, i64 %106
  %108 = load ptr, ptr %7, align 8
  %109 = load i32, ptr %15, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, ptr %108, i64 %110
  call void @exchange(ptr noundef %107, ptr noundef %111)
  %112 = load i32, ptr %15, align 4
  %113 = sub nsw i32 %112, 1
  store i32 %113, ptr %15, align 4
  br label %114

114:                                              ; preds = %103, %99
  br label %115

115:                                              ; preds = %114, %88
  br label %116

116:                                              ; preds = %115
  %117 = load i32, ptr %14, align 4
  %118 = load ptr, ptr %11, align 8
  store i32 %117, ptr %118, align 4
  %119 = load i32, ptr %15, align 4
  %120 = load ptr, ptr %12, align 8
  store i32 %119, ptr %120, align 4
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
