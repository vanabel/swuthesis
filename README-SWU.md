# 西南大学本科毕业论文 LaTeX 模板

本项目基于 [ustcthesis](https://github.com/ustctug/ustcthesis) 修改，适配西南大学本科毕业论文规范。

## 快速开始

### 编译论文

```bash
# 在项目根目录
make              # 编译生成 main.pdf
make clean        # 清理临时文件
make cleanall     # 清理所有编译文件
make version      # 查看当前版本号
make zip          # 生成发布包（zip 文件）
make release      # 完整发布流程（编译文档 + 生成 zip）
```

或者直接使用 `latexmk`：

```bash
latexmk -xelatex main.tex
```

### 使用说明

1. **编辑论文信息**：修改 `swuthesis/swusetup.tex` 填写个人信息
2. **编辑章节内容**：修改 `swuthesis/chapters/` 目录下的各个 `.tex` 文件
3. **添加参考文献**：在 `swuthesis/bib/swu.bib` 中添加文献条目
4. **编译生成 PDF**：运行 `make` 或直接使用 `xelatex`

## 模板特性

- 符合西南大学本科毕业论文（设计）规范化要求
- 页边距：A4 纸，四边 2.5cm
- 页码：阿拉伯数字，居中，无页眉
- 行距：正文部分 1.5 倍行距
- 字体：中文宋体，英文 Times New Roman
- 参考文献：支持本科生著录格式

## 目录结构

```
.
├── main.tex                  # 主文档（西南大学模板）
├── swuthesis/               # 西南大学模板文件
│   ├── swuthesis.cls         # 模板类文件
│   ├── swusetup.tex          # 配置文件和宏包
│   ├── main.tex              # 模板示例文档
│   ├── chapters/             # 章节文件
│   │   ├── abstract.tex      # 摘要
│   │   ├── notation.tex      # 符号说明
│   │   ├── intro.tex         # 导论
│   │   ├── floats.tex        # 图表示例
│   │   ├── math.tex          # 数学公式
│   │   ├── citations.tex    # 引用示例
│   │   ├── complementary.tex # 附录
│   │   ├── acknowledgements.tex  # 致谢
│   │   └── publications.tex  # 发表成果
│   ├── figures/             # 图片资源
│   ├── bib/                 # 参考文献数据库
│   └── vendor/              # 参考文献样式
├── Makefile                  # 编译脚本
└── README-SWU.md           # 本文件

```

## 编译流程

完整编译需要运行三次：

```bash
xelatex main.tex    # 第一次编译，生成 .aux 文件
bibtex main         # 处理参考文献
xelatex main.tex    # 第二次编译，插入参考文献
xelatex main.tex    # 第三次编译，更新交叉引用
```

使用 `latexmk` 或 `make` 会自动完成以上步骤。

## 版本管理

### 查看版本号

```bash
make version
```

这会显示当前版本号和版本来源：
```
当前版本号: 3.3.4
来源: swuthesis.cls
```

### 版本号来源

版本号按以下优先级获取：
1. **swuthesis.cls 文件**（优先级最高）- 从模板类文件中读取版本号定义
2. **Git 标签** - 如果 cls 文件中没有定义，则使用最新的 git tag
3. **默认值 "dev"** - 如果前两者都不可用

### 修改版本号

在 `swuthesis/swuthesis.cls` 文件中修改：
```latex
\newcommand\swuthesisversion{3.3.4}  % 修改为你想要的版本号
```

Makefile 会自动从该文件读取版本号用于生成发布包。

## 论文要求

根据西南大学本科毕业论文（设计）规范化要求，论文应包含以下内容：

1. 封面和目录
2. 中文标题、作者姓名、单位
3. 中文摘要（300字以内）及关键词（3-5个）
4. 英文标题、作者姓名、单位
5. 英文摘要（250个实词）及关键词
6. 第1章 导论
7. 第2章 正文
8. 第3章 结论
9. 主要参考文献
10. 致谢
11. 附录

## 技术要求

- 文字：通顺、流畅、思路清晰
- 单位：一律使用 SI 制
- 图表：图面整洁，按国家标准绘制
- 目录：层次清晰，到三级标题，使用阿拉伯数字
- 页码：目录中从中文摘要开始至全文结束
- 字体：中文全角，参考文献可半角

## 注意事项

1. 模板要求 TeX Live、MacTeX、MiKTeX 不低于 2017 年的发行版
2. **不支持** CTeX 套装，请使用 XeLaTeX 编译
3. 使用前请阅读 `swuthesis/README.md` 了解详细使用方法
4. 如有问题请参考原模板 [ustcthesis](https://github.com/ustctug/ustcthesis) 的文档

## 许可

本项目基于 [ustcthesis](https://github.com/ustctug/ustcthesis) 修改，遵循相同的许可证。

