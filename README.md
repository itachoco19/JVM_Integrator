このスクリプトはJavaのモジュール指定を省くために書いたものである

注意事項  
・このスクリプトでは、$JAVA_HOME/libディレクトリにあるmodulesファイルを書き換えるので、バックアップを推奨する  
・modulesファイルを作成するためにjreを作成するので、容量に多少の空きが必要となる  
・$JAVA_HOME/lib/src.zipを書き換えないので、そこは別の方法で統合する必要がある  
  
使用方法
1. システムを利用する下準備として、--add-modulesで指定するjmodファイルを$JAVA_HOME/jmodの中に入れる
2. jmodファイルの準備が整ったら、make_modules_file.shを実行する
3. 作成されたmodulesファイルを$JAVA_HOME/libディレクトリ下にコピーする
