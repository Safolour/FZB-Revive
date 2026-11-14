# FZB Revive

Minecraft Java 1.21.8 地图与 Fabric 服务端，包含当前地图、数据包和世界资源包。

仓库根目录即地图存档目录，可作为服务器的 world 目录使用。2026-11-15 版本来自现有测试服务器的保存快照，已移除测试辅助数据包和玩家缓存。

## 下载

- [完整服务端（含地图与模组）](https://github.com/Safolour/FZB-Revive/releases/latest/download/FZB-Revive-server.zip)
- [地图存档](https://github.com/Safolour/FZB-Revive/releases/latest/download/FZB-Revive-map.zip)
- [资源包](https://github.com/Safolour/FZB-Revive/releases/latest/download/resources.zip)
- [文件校验值](https://github.com/Safolour/FZB-Revive/releases/latest/download/SHA256SUMS.txt)

## 启动服务端

安装 Java 21，解压完整服务端后运行 start.bat（Windows）或 sh run.sh（Linux）。启动器优先使用 JAVA_HOME，未设置时调用 PATH 中的 java；默认分配 2–6 GiB 内存。

服务端已包含现有运行模组、Fabric 加载器及依赖。发布包中的 RCON 默认关闭，密码留空；管理员和玩家缓存需自行配置。

必须保留 world/datapacks/minecraft 等完整数据包。地图使用扩展高度，启动脚本会检查关键数据包是否齐全。

## 本次更新

- 更新现有地图、数据包与服务端模组。
- 调试菜单使用 [金钱]、[增益(Perk)]、[增益(Power Up)]，领取区两类增益同步区分。
- 新资源包随地图和完整服务端提供，服务器下发地址固定到对应发布提交，并校验 SHA1。
