  # = ruby-googleloader - A Google CDN Loader gem for Ruby.
  #
  # Homepage::  http://github.com/jjuliano/ruby-googleloader
  # Author::    Joel Bryan Juliano
  # Copyright:: (cc) 2011 Joel Bryan Juliano
  # License::   MIT

module GoogleLoader

  class API

    attr_accessor :developer_key

    def initialize()
      @conf ||= []
    end

    def chrome_frame(version = 1, uncompressed = nil)
      if uncompressed
        uncompressed = ", {uncompressed:true}"
      end
      @conf.push(
<<EOF
  google.load("chrome-frame", "#{version}"#{uncompressed});
EOF
).uniq!
    end

    def dojo(version = 1, uncompressed = nil)
      if uncompressed
        uncompressed = ", {uncompressed:true}"
      end
      @conf.push(
<<EOF
  google.load("dojo", "#{version}"#{uncompressed});
EOF
).uniq!
    end

    def ext_core(version = 1, uncompressed = nil)
      if uncompressed
        uncompressed = ", {uncompressed:true}"
      end
      @conf.push(
<<EOF
  google.load("ext-core", "#{version}"#{uncompressed});
EOF
).uniq!
    end

    def jquery(version = 1, uncompressed = nil)
      if uncompressed
        uncompressed = ", {uncompressed:true}"
      end
      @conf.push(
<<EOF
  google.load("jquery", "#{version}"#{uncompressed});
EOF
).uniq!
    end

    def jqueryui(version = 1, uncompressed = nil)
      if uncompressed
        uncompressed = ", {uncompressed:true}"
      end
      @conf.push(
<<EOF
  google.load("dojo", "#{version}"#{uncompressed});
EOF
).uniq!
    end

    def mootools(version = 1, uncompressed = nil)
      if uncompressed
        uncompressed = ", {uncompressed:true}"
      end
      @conf.push(
<<EOF
  google.load("mootools", "#{version}"#{uncompressed});
EOF
).uniq!
    end

    def prototype(version = 1, uncompressed = nil)
      if uncompressed
        uncompressed = ", {uncompressed:true}"
      end
      @conf.push(
<<EOF
  google.load("prototype", "#{version}"#{uncompressed});
EOF
).uniq!
    end

    def scriptaculous(version = 1, uncompressed = nil)
      if uncompressed
        uncompressed = ", {uncompressed:true}"
      end
      @conf.push(
<<EOF
  google.load("scriptaculous", "#{version}"#{uncompressed});
EOF
).uniq!
    end

    def swfobject(version = 1, uncompressed = nil)
      if uncompressed
        uncompressed = ", {uncompressed:true}"
      end
      @conf.push(
<<EOF
  google.load("swfobject", "#{version}"#{uncompressed});
EOF
).uniq!
    end

    def yui(version = 1, uncompressed = nil)
      if uncompressed
        uncompressed = ", {uncompressed:true}"
      end
      @conf.push(
<<EOF
  google.load("yui", "#{version}"#{uncompressed});
EOF
).uniq!
    end

    def webfont(version = 1, uncompressed = nil)
      if uncompressed
        uncompressed = ", {uncompressed:true}"
      end
      @conf.push(
<<EOF
  google.load("webfont", "#{version}"#{uncompressed});
EOF
).uniq!
    end

    def maps(version = "*", options = nil)
      if options
       optstring = ", {#{options}}"
      else
       optstring = ""
      end
      @conf.push(
<<EOF
  google.load("maps", "#{version}"#{optstring});
EOF
).uniq!
    end

    def search(version = "*", options = nil)
      if options
       optstring = ", {#{options}}"
      else
       optstring = ""
      end
      @conf.push(
<<EOF
  google.load("search", "#{version}"#{optstring});
EOF
).uniq!
    end

    def feeds(version = "*", options = nil)
      if options
       optstring = ", {#{options}}"
      else
       optstring = ""
      end
      @conf.push(
<<EOF
  google.load("feeds", "#{version}"#{optstring});
EOF
).uniq!
    end

    def language(version = "*", options = nil)
      if options
       optstring = ", {#{options}}"
      else
       optstring = ""
      end
      @conf.push(
<<EOF
  google.load("language", "#{version}"#{optstring});
EOF
).uniq!
    end

    def gdata(version = "*", options = nil)
      if options
       optstring = ", {#{options}}"
      else
       optstring = ""
      end
      @conf.push(
<<EOF
  google.load("maps", "#{version}"#{optstring});
EOF
).uniq!
    end

    def earth(version = "*")
      @conf.push(
<<EOF
  google.load("earth", "#{version}"#{optstring});
EOF
).uniq!
    end

    def visualization(version = "*", options = nil)
      if options
       optstring = ", {#{options}}"
      else
       optstring = ""
      end
      @conf.push(
<<EOF
  google.load("visualization", "#{version}"#{optstring});
EOF
).uniq!
    end

    def friendconnect(version = "*", options = nil)
      if options
       optstring = ", {#{options}}"
      else
       optstring = ""
      end
      @conf.push(
<<EOF
  google.load("friendconnect", "#{version}"#{optstring});
EOF
).uniq!
    end

    def orkut(version = "*", options = nil)
      if options
       optstring = ", {#{options}}"
      else
       optstring = ""
      end
      @conf.push(
<<EOF
  google.load("orkut", "#{version}"#{optstring});
EOF
).uniq!
    end

    def markup
      if @developer_key
        config = Array.new
        config.push(
<<EOF
<script type="text/javascript" src="https://www.google.com/jsapi?key=#{@developer_key}"></script>
<script type="text/javascript">
#{@conf}
</script>
EOF
)
        return config
      else
        raise "No Developer Key!"
        return false
      end
    end

  end
end

