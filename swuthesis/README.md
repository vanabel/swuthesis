# 西南大学学位论文 LaTeX 模板

本项目是西南大学学位论文 LaTeX 模板 swuthesis，基于 [ustcthesis](https://github.com/ustctug/ustcthesis) 修改，适配西南大学本科毕业论文规范。

## 快速开始

### 从项目根目录编译（推荐）

```bash
# 在项目根目录
make              # 编译生成 main.pdf
make clean        # 清理临时文件
make cleanall     # 清理所有编译文件
make version      # 查看当前版本号
make zip          # 生成发布包
make release      # 完整发布流程
```

### 版本号

使用 `make version` 查看当前版本号。版本号从 `swuthesis.cls` 文件中自动读取，优先级：
1. `swuthesis.cls` 中的版本号定义
2. Git 标签（如果 cls 中没有定义）
3. 默认值 "dev"

### 从 swuthesis 子目录编译

```bash
cd swuthesis
make              # 编译模板示例文档
make doc          # 编译模板使用文档
make clean        # 清理临时文件
```

## 使用说明

1. **编辑个人信息**：修改 `swusetup.tex` 填写论文信息
2. **编辑章节内容**：修改 `chapters/` 目录下的 `.tex` 文件
3. **添加参考文献**：在 `bib/swu.bib` 中添加文献条目
4. **编译生成 PDF**：使用上面的编译命令

## 模板特性

- ✅ 符合西南大学本科毕业论文规范化要求
- ✅ 页边距：A4 纸，四边 2.5cm
- ✅ 页码：阿拉伯数字，居中，无页眉
- ✅ 行距：正文部分 1.5 倍行距
- ✅ 字体：中文宋体，英文 Times New Roman
- ✅ 参考文献：支持本科生著录格式
- ✅ 支持中文摘要、英文摘要、符号说明、致谢等章节

## 技术要求

- 本模板要求 TeX Live、MacTeX、MiKTeX 不低于 2017 年的发行版
- **不支持** CTeX 套装，请使用 XeLaTeX 编译
- 使用前请仔细阅读 `swuthesis-doc.pdf` 了解详细使用方法

## 反馈问题

如果发现模板有问题，请按照以下步骤操作：

1. 阅读学校的标准，判断是否符合学校的要求；
2. 将 TeX 发行版和宏包升级到最新版本；
3. 在 GitHub Issues 中搜索该问题的关键词；
4. 提出新 issue，并附上相关源码或截图

如果导师或者院系在格式上有额外的要求，请将相关要求告知作者。
