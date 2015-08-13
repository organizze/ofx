module OFX
  class Foundation
    attr_reader :as_json
    def initialize(attrs)
      @as_json = attrs
      attrs.each do |key, value|
        send("#{key}=", value)
      end
    end
  end
end
