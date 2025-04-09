# RKNN Model Zoo

## Description
RKNN Model Zoo 是基于 RKNPU SDK 工具链开发的，并提供了当前主流算法的部署示例。其中包括 导出 RKNN 模型 的过程，以及使用 Python API 和 C API 对 RKNN 模型进行推理的方法。
- Support `RK3562`, `RK3566`, `RK3568`, `RK3588` ,  platforms. 

## Dependency library installation

`RKNN 模型库` 依赖于 `RKNN-Toolkit2` 进行模型转换。在编译 Android 示例时需要 Android 编译工具链，而在编译 Linux 示例时则需要 Linux 编译工具链。rm Android 编译工具链

Linux交叉编译工具链 `gcc-linaro-6.3.1(aarch64)/gcc-arm-8.3(armhf)/armhf-uclibcgnueabihf(armhf for RV1106/RV1103 series)`.

/opt/gcc-linaro-6.3.1-2017.05-x86_64_aarch64-linux-gnu
/opt/arm-rockchip830-linux-uclibcgnueabihf


## Compile Demo

For Linux develop board:

```sh
./build-linux.sh -t <target> -a <arch> -d <build_demo_name> [-b <build_type>] [-m]
    -t : target (rk356x/rk3588/rk3576/rv1106/rk1808/rv1126)
    -a : arch (aarch64/armhf)
    -d : demo name
    -b : build_type(Debug/Release)
    -m : enable address sanitizer, build_type need set to Debug
Note: 'rk356x' represents rk3562/rk3566/rk3568, 'rv1106' represents rv1103/rv1106, 'rv1126' represents rv1109/rv1126

# Here is an example for compiling yolov5 demo for 64-bit Linux RK3566.
./build-linux.sh -t rk356x -a aarch64 -d yolov5
```

## Environment dependencies

All demos in `RKNN Model Zoo` are verified based on the latest RKNPU SDK. If using a lower version for verification, the inference performance and inference results may be wrong.



## RKNPU Resource

- RKNPU2 SDK: https://github.com/airockchip/rknn-toolkit2
- RKNPU1 SDK: https://github.com/airockchip/rknn-toolkit



## License

[Apache License 2.0](./LICENSE)

