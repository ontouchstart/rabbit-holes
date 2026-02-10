; ModuleID = 'quicksort.c'
source_filename = "quicksort.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx26.0.0"

@__const.main.str = private unnamed_addr constant [10 x i8] c"PARTITION\00", align 1
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @exchange(ptr noundef %0, ptr noundef %1) #0 {
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

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @partition(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store ptr %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  %15 = load i32, ptr %7, align 4
  %16 = call i32 @rand()
  %17 = load i32, ptr %8, align 4
  %18 = load i32, ptr %7, align 4
  %19 = sub nsw i32 %17, %18
  %20 = add nsw i32 %19, 1
  %21 = srem i32 %16, %20
  %22 = add nsw i32 %15, %21
  store i32 %22, ptr %11, align 4
  %23 = load ptr, ptr %6, align 8
  %24 = load i32, ptr %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, ptr %23, i64 %25
  %27 = load i8, ptr %26, align 1
  store i8 %27, ptr %12, align 1
  %28 = load i32, ptr %7, align 4
  store i32 %28, ptr %13, align 4
  %29 = load i32, ptr %8, align 4
  store i32 %29, ptr %14, align 4
  br label %30

30:                                               ; preds = %78, %5
  br label %31

31:                                               ; preds = %47, %30
  %32 = load i32, ptr %13, align 4
  %33 = load i32, ptr %8, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load i8, ptr %12, align 1
  %37 = sext i8 %36 to i32
  %38 = load ptr, ptr %6, align 8
  %39 = load i32, ptr %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, ptr %38, i64 %40
  %42 = load i8, ptr %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp slt i32 %37, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %52

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46
  %48 = load i32, ptr %13, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %13, align 4
  br label %31, !llvm.loop !6

50:                                               ; preds = %31
  %51 = load i32, ptr %8, align 4
  store i32 %51, ptr %13, align 4
  br label %52

52:                                               ; preds = %50, %45
  br label %53

53:                                               ; preds = %69, %52
  %54 = load i32, ptr %14, align 4
  %55 = load i32, ptr %7, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %53
  %58 = load ptr, ptr %6, align 8
  %59 = load i32, ptr %14, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %58, i64 %60
  %62 = load i8, ptr %61, align 1
  %63 = sext i8 %62 to i32
  %64 = load i8, ptr %12, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %74

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %68
  %70 = load i32, ptr %14, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, ptr %14, align 4
  br label %53, !llvm.loop !8

72:                                               ; preds = %53
  %73 = load i32, ptr %7, align 4
  store i32 %73, ptr %14, align 4
  br label %74

74:                                               ; preds = %72, %67
  %75 = load i32, ptr %13, align 4
  %76 = load i32, ptr %14, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %74
  %79 = load ptr, ptr %6, align 8
  %80 = load i32, ptr %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, ptr %79, i64 %81
  %83 = load ptr, ptr %6, align 8
  %84 = load i32, ptr %14, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, ptr %83, i64 %85
  call void @exchange(ptr noundef %82, ptr noundef %86)
  %87 = load i32, ptr %13, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, ptr %13, align 4
  %89 = load i32, ptr %14, align 4
  %90 = sub nsw i32 %89, 1
  store i32 %90, ptr %14, align 4
  br label %30

91:                                               ; preds = %74
  %92 = load i32, ptr %13, align 4
  %93 = load i32, ptr %11, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %91
  %96 = load ptr, ptr %6, align 8
  %97 = load i32, ptr %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, ptr %96, i64 %98
  %100 = load ptr, ptr %6, align 8
  %101 = load i32, ptr %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, ptr %100, i64 %102
  call void @exchange(ptr noundef %99, ptr noundef %103)
  %104 = load i32, ptr %13, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, ptr %13, align 4
  br label %122

106:                                              ; preds = %91
  %107 = load i32, ptr %11, align 4
  %108 = load i32, ptr %14, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %106
  %111 = load ptr, ptr %6, align 8
  %112 = load i32, ptr %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, ptr %111, i64 %113
  %115 = load ptr, ptr %6, align 8
  %116 = load i32, ptr %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, ptr %115, i64 %117
  call void @exchange(ptr noundef %114, ptr noundef %118)
  %119 = load i32, ptr %14, align 4
  %120 = sub nsw i32 %119, 1
  store i32 %120, ptr %14, align 4
  br label %121

121:                                              ; preds = %110, %106
  br label %122

122:                                              ; preds = %121, %95
  br label %123

123:                                              ; preds = %122
  %124 = load i32, ptr %13, align 4
  %125 = load ptr, ptr %9, align 8
  store i32 %124, ptr %125, align 4
  %126 = load i32, ptr %14, align 4
  %127 = load ptr, ptr %10, align 8
  store i32 %126, ptr %127, align 4
  ret void
}

declare i32 @rand() #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @quicksort(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %9 = load i32, ptr %5, align 4
  %10 = load i32, ptr %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load ptr, ptr %4, align 8
  %14 = load i32, ptr %5, align 4
  %15 = load i32, ptr %6, align 4
  call void @partition(ptr noundef %13, i32 noundef %14, i32 noundef %15, ptr noundef %7, ptr noundef %8)
  %16 = load ptr, ptr %4, align 8
  %17 = load i32, ptr %5, align 4
  %18 = load i32, ptr %8, align 4
  call void @quicksort(ptr noundef %16, i32 noundef %17, i32 noundef %18)
  %19 = load ptr, ptr %4, align 8
  %20 = load i32, ptr %7, align 4
  %21 = load i32, ptr %6, align 4
  call void @quicksort(ptr noundef %19, i32 noundef %20, i32 noundef %21)
  br label %22

22:                                               ; preds = %12, %3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x i8], align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 @__const.main.str, i64 10, i1 false)
  %6 = getelementptr inbounds [10 x i8], ptr %2, i64 0, i64 0
  %7 = call i64 @strlen(ptr noundef %6) #4
  %8 = trunc i64 %7 to i32
  store i32 %8, ptr %3, align 4
  store i32 0, ptr %4, align 4
  %9 = load i32, ptr %3, align 4
  %10 = sub nsw i32 %9, 1
  store i32 %10, ptr %5, align 4
  %11 = getelementptr inbounds [10 x i8], ptr %2, i64 0, i64 0
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %11)
  %13 = getelementptr inbounds [10 x i8], ptr %2, i64 0, i64 0
  %14 = load i32, ptr %3, align 4
  %15 = sub nsw i32 %14, 1
  call void @partition(ptr noundef %13, i32 noundef 0, i32 noundef %15, ptr noundef %4, ptr noundef %5)
  %16 = getelementptr inbounds [10 x i8], ptr %2, i64 0, i64 0
  %17 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %16)
  %18 = getelementptr inbounds [10 x i8], ptr %2, i64 0, i64 0
  %19 = load i32, ptr %3, align 4
  %20 = sub nsw i32 %19, 1
  call void @quicksort(ptr noundef %18, i32 noundef 0, i32 noundef %20)
  %21 = getelementptr inbounds [10 x i8], ptr %2, i64 0, i64 0
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %21)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #3

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind }

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
