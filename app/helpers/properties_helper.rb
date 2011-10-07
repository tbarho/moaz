module PropertiesHelper
  def short_address(address)
    address.slice(0, address.index(','))
  end
end
