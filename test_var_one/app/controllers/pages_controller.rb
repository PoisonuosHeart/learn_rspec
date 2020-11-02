class PagesController < ApplicationController
  def index
    @data = params[:pages]
    if @data
      @res = self.max(@data[:field1], @data[:field2])
    end
  end

  def self.max(val1, val2)
    if val1.to_f > val2.to_f
      return val1
    else
      return val2
    end
  end
end
