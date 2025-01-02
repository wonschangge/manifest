# manifest
repo manifests

参照 default.xml 模板，根据不同分支来配置项目。

使用方法：

1. 全量拉取（常用于开发修改）

```sh
$ repo init -u https://github.com/wonschangge/manifest.git -b xxxxxx
$ repo sync -j${nproc}
```

2. 轻量拉取（常用于搭建使用）

```sh
$ repo init -u https://github.com/wonschangge/manifest.git -b xxxxxx --depth=1
$ repo sync -j${nproc}
```
