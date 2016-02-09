cipher = "EBG KVVV vf n fvzcyr yrggre fhofgvghgvba pvcure gung ercynprf n yrggre jvgu gur yrggre KVVV yrggref nsgre vg va gur nycunorg. EBG KVVV vf na rknzcyr bs gur Pnrfne pvcure, qrirybcrq va napvrag Ebzr. Synt vf SYNTFjmtkOWFNZdjkkNH. Vafreg na haqrefpber vzzrqvngryl nsgre SYNT."

26.times do |n|

  plain = ""

  cipher.each_byte do |i|
    ch = i.chr
    unless ",. ".include?(ch)
      tmp = i + n
      if ch =~ /[A-Z]/ && tmp.chr =~ /[^A-Z]/
        tmp -= 26
      elsif ch =~ /[a-z]/ && tmp.chr =~ /[^a-z]/
        tmp -= 26
      end
      i = tmp
    end

    plain << i
  end

  print n, ":", plain, "\n\n"
end

