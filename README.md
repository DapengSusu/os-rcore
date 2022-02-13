# os-rcore

> 基于 清华 Rust 开发 RISCV 平台内核 rCore

> 参考 https://rcore-os.github.io/rCore-Tutorial-Book-v3/

### chapter 1: 应用程序与基本执行环境
+ 移除标准库 std 依赖
+ 了解 qemu 模拟器；了解程序内存布局和编译链接流程
+ 调整内核内存布局；手动加载内核可执行文件
+ 为内核支持函数调用
+ 基于 SBI 服务完成输出和关机

### ...

## build & run
+ for linux (ubuntu 18.04)

``` bash
cargo b --release
./run_os.sh
```
