File Gather
===========

これは、SSHを利用して複数のサーバからファイルを一括収集するツールです。
configディレクトリに収集したいホスト名のファイルを作成し、収集したい
ファイル、もしくはディレクトリでリストで記述する。

# 収集したいホストとファイルの定義
例えば、myhostという名前のホストのファイルを収集したい場合、config/myhost
ファイルに次のように記述する。

## config/myhost

```
/etc/hosts
/etc/sysconfig/network-script/ifcfg-eth0
/etc/dhcpd
```

上記のファイル定義をホスト分定義すれば、複数のホストのファイルを同時に
収集することができる。

# 取得したファイルの場所

下記の場所に収集したファイルは格納される。

  out/実行日時/ホスト名/<取得したファイル>


取得したファイルは、ファイル定義で記載したディレクトリ構造がそのまま保存される。
例えば、上記例で記載した/etc/hostsファイルは、out/20151209_124523/myhost/etc/hostsに格納される。

# 注意事項

SCPでファイル収集を行うので、File Gatherを実行するホストから公開鍵認証できるようにしておくこと。


