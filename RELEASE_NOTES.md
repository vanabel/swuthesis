# 发布说明 (Release Notes)

## v3.3.4 - 西南大学本科毕业论文模板 (2024-10-29)

### 🎉 首次发布

本版本是西南大学本科毕业论文 LaTeX 模板的首次正式发布，基于 [ustcthesis](https://github.com/ustctug/ustcthesis) 修改，完全适配西南大学本科毕业论文（设计）规范化要求。

### ✨ 主要特性

#### 📝 符合西南大学规范
- ✅ **页边距设置**：A4 纸，四边 2.5cm（符合规范要求）
- ✅ **页码格式**：阿拉伯数字，居中，无页眉（符合规范要求）
- ✅ **行距设置**：正文部分 1.5 倍行距
- ✅ **字体规范**：中文宋体，英文 Times New Roman
- ✅ **参考文献**：支持本科生著录格式 (`swuthesis-bachelor`)

#### 🎨 模板结构
- 完整的章节结构支持（导论、正文、结论）
- 中英文摘要格式（中文摘要 300 字以内，英文摘要 250 个实词）
- 符号说明、致谢、附录等章节
- 专业的封面和扉页格式

#### 🛠️ 开发工具
- **版本管理**：从 `swuthesis.cls` 自动读取版本号
- **发布功能**：一键生成发布包 (`make zip` / `make release`)
- **编译支持**：集成 `latexmk` 和 `Makefile` 支持

### 📦 新增功能

#### Makefile 命令
- `make version` - 查看当前版本号和来源
- `make zip` - 生成发布用的 zip 文件
- `make release` - 完整发布流程（编译文档 + 生成 zip）
- `make swudoc` - 编译模板使用文档

#### 版本号管理
- 自动从 `swuthesis.cls` 读取版本号
- 支持从 Git 标签获取版本号（备用）
- 版本号用于自动命名发布包

### 📄 文件结构

```
swuthesis/
├── swuthesis.cls          # 模板类文件
├── swusetup.tex          # 配置文件和宏包
├── main.tex              # 示例文档
├── swuthesis-doc.pdf    # 使用说明文档
├── chapters/            # 示例章节
│   ├── abstract.tex     # 摘要
│   ├── notation.tex     # 符号说明
│   ├── intro.tex        # 导论
│   ├── floats.tex       # 图表示例
│   ├── math.tex         # 数学公式
│   ├── citations.tex     # 引用示例
│   ├── complementary.tex # 附录
│   ├── acknowledgements.tex  # 致谢
│   └── publications.tex  # 发表成果
├── figures/             # 图片资源
├── bib/                 # 参考文献数据库
├── vendor/              # 参考文献样式文件
├── resources/           # 规范文档
├── Makefile             # 编译脚本
├── latexmkrc            # latexmk 配置
└── README.md            # 使用说明
```

### 🔧 技术改进

- **页面设置**：配置为 A4 纸，四边 2.5cm 页边距
- **页眉页脚**：移除所有页眉，仅保留居中页码
- **行距控制**：正文采用 1.5 倍行距（`\onehalfspacing`）
- **参考文献样式**：默认使用本科生著录格式

### 📚 文档更新

- ✅ 添加了详细的 `README-SWU.md` 使用说明
- ✅ 添加了 `RELEASE.md` 发布指南
- ✅ 更新了 `swuthesis/README.md` 快速开始指南
- ✅ 添加版本号管理说明

### 🐛 修复

- 修复了示例 PDF 文件被 `.gitignore` 忽略的问题
- 修复了分支结构，统一到 `main` 分支

### 📦 安装和使用

#### 下载
- **GitHub Releases**：[下载最新版本](https://github.com/vanabel/swuthesis/releases/latest)
- **直接克隆**：`git clone https://github.com/vanabel/swuthesis.git`

#### 快速开始

```bash
# 编译论文
make

# 查看版本号
make version

# 生成发布包
make zip

# 完整发布流程
make release
```

#### 使用要求
- TeX Live、MacTeX、MiKTeX 不低于 2017 年版本
- 使用 XeLaTeX 编译（不支持 CTeX 套装）

### 🙏 致谢

本模板基于 [ustcthesis](https://github.com/ustctug/ustcthesis) 修改，感谢 USTC TeX Users Group 的贡献。

### 📝 注意事项

1. 使用前请仔细阅读 `README-SWU.md` 和 `swuthesis-doc.pdf`
2. 请根据学校最新规范调整格式（如有更新）
3. 建议使用最新版本的 TeX 发行版和宏包

### 🔗 相关链接

- **GitHub 仓库**：https://github.com/vanabel/swuthesis
- **问题反馈**：https://github.com/vanabel/swuthesis/issues
- **基于项目**：[ustcthesis](https://github.com/ustctug/ustcthesis)

---

## 更新日志模板（供未来版本使用）

<!--
### vX.X.X - 版本名称 (YYYY-MM-DD)

#### ✨ 新增功能
- 

#### 🔧 改进
- 

#### 🐛 修复
- 

#### 📚 文档
- 

#### ⚠️ 破坏性变更
- 
-->

