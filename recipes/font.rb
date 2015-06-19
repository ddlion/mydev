COMMAND_LINES = [
  'wget -P /tmp https://github.com/yascentur/RictyDiminished/archive/master.zip',
  'unzip /tmp/master.zip -d /usr/share/fonts/',
  'fc-cache -fv',
  'rm -rf /tmp/master.zip']

%w(unzip fontconfig).each do |item|
  package item do
    action :install
    options "--force-yes"
  end
end

COMMAND_LINES.each do |line|
  execute "execute #{line}" do 
    user 'root'
    command line
  end
end