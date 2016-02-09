require 'net/http'
require 'digest/md5'

#uri = URI.parse 'http://ctfq.sweetduet.info:10080/~q9/'
uri = URI.parse 'http://ctfq.sweetduet.info:10080/~q9/flag.html'
user = "q9"
realm = "secret"

hash1 = "c627e19450db746b739f41b64097d449"
hash2 = Digest::MD5.hexdigest "GET:#{uri.path}"
nc = "00000001"
cnonce = "9691c249745d94fc"
qop = "auth"

Net::HTTP.start uri.host, uri.port do |http|
  res = http.get uri.path
  wa = res["WWW-Authenticate"] 
  if wa && wa =~ /nonce="(.*?)"/
    nonce = $~[1]

    response = Digest::MD5.hexdigest "#{hash1}:#{nonce}:#{nc}:#{cnonce}:#{qop}:#{hash2}"

    header = { "Authorization" => %(Digest username="#{user}", realm="#{realm}", nonce="#{nonce}", uri="#{uri.path}", algorithm=MD5, response="#{response}", qop=#{qop}, nc=#{nc}, cnonce="#{cnonce}") }

    res = http.get uri.path, header
    puts res.body
  end
end

