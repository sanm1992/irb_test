#!/usr/bin/ruby -w
require 'mysql2'

class ConnectMysql
  def test
    client = Mysql2::Client.new(
      :host     => 'gitee_pages.mysql', #'127.0.0.1', # 主机
      :username => 'root',      # 用户名
      :password => 'root',    # 密码
      :database => 'pages_production',      # 数据库
      # :encoding => 'utf8',       # 编码
      :port     => '3306'
      )
  end
end