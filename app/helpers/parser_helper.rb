module ParserHelper

  def self.parse(words)
    lines = words.split("\n")

    linenum =0;
    outline = ''
    single =''
    lines.each do |line|
      if line.empty?
        linenum = 0
        next
      end
      case linenum
        when 0
          single = "<h4>#{line}</h4>\n"
        when 1
          outline << "<h2><a href=\"\">#{line}</a><h2>\n"
          outline << single
        when 2
          outline << line.gsub(/(Read More) »/, '<a href="">\1</a>'+"\n\n")
      end
      linenum += 1
    end

    outline
  end

  def self.parse_old(words)
    lines = words.split("\n")

    linenum =0;
    outline = ''
    lines.each do |line|
      if line.empty?
        linenum = 0
        next
      end
      case linenum
        when 0
          outline << "<h2><a href=\"\">#{line}</a><h2>\n"
        when 1
          outline << "<h4>#{line}</h4>\n"
        when 2
          outline << line.gsub(/(More)../, '<a href="">\1</a>'+"\n\n")
      end
      linenum += 1
    end

    outline
  end
end
