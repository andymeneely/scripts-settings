# A neat little addon to Array that allows you to have a separate clause for if an Array is empty
# e.g. in Rails when you want a separate message if the query was empty than if it actually returned records
# by Andy Meneely
class Array
  def if_empty
	if empty? 
		yield
	end
	self
  end
end


a = [1, 2, 3]
b = []
array = b

array.each { |i| print "each element is #{i}\n" }.if_empty{ print "it's empty!\n" }
array.if_empty { print "it's still empty!\n" }.each { |i| print "each element is still #{i}\n" }


