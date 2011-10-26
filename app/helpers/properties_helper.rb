module PropertiesHelper
  def short_address(address)
    if !address.index(',').nil?
      address.slice(0, address.index(','))
    else
      address
    end
  end
end
