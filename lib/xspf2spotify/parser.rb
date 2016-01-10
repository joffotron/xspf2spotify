require 'sax-machine'

module Xspf2spotify

  class Parser
    include SAXMachine
    element :title

    elements :location, as: :locations
  end

end