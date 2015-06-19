# ATOMインストール用の環境設定
execute 'set atom repository' do
  command 'sudo add-apt-repository ppa:webupd8team/atom -y'
end

execute 'apt-get update' do
  command 'sudo apt-get update -y'
end

package 'atom' do 
  action :install
  options "--force-yes"
end

remote_file '~/.atom/style.less' do
  source 'style.less'
end