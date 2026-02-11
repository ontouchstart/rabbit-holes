; ModuleID = 'partition-test.c'
source_filename = "partition-test.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx26.0.0"

@__const.test.str = private unnamed_addr constant [10 x i8] c"PARTITION\00", align 1
@.str = private unnamed_addr constant [17 x i8] c"f=%d\0ABefore:\09%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"After:\09%s\0A\00", align 1
@__const.main.str = private unnamed_addr constant [10 x i8] c"PARTITION\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [10 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 @__const.test.str, i64 10, i1 false)
  store i32 0, ptr %4, align 4
  %8 = getelementptr inbounds [10 x i8], ptr %3, i64 0, i64 0
  %9 = call i64 @strlen(ptr noundef %8) #4
  %10 = sub i64 %9, 1
  %11 = trunc i64 %10 to i32
  store i32 %11, ptr %5, align 4
  %12 = load i32, ptr %4, align 4
  store i32 %12, ptr %6, align 4
  %13 = load i32, ptr %5, align 4
  store i32 %13, ptr %7, align 4
  %14 = load i32, ptr %2, align 4
  %15 = getelementptr inbounds [10 x i8], ptr %3, i64 0, i64 0
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %14, ptr noundef %15)
  %17 = getelementptr inbounds [10 x i8], ptr %3, i64 0, i64 0
  %18 = load i32, ptr %4, align 4
  %19 = load i32, ptr %5, align 4
  %20 = load i32, ptr %2, align 4
  call void @partition(ptr noundef %17, i32 noundef %18, i32 noundef %19, i32 noundef %20, ptr noundef %6, ptr noundef %7)
  %21 = getelementptr inbounds [10 x i8], ptr %3, i64 0, i64 0
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %21)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #3

declare void @partition(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x i8], align 1
  %3 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 @__const.main.str, i64 10, i1 false)
  store i32 0, ptr %3, align 4
  br label %4

4:                                                ; preds = %12, %0
  %5 = load i32, ptr %3, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [10 x i8], ptr %2, i64 0, i64 0
  %8 = call i64 @strlen(ptr noundef %7) #4
  %9 = icmp ult i64 %6, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  %11 = load i32, ptr %3, align 4
  call void @test(i32 noundef %11)
  br label %12

12:                                               ; preds = %10
  %13 = load i32, ptr %3, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr %3, align 4
  br label %4, !llvm.loop !6

15:                                               ; preds = %4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
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
