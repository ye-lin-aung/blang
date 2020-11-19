Boot = {}

Boot["Class"] = BaseClass.new
Boot["Class"].runtime_class = Boot["Class"]
Boot["Object"] = BaseClass.new # Defining the `Object` class
Boot["Number"] = BaseClass.new(Boot["Object"]) # Defining the `Number` class
Boot["String"] = BaseClass.new
root_self = Boot["Object"].new
RootContext = Context.new(root_self)


Boot["TrueClass"] = BaseClass.new(Boot["Object"]) 
Boot["FalseClass"] = BaseClass.new(Boot["Object"]) 
Boot["NilClass"] = BaseClass.new(Boot["Object"]) 

Boot["true"] = Boot["TrueClass"].new_with_value(true)
Boot["false"] = Boot["FalseClass"].new_with_value(false)
Boot["nil"] = Boot["NilClass"].new_with_value(nil)

Boot["Class"].define :new do |receiver, arguments|
    receiver.new
end

Boot["Object"].define "ပြ" do |receiver, arguments|
    puts arguments.first.ruby_value
    Boot["nil"]
end

Boot["Class"].define "ပြ" do |receiver, arguments|
    puts arguments.first.ruby_value
    Boot["nil"]
end

Boot["Number"].define :+ do |receiver, arguments|
    result = receiver.ruby_value + arguments.first.ruby_value
    Boot["Number"].new_with_value(result)
end

Boot["Number"].define :- do |receiver, arguments|
    result = receiver.ruby_value - arguments.first.ruby_value
    Boot["Number"].new_with_value(result)
end

Boot["Number"].define :* do |receiver, arguments|
    result = receiver.ruby_value * arguments.first.ruby_value
    Boot["Number"].new_with_value(result)
end

Boot["Number"].define :/ do |receiver, arguments|
    result = receiver.ruby_value / arguments.first.ruby_value
    Boot["Number"].new_with_value(result)
end