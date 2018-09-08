module Findable
  
  def find_by_name(name)
    self.all.detect(name)
  end
  
end