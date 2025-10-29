# 发布指南

## 生成发布包

### 快速发布

```bash
make release
```

这个命令会：
1. 编译模板文档 (`swuthesis-doc.pdf`)
2. 清理临时文件
3. 生成发布用的 zip 文件：`swuthesis-v3.3.4.zip`

### 分步操作

```bash
# 1. 只生成 zip 文件
make zip

# 2. 只编译文档
make swudoc
```

## 发布到 GitHub Releases

1. **生成发布包**
   ```bash
   make release
   ```

2. **创建 Git 标签**（如果需要新版本）
   ```bash
   git tag -a v3.3.4 -m "Release v3.3.4"
   git push publish v3.3.4
   ```

3. **在 GitHub 上创建 Release**
   - 访问：https://github.com/vanabel/swuthesis/releases/new
   - 选择标签：`v3.3.4`（或创建新标签）
   - 标题：`西南大学本科毕业论文模板 v3.3.4`
   - 描述：参考 `CHANGELOG.md` 或 `README-SWU.md`
   - **上传文件**：选择生成的 `swuthesis-v3.3.4.zip`
   - 点击 "Publish release"

## 发布包内容

生成的 zip 文件包含：
- ✅ `swuthesis.cls` - 模板类文件
- ✅ `swusetup.tex` - 配置文件
- ✅ `main.tex` - 示例文档
- ✅ `swuthesis-doc.pdf` - 使用说明文档
- ✅ `chapters/` - 示例章节
- ✅ `figures/` - 图片资源
- ✅ `bib/` - 参考文献示例
- ✅ `vendor/` - 参考文献样式文件
- ✅ `README.md` - 使用说明
- ✅ `Makefile` - 编译脚本
- ✅ `latexmkrc` - latexmk 配置
- ❌ 排除：`test/` 目录、`.DS_Store`、临时 PDF 文件

## 版本号管理

版本号自动从 `swuthesis/swuthesis.cls` 文件中读取：
```latex
\newcommand\swuthesisversion{3.3.4}
```

如果文件中没有版本号，会尝试使用最新的 git tag，最后回退到 "dev"。

## 注意事项

1. **发布前检查**
   - 确保所有重要文件都已包含
   - 测试编译主文档：`make`
   - 检查 zip 文件内容

2. **版本标签**
   - 使用语义化版本号：`v3.3.4`
   - 在主版本更新时创建标签
   - 标签格式：`v{major}.{minor}.{patch}`

3. **GitHub 设置**
   - 确保 `main` 分支是默认分支
   - 设置合适的 README 和描述
   - 考虑添加许可证文件

