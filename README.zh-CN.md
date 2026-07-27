# QML Qooey
<p><img src="https://img.shields.io/github/v/tag/smr76/qooey?sort=semver&label=version&labelColor=0bd&color=07b" alt="version tag">
<img src="https://img.shields.io/github/license/smr76/qooey?color=36b245" alt="license">
<a href="https://www.blockchain.com/bch/address/bitcoincash:qrnwtxsk79kv6mt2hv8zdxy3phkqpkmcxgjzqktwa3">
<img src="https://img.shields.io/badge/BCH-Donate-f0992e?logo=BitcoinCash&logoColor=f0992e" alt="BCH donate"></a></p>

> **警告**<br>
> 本组件似乎与 `Qt6.*` ***不兼容***，我正在努力尽快解决此问题。
> <br>&nbsp;

**Qooey** 是一款 QtQuick2/QML 主题。<br><br>
*Qooey 是一种基于 gooey 效果的 QML 样式。*<br>
**Qooey** 这个术语是由 **Gooey** 与 **QML** 组合而成的。<br>
通过结合 Web 开发人员在 **CSS** 样式中常用的 *模糊 (blur)* 和 *对比度 (contrast)* 效果，可以营造出一种液态风格。<br>
所有组件均由基础组件构建，使设计您自己的液态组件变得简单。<br><br>
*如果您喜欢这些组件，请考虑给个 star :star2:。*

<!-- ## Preview -->
<!-- <div align="center">&nbsp;
<img src="https://img.shields.io/badge/light-blue-49aaff">
<img src="https://img.shields.io/badge/dark-green-08d7a1"><br>
<img src="extra/preview/preview-1.webp" width="45%">
<img src="extra/preview/preview-2.webp" width="45%">
</div> -->

## 如何使用
> **警告**<br>
> 本组件仅在 **Qt 5.15.2 版本**、*Windows 操作系统*、*3840x2160 分辨率* 且 *缩放因子为 250%* 的环境下经过测试；***使用本组件不提供任何保证***。
> <br>&nbsp;

### 使用方法

+ 首先克隆仓库。
    ```bash
    git clone "https://github.com/0smr/qooey.git"
    ```
+ 然后将 `qooey` 添加到您的 makefile 中。
    * **QMake**: <sub>[示例-1](example/example-1/example-1.pro#L7)</sub>
        ```make
        include("path/to/Qooey.pri")
        ```
    * **CMake**: <sub>[示例-2](example/example-2/CMakeLists.txt#L30..L32)</sub>
        ```cmake
        add_subdirectory(path/to/Qooey/)
        target_link_libraries(${target-name} qooey)
        ```
+ 将 `qrc:/` 添加到引擎的导入路径中。
    <sub>[示例-1](example/example-1/main.cpp#L12)</sub>
    ```cpp
    engine.addImportPath("qrc:/");
    ```
+ 导入 `Qooey` 模块。
    <sub>[示例-1](example/example-1/main.qml#L6)</sub>
    ```qml
    import Qooey 1.0
    ```

如果您感到困惑，请参考 [示例-1](example/example-1/) 以更清晰地了解操作步骤。

## 组件

<details open>
<summary> 已实现</summary>

- [x] Button (按钮)
- [x] Radio Button (单选按钮)
- [x] CheckBox (复选框)
- [x] Slider (滑块)
- [x] ProgressBar (进度条)
- [x] RadioButton (单选按钮)
- [x] Switch (开关)
- [x] RangeSlider (范围滑块)
- [x] SpinBox (数值输入框)
- [x] Tumbler (滚轮选择器)
- [x] Dial (旋钮)
- [x] BusyIndicator (忙碌指示器)
- [ ] TextArea <i><sub>(开发中)</sub></i>
- [ ] TextField <i><sub>(开发中)</sub></i>
- [ ] ComboBox <i><sub>(开发中)</sub></i>

</details>

## 待办事项
- [ ] 修复与 `Qt6.*` 的兼容性问题。
- [ ] 添加兼容 SPIR-V 的着色器。
- [ ] 重构新 UI。

## 问题反馈

如果您遇到任何问题，请在 [问题页面](https://github.com/SMR76/qooey/issues) 提交 issue。

## 文档

可以在 `docs` 目录中找到 [文档](docs/README.md)。
